Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDcjL5TnxGkz5AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 09:00:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69A3330C67
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 09:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4428910E9DD;
	Thu, 26 Mar 2026 08:00:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiyoncna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089BD10E9EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 08:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774512017; x=1806048017;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=oIiLp5ZfImADkc3EC2hUzuGaLb3Er1qIa6J1NTjhOCA=;
 b=fiyoncna/s0myK0OUO0ko/R9y2lEMJy1DpewfRG2E3anrHx8XaDYbJ6L
 8lrBvgAizl+EIjOhs4DL6umm0sIuVKl8aHb+Jxl2giB8K4Y/ao2/cKGdk
 pdvE6qGTLgPzMGxWwZ6oVT2aVOUhyEkCigo95VAOGinslcQptV75hHma4
 0xaOk4LybMn6hh0B5h1wgDM+6v5DUTUmYRN27yYRJia045rgeFcIBTdec
 xGa+88sMIii5rSESi8a0lVqTw8weQfJ/Y+tsF4FQ5RyxXOSzCO6HhY/nc
 ZeRy3yjMzbjFkrG3qhQUzUIxzy/Ff5irJfTUNbwGlJKNtRxX6AQD4FoPg w==;
X-CSE-ConnectionGUID: o50ZJt89Rea4cxpnICir9Q==
X-CSE-MsgGUID: Jnk8Ww0OQxCs6IC7j1x1dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75278895"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75278895"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 01:00:17 -0700
X-CSE-ConnectionGUID: VmsFet0NSh2IH9G4WHM6kg==
X-CSE-MsgGUID: FlEcHVVNS/u03BKdHFKmZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229863743"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.213])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 01:00:15 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260325212342.4388-1-c.manszewski@gmail.com>
References: <20260325212342.4388-1-c.manszewski@gmail.com>
Subject: Re: [PATCH v2] mailmap: update email address for Christoph Manszewski
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Christoph Manszewski <c.manszewski@gmail.com>,
 Christoph Manszewski <christoph.manszewski@intel.com>
To: Christoph Manszewski <c.manszewski@gmail.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2026 10:00:11 +0200
Message-ID: <177451201165.80931.17441097839328820166@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:mika.kuoppala@linux.intel.com,m:c.manszewski@gmail.com,m:christoph.manszewski@intel.com,m:cmanszewski@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,gmail.com,intel.com];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: D69A3330C67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Christoph Manszewski (2026-03-25 23:23:42)
> Since I am moving from intel, map the intel mail to my personal Gmail
> address.
>=20
> Signed-off-by: Christoph Manszewski <christoph.manszewski@intel.com>

Applied to drm-intel-next. Thank you and best of luck for your
next steps!

Regards, Joonas
