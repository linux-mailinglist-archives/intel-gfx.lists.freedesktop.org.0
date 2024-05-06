Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1E08BCA61
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DEE10EECF;
	Mon,  6 May 2024 09:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mnpd7lBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BFEE10EECF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987147; x=1746523147;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hJyHLhRWTarSzQS8vhr6Pcit+V6SDQJp8IgydPmJB0M=;
 b=mnpd7lBBdEliWgBdmD6iS9Llo9LtwOycTBTU2MzMidDTsJfVAyUNpScz
 p902vui4VrFDVXbgDE4SC85BqieKwrw3xq8EBYRQET42dpRlbllUUaSOQ
 WH7mLw6Q7kqKvDFjHhZYSuydIyILRtP+CKTcGZ9oZWZndAKC/1ZMfYSWu
 YuKvIq6AwMRc4zoOAe5Mxyibn/v3YoXT9dGG69c2EL7Mzy3ujCl0OSnsn
 eHNw4j6Qa7D+AZ2qXFBCuM1LIIT282fOBIG455WOBRNAsOxQmluNDeRzm
 uWMhGuF4dtDvQMvBj/giu7OkSTPM1Ipeoadqmzdc/CiKHycr+2jBCJfcM A==;
X-CSE-ConnectionGUID: SrHav8gvTjSH6d8PFt7Mnw==
X-CSE-MsgGUID: uh4wfNvmTXGNrmMwwUx1yA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14529704"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14529704"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:19:07 -0700
X-CSE-ConnectionGUID: jegydsLbR3KleUGspxkcKw==
X-CSE-MsgGUID: qh5EbXWlTw6yU+VNnOSuQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28109521"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:19:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/35] drm/i915/bios: Get rid of "LVDS" from all LFP
 data stuff
In-Reply-To: <20240503122449.27266-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-5-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:19:01 +0300
Message-ID: <87jzk7nvqy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The LFP data applies to all kinds of display interfaces, so
> stop calling things by the "LVDS" name.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

However...

> @@ -902,11 +902,11 @@ struct lfp_brightness_level {
>  } __packed;
>=20=20
>  #define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
> -	offsetof(struct bdb_lfp_backlight_data, brightness_level)
> +	offsetof(struct bdb_lfp_backlight, brightness_level)
>  #define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
> -	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
> +	offsetof(struct bdb_lfp_backlight, brightness_precision_bits)

I haven't quite figured out what to do with [1] yet. Should probably
sort it out before making this cleanup?

BR,
Jani.


[1] https://lore.kernel.org/r/20240221180622.v2.1.I0690aa3e96a83a43b3fc33f5=
0395d334b2981826@changeid


>=20=20
> -struct bdb_lfp_backlight_data {
> +struct bdb_lfp_backlight {
>  	u8 entry_size;
>  	struct lfp_backlight_data_entry data[16];
>  	u8 level[16];							/* 162-233 */

--=20
Jani Nikula, Intel
