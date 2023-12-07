Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B83B8085DC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 11:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D90C10E1D7;
	Thu,  7 Dec 2023 10:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0E610E1F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 10:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701946779; x=1733482779;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=A0/Cp+gC1g3kL1rmyDwPC0hFcF2YnpfHacmDDwu0vr0=;
 b=DgHhF6oj6ci2PDuHkkN7429wEgvPeCsCBEYEaIBa+qd6RhKtc1imhoqN
 sy34vkji/LEP4G1Pzghst+P1KiprHk6+j0UO/4xqh5BbdbTtdUAbwdrTq
 Yk6hhXGfha6i4VZPiDbuayamU91QFwIAYMNfaiUnc7M6wLZljbALBKbqG
 gjcKVoaeQVt8kjwt6TXfpLk5uAc5AotZcd8v8VFgSeOTSDWUuYMpv7Hr/
 yWLPxHLVEmkG+ip1jWtwHDwF+zQBAaNZuF9vkjZZJqOaBM74fIKM7jFPw
 94SlIFlOBpXlV7G+4fdDYVA4n1gzphNGHoqL+TdD6HoTB9yU0l94yMhYB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="393948509"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="393948509"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="721424792"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="721424792"
Received: from mrehana-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.169])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:59:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: use intel_connector in
 intel_connector_debugfs_add()
In-Reply-To: <ZW88PCUpigzOq3th@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231205134143.2427661-1-jani.nikula@intel.com>
 <ZW88PCUpigzOq3th@intel.com>
Date: Thu, 07 Dec 2023 12:59:34 +0200
Message-ID: <8734we1dnt.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 Dec 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Dec 05, 2023 at 03:41:41PM +0200, Jani Nikula wrote:
>> Prefer struct intel_connector over struct drm_connector.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

--=20
Jani Nikula, Intel
