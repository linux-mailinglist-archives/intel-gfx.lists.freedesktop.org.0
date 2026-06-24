Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oAmbBpZ9O2q8YggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 08:47:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F176BBE13
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 08:47:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aQPcRmAx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020A610ED9C;
	Wed, 24 Jun 2026 06:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C3E10ED34;
 Wed, 24 Jun 2026 06:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782283666; x=1813819666;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=Bp4jNHFTDs2LmoN7Laxss2/ibposuWgWI/BtKu4G8/o=;
 b=aQPcRmAx+mIWQoynbPvzg6/8vnjfFy8tFa1DOcoBoS/kAOI4nIMzNMGa
 KYSewb+UU9/p/AjIe1GJCCYZGG16mL3kLE7A/+qFwrJMb9A9SOvGcU5AB
 up4PBIWi86cMDmRv4KDPnIEPgLiXmXNuCfyUufemMYtsoV9lkUuvZtjMV
 0mHx4YrkvlZCv094UbrCxvHuOETCc/mro1GgI9m2kNlQ6BjnshQjWUh1s
 kg7k2l9jBv+p2gjebrQj76I8gHF3d/H1PtslrOhgewe2cpP9YIeWB8e1a
 EFh1y+NfqE77mDaA7VZI0fSWeuZNzTwoijruXjP2dzpx75TZAManPKP+k g==;
X-CSE-ConnectionGUID: Mb3I+CrXRKKI7/8GmPQmSg==
X-CSE-MsgGUID: tPoV1Vl0TjOmlcWskvkqnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93635979"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="93635979"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 23:47:45 -0700
X-CSE-ConnectionGUID: r/7G4qNlTD+zkyInM9Rtlg==
X-CSE-MsgGUID: OVbAf4kkSfiNnRLEGeluBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="253615117"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.147])
 by ORVIESA003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 23:47:43 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ajqXK-fZnty-YGCK@intel.com>
References: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
 <ajqXK-fZnty-YGCK@intel.com>
Subject: Re: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>
To: =?utf-8?q?Gabr=C3=ADel_Arth=C3=BAr_P=C3=A9tursson?=
 <gabriel.petursson@jbtmarel.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 24 Jun 2026 09:47:39 +0300
Message-ID: <178228365985.16303.14222363163462260344@jlahtine-mobl>
User-Agent: alot/0.13.dev2+g40c57d620
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90F176BBE13

Quoting Ville Syrj=C3=A4l=C3=A4 (2026-06-23 17:24:43)
> This smells like the same thing I already fixed with
> commit 3f9de66f8acb ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL
> without a full PLL re-enable")
>=20
> Sadly it looks like I forgot to cc:stable it :/
>=20
> Jani, can you pick that up for -fixes and slap a cc:stable on it?

I'll include it in drm-intel-next-fixes, do we have a
Fixes: tag to add?

Regards, Joonas
