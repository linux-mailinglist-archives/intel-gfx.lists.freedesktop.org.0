Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A9534708E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 05:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5646E977;
	Wed, 24 Mar 2021 04:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431C06E977
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 04:45:49 +0000 (UTC)
IronPort-SDR: x+B0rXy3aW/CdFMyd62qagu86oTE+08SgKMT5FLm9TLWTq9xnkKRL72BHrbFc0X994oDNkAvG6
 uDAYIKZvD9Ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="169964563"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="169964563"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 21:45:48 -0700
IronPort-SDR: DlDnR2EQ9qoppG2r3SUhMyZlpT5afoVNDkDdWzqJCiaANjNa75cobcsiTqK27hWNkppK0oY2p6
 CW3kxxGrmtkg==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="408663935"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.130.64])
 ([10.215.130.64])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 21:45:47 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210127082437.31339-1-anshuman.gupta@intel.com>
 <20210127082437.31339-3-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <f5ac828c-3297-1984-d85f-10545ffa3338@intel.com>
Date: Wed, 24 Mar 2021 10:15:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210127082437.31339-3-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/hdcp: DP HDCP2.2 errata
 LC_Send_L_Prime=16
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change is as per the errata. LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 1/27/2021 1:54 PM, Anshuman Gupta wrote:
> Fix LC_Send_L_Prime message timeout to 16 as documented
> in DP HDCP 2.2 errata page 3.
>
> https://www.digital-cp.com/sites/default/files/HDCP%202_2_DisplayPort_Errata_v3_0.pdf
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   include/drm/drm_hdcp.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
> index 2b165a0f434f..0b1111e3228e 100644
> --- a/include/drm/drm_hdcp.h
> +++ b/include/drm/drm_hdcp.h
> @@ -231,7 +231,7 @@ struct hdcp2_rep_stream_ready {
>   #define HDCP_2_2_PAIRING_TIMEOUT_MS		200
>   #define HDCP_2_2_DP_PAIRING_READ_TIMEOUT_MS	5
>   #define	HDCP_2_2_HDMI_LPRIME_TIMEOUT_MS		20
> -#define HDCP_2_2_DP_LPRIME_TIMEOUT_MS		7
> +#define HDCP_2_2_DP_LPRIME_TIMEOUT_MS		16
>   #define HDCP_2_2_RECVID_LIST_TIMEOUT_MS		3000
>   #define HDCP_2_2_STREAM_READY_TIMEOUT_MS	100
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
