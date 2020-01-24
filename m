Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51557148CC4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 18:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82DA72B3E;
	Fri, 24 Jan 2020 17:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B3072B3D;
 Fri, 24 Jan 2020 17:11:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 09:11:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="426673379"
Received: from vmrapolu-mobl1.ger.corp.intel.com (HELO [10.252.51.226])
 ([10.252.51.226])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 09:11:04 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200124170337.346187-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ab195c79-77f6-c128-340a-e80f10a886e5@intel.com>
Date: Fri, 24 Jan 2020 19:11:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200124170337.346187-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] perf: Treat Cometlake as an alias for
 Coffeelake
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks.
Hopefully I'll a series soon getting rid of all this special case stuff.

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


On 24/01/2020 19:03, Chris Wilson wrote:
> The kernel doesn't differentiate between the Coffeelake and Cometlake
> platforms, but igt does. Add the alias for perf to use the Coffeelake
> register set for Cometlake.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   tests/perf.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/perf.c b/tests/perf.c
> index a837551cb..f1f9b7cea 100644
> --- a/tests/perf.c
> +++ b/tests/perf.c
> @@ -955,7 +955,7 @@ init_sys_info(void)
>   			}
>   		} else if (IS_GEMINILAKE(devid)) {
>   			test_set_uuid = "dd3fd789-e783-4204-8cd0-b671bbccb0cf";
> -		} else if (IS_COFFEELAKE(devid)) {
> +		} else if (IS_COFFEELAKE(devid) || IS_COMETLAKE(devid)) {
>   			switch (intel_gt(devid)) {
>   			case 1:
>   				test_set_uuid = "74fb4902-d3d3-4237-9e90-cbdc68d0a446";


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
