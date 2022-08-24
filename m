Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3682359F896
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 13:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6E210E952;
	Wed, 24 Aug 2022 11:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E59D10E952
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 11:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661340403; x=1692876403;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:cc:from:subject:message-id:date;
 bh=PlICUbKf7xNPUxGtX6TA1gBNZLpdgG96Drwn3LFe0cY=;
 b=kSj+clf4M7eaL0guQTnLuq3Zdrx6eozKh6ewOmcaUyrdzcbv+f7pR8dA
 4X75Mu/aoevQbOIK2805bpXAGSve96/0hSq1kqShf3dna421hjiwWeZaQ
 8uvhwHB2Aj988xD2FdCa0Q0MtwUMSz7aUFfTQ+qafSvNT+xnK4jZsRfO4
 OGnCndRLoyHsKxI9netH4mwCtL0xeZgmp5C/BDTn+A53uv+1m90RuQxFZ
 Q3DPLi58bqtNaVFuAJ7yabNAm0D7OzPzkcseu3dy4BGWr/yNM9M04kdEd
 lQ03T2N0wUkMIX72YSe3DytkMAE29qfFjVoUB9ZB2ymVmhpv5l500bsRN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="280912613"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="280912613"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 04:26:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="639081767"
Received: from gaburges-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.12.186])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 04:26:41 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Yuk+HDLHmTnsmoUD@mdroper-desk1.amr.corp.intel.com>
References: <20220801213839.8549-1-harish.chegondi@intel.com>
 <Yuk+HDLHmTnsmoUD@mdroper-desk1.amr.corp.intel.com>
To: Harish Chegondi <harish.chegondi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <166134039853.19460.9700183027603341212@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 24 Aug 2022 14:26:38 +0300
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add Wa_1509727124
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2022-08-02 18:09:16)
> On Mon, Aug 01, 2022 at 02:38:39PM -0700, Harish Chegondi wrote:
> > Bspec: 46052
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
>=20
> Applied to drm-intel-gt-next.  Thanks for the patch.

This patch is completely lacking the commit message.

That is unacceptable, please make sure there is a proper commit message
for any merged patches going forward.

Please do explain the patch rationale in this mail thread so it at least
becomes available from the Link: that gets added by DIM when this was
committed.

Regards, Joonas
