Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C697F2C82EC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 12:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE196E452;
	Mon, 30 Nov 2020 11:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770085.outbound.protection.outlook.com [40.107.77.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9746E456
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 11:13:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fgtb8hpasMq+ZfbNwFPlgN3h+AZny4s3SnTJBrHnjCW3WaTMdAcqb8Sy5DZgd3wg+zgstr5/nDaq7KNLQ7h827M7oLUQPQodQAGo1WXkUbPp6GC25wovO9Wckh+To/+yGo8fnBpBX9UGTLvtk2fVNfTzRUuWtPLVFaFMttGf5PyXpJm4WFzo+5/YGslTdWkFe22oFl2CSw6Db/uZG6ZiqSuiSZmzk+R8OmigPjMCjE7+U/4OsU3Y54CrrJd0ta3llokERsWwNwcN5XnjwJraSZB5Am5MqyB5y1Vb1pmRYNvNvN1sXymWHKTTHOjuHEsVJipV6Jzzalz3rqbp4kgYhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E2aSEhZZjeqjrVAoEUe6XYd4/AxLXizVWc7cHeISK9Y=;
 b=SHS7b0ZaJDPcq2Ep/HBmYMLyk5dQaykds/we7nxhVkqFDdERKz/fZPJWo87J//sMpcBG9VjvitFabR9sd1PDBYdFSUntzlS030Aff4S+qWh124d43Sp1jLWH53KEmqt8VReNbJsm9eV2X17Y7exYI6KkGtfEL6FPgI/hadd0o64Eckq6rRz2+CMf7fuC6bpqtpoZWnuPh7ock0N5bm3sBaeHc5em7hxs27VpljNfQT4vlKIDzFadzPN43FRX2kLthsdoZDHd22vnyjrvONMuANWhUVzj+ADJBIpz0az5KoGM1YVaVmO+M8u3KtbYFpzOaWKAKyKsKWsKdLlDMhhtFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E2aSEhZZjeqjrVAoEUe6XYd4/AxLXizVWc7cHeISK9Y=;
 b=U0TRIikfye5Yij9GIpO4oHqNMzN7oEtLhhbc6Jx0tR1+UnjZi9zYCVLxEPLFZ3hOFyJ6FkPw9Od9BFOAztljqHyqxyU3qoPqlz281VsmI21wsqQ1YHlQAirQU5VDov82bl8mGUtDyx6Ooek2qUXTgRD+tUHqnWXa/ehtbaYfcYQ=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3126.namprd12.prod.outlook.com (2603:10b6:a03:df::28)
 by BY5PR12MB3972.namprd12.prod.outlook.com (2603:10b6:a03:1a8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Mon, 30 Nov
 2020 11:13:31 +0000
Received: from BYAPR12MB3126.namprd12.prod.outlook.com
 ([fe80::45a1:6d50:60d6:9d68]) by BYAPR12MB3126.namprd12.prod.outlook.com
 ([fe80::45a1:6d50:60d6:9d68%7]) with mapi id 15.20.3611.031; Mon, 30 Nov 2020
 11:13:25 +0000
To: intel-gfx@lists.freedesktop.org
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-16-uma.shankar@intel.com>
From: Shashank Sharma <shashank.sharma@amd.com>
Message-ID: <056dbfca-53ae-570f-0cc9-09c34a0dbb77@amd.com>
Date: Mon, 30 Nov 2020 16:43:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <20201126210314.7882-16-uma.shankar@intel.com>
Content-Language: en-US
X-Originating-IP: [106.51.110.193]
X-ClientProxiedBy: MA1PR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::30) To BYAPR12MB3126.namprd12.prod.outlook.com
 (2603:10b6:a03:df::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (106.51.110.193) by
 MA1PR01CA0114.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:1::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3611.20 via Frontend Transport; Mon, 30 Nov 2020 11:13:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ba21f0bf-5402-4417-8b7d-08d89520f493
X-MS-TrafficTypeDiagnostic: BY5PR12MB3972:
X-Microsoft-Antispam-PRVS: <BY5PR12MB3972B15A76038E7BF1447671F2F50@BY5PR12MB3972.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uB+GbnJSkED9Y9ldH4ftLHSs1D4UPTgWO2qSIUm2eq3XnIskmQw2xbJMaIA/MoHzKjhj0aAfJ9QljPeZhoai+AtX7b8C3C/h0sCV/j4GfFU/+bhoGduuAChh8e1MorM9nI72LOUfSq9nwN25oZURKPnMYBSvRBn3RvH/ukyFVyJssZBm452ybsPOZbL7Q32QjXCOsYwrw4jsIQhJWi4O/gE+MWcMw2/p7HZz65ILOtfXLzXYg+yY7ntvY/VMRCZg8u85LKceYb4J+sKNkPcWoLr/172dhHBbZPfC94hLMJyhlVdkoJX7Cw4QwOfrPzBNOVaprCXpD+BHVIMyAXxSziLJ7vcEORqDipmpR1Kl+f9bluS7BY2m2FK+zw69q+Vz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(316002)(16576012)(44832011)(5660300002)(66556008)(83380400001)(6666004)(86362001)(31696002)(1006002)(52116002)(16526019)(186003)(956004)(2616005)(36756003)(53546011)(26005)(55236004)(31686004)(478600001)(8676002)(2906002)(6916009)(66946007)(66476007)(8936002)(6486002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?WUZoU0ZIVFljYUdIazF4ZnVQc3pJemVpR1R2VXQ2YXRHV2pWMnVwaC9rWEd1?=
 =?utf-8?B?cExvc2pESHYxNlVoenViVW1STkRwVWx4ODZ4UTFuQU9Ib29raDZieklWTVVo?=
 =?utf-8?B?ZVVkM1g0VGNFeHIwSGt4eldIR3JlS0RlVzVzZnh1c01CT3U1UnlISnAzVENZ?=
 =?utf-8?B?Tk9OMytmalFXWHUzbC9CK1VnOUxJUk9sZUgyZkpVQlZnQ3UvNk1lS3NESHRs?=
 =?utf-8?B?aTJYT1ZvaDFWUHQ1S3pDUEN2OHVIVTRqbU1XcmNzTis3ZlI4VEo4K2RFcXlL?=
 =?utf-8?B?T1hIYXZhMk9KdmFXVlRBNjZjVFRyZFhLWFVxaWdMM0pIOUd3R1BDazNyNEtY?=
 =?utf-8?B?cUgxNXloWGtaUDloWGtsaS9VMEFPbnNuK1NrZ2wvaHNkbzZGZmFPY0VwL3k1?=
 =?utf-8?B?ZDFBSEdxSkFNMGM1ZWFXVGJwVVJ6bjlsVWFrT0tSTW1uWDQyU1JrWlJvRnJZ?=
 =?utf-8?B?RkkzRStuRG02cE1sR1k0anQrYXR4TTh1Y1hmOVRndngvdHRjbTBtbDFrUmgw?=
 =?utf-8?B?WTlDbUFqRXlUS0ExbjZKNVpKZ09RSzhNQ0hrZFN5OWRUK2VQZ0xyVEFrUTVH?=
 =?utf-8?B?VkFPRWxjSWR1VVFLWFZ1UHYyc3JlWlRuUE14QVQzS28wZFJtWERISjJLbStE?=
 =?utf-8?B?WHJnU21Yd0dxbmdmMU1LK3hHYzV5MUtXNEtvUG9BQTVSaUJtaUx5bHBMNHN1?=
 =?utf-8?B?alJVODlrMU9NNXZad0dZZjg1ZEtrVzZZa2ZDa0VXN2lxYTc5VVdwMmY0T1Ur?=
 =?utf-8?B?bEx0SHZTalFrTmF3K29SZkJpTlh1RzdMcnViRlVCcFV1Yk1YWmRUc08valVU?=
 =?utf-8?B?a21pQ25uVVJPdFFMQzFtc1F0b0g5ZlhaZFVxaGUvOThNM0laRnpHTHV3QzN3?=
 =?utf-8?B?T3ZsRlV2dG1nSjRVdW16dHVkTGZLZjJsdGFBa2ZYUjhjajZ6MEhKaWpFenBk?=
 =?utf-8?B?cnU0YWxJYUhEeEJPUGZOMndSalBUK3lzdUtPTjFIM3Z2WmlBbUxld2tJd2RZ?=
 =?utf-8?B?dHIrT05YVVpHK0NUTWFaVTNLc1J5UW92NlJ3aTZ6MVBqMXBZNWp3N0dOdEFB?=
 =?utf-8?B?R0RoaEEyV0xmcXFsOEdrUGs3Y3FMeUl0YlVabC9RZ2VCM0F3cVBkak1iQ2Nu?=
 =?utf-8?B?aGtyMTNTNzhVbU4zL1BjMGFmS1dEczlQWExaZXZtNUF2MFlhODUzN2ZKcEVN?=
 =?utf-8?B?WVIrREpGTlRYM0JFNWxDbnZwbDVhRGdiQlV4eC9hYjdaOFdKU05XaUtyUXdS?=
 =?utf-8?B?SHFYR2s1cmwybWk4b0U0MXl4K1dLWmZYVkphaFFtUmw3eW15bHlqRVh2U2VU?=
 =?utf-8?Q?GUbpKFD2K0NWpHWQ0sbtAvLPKbAx5POx4m?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba21f0bf-5402-4417-8b7d-08d89520f493
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2020 11:13:24.9776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HVVocWLmlK53b/0AFGbRcglXoS1x13z1E5llOBn+otsltt6yGxc40YgSYF3D7IO5vvLtWVf/VHyeQrdemYcmQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB3972
Subject: Re: [Intel-gfx] [v12 15/15] drm/i915/display: [NOT FOR MERGE]
 Reduce blanking to support 4k60@10bpp for LSPCON
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Uma,

This expectations from user-space of having to adjust the timings of video mode doesn't seem like a good idea to me.

This seems more like a quirk, and it should be better kept in I915 layer itself.


Else, it will enforce user space to write a lot of vendor specific code, like:

- Is it Intel device ?

- Is it GEN9 ?

- Is it Gen9 + LSPCON ?

- Are we planning for a HDR playback ?

which is not what most of the compositors developers would be interested in.


I was talking to some of the Kodi folks and they also seem to think that it should go in driver.

Any reason why can't we add this code in encoder->compute_config() or mode_fixup() ?

compute_config() will have all the information above required, as this might be required for future LSPCON based devices as well.


Regards

Shashank

On 27/11/20 2:33 am, Uma Shankar wrote:
> Blanking needs to be reduced to incorporate DP and HDMI timing/link
> bandwidth limitations for CEA modes (4k@60 at 10 bpp). DP can drive
> 17.28Gbs while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps.
> This will cause mode to blank out. Reduced Htotal by shortening the
> back porch and front porch within permissible limits.
>
> Note: This is for reference for userspace, not to be merged in kernel.
>
> v2: This is marked as Not for merge and the responsibilty to program
> these custom timings will be on userspace. This patch is just for
> reference purposes. This is based on Ville's recommendation.
>
> v3: updated commit message.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0f89dbfa958a..f6f66033176b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -741,8 +741,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
> +	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
>  	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> +	struct intel_lspcon *lspcon = enc_to_intel_lspcon(intel_encoder);
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int max_dotclk = dev_priv->max_dotclk_freq;
> @@ -778,6 +780,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> +	/*
> +	 * Reducing Blanking to incorporate DP and HDMI timing/link bandwidth
> +	 * limitations for CEA modes (4k@60 at 10 bpp). DP can drive 17.28Gbs
> +	 * while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps. This will
> +	 * cause mode to blank out. Reduced Htotal by shortening the back porch
> +	 * and front porch within permissible limits.
> +	 */
> +	if (lspcon->active && lspcon->hdr_supported &&
> +	    mode->clock > 570000) {
> +		mode->clock = 570000;
> +		mode->htotal -= 180;
> +		mode->hsync_start -= 72;
> +		mode->hsync_end -= 72;
> +	}
> +
>  	max_link_clock = intel_dp_max_link_rate(intel_dp);
>  	max_lanes = intel_dp_max_lane_count(intel_dp);
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
