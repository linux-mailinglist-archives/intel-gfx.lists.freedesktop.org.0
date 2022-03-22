Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 723074E5573
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:40:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96CE10E71E;
	Wed, 23 Mar 2022 15:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.bemta35.messagelabs.com (mail1.bemta35.messagelabs.com
 [67.219.250.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1D310E2FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 14:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1647959000; i=@lenovo.com;
 bh=kyNafTKpHa5QpH1tHfE3IcIIFb6/N/1SL/YFZkOuMTg=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=svFw5xnfH53HYqm4GLOSiDpMnSvQSlminU77WSHzUIOXBbxpPXBQ1RHOlcuxqG+xD
 LnKs0keZYMmlCtBv1Md6PhfOLAQVZwSlaLmO5GMDcXRcN+ZMzO37wIkjmtZb9c0CAB
 tRA6fq3/9Ktqea+XRcHIOh5XvdbP9eIib7dCbl/ePJ/SRtbPeQ1hTPXQpfY0StyPyD
 MILNDtv6/iFdpsgoqOc/AQCFTxN6/uvecN2JzGZIicfu4qkbx/bXsf0KhXyUKrV857
 0cX3Hrv8EyshW40MfyR+pSAD3JbXoWUzFQdwp6cTt5u9SpqMuclX1L8rlpgnIEAkHM
 Z4PrvvJD2VmBQ==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIJsWRWlGSWpSXmKPExsWSoS+lo3v9tmW
 SwepvghazJ2xmsmjvsnFg8li85yWTx/3u40wBTFGsmXlJ+RUJrBl7b3kUvJatmLzwGFsD43qJ
 LkYuDkaBpcwS+66/Y4dwFrFKfLh6lqmLkRPI6WCS+HjcDiQhJDCbSaJ95WFGCOcgk8T/MzfBq
 iQEjjNKdK9yh0h0Mkrs3vqDDcKZxCTx6tVcKOcJo8S65jXsEM4jRol9O84wg/TzCthKXPtxih
 HEZhFQlViw8jQjRFxQ4uTMJywgtqhAuET3/v2sILawQJDEtKsb2EBsZgFxiVtP5oPdISJgJdG
 xbyErRFxV4s6+A1DLZjJKPH38FayBTUBbYsuWX2A2p4C+xNubH5kgGjQlWrf/Zoew5SW2v50D
 dpyQgLLEr/7zQDYH0KMKEqu/ykP8nCDRPOUoI4QtKXHt5gV2CFtW4ujZOSwQtq/EouYJbBC2r
 sSf9j/Q8MqRuPKqA6peTuJU7zmmCYy6s5C8PAvJa7OQXDcLyXULGFlWMVonFWWmZ5TkJmbm6B
 oaGOgaGproWlrqGpqY6SVW6SbqlRbrlqcWl+ga6SWWF+ulFhfrFVfmJuek6OWllmxiBKaelKL
 kSTsYv/f91DvEKMnBpCTKu/eIZZIQX1J+SmVGYnFGfFFpTmrxIUYZDg4lCd45Z4BygkWp6akV
 aZk5wDQIk5bg4FES4T1xGijNW1yQmFucmQ6ROsWoy3Fl2969zEIsefl5qVLivCtuAhUJgBRll
 ObBjYCl5EuMslLCvIwMDAxCPAWpRbmZJajyrxjFORiVhHk/3wKawpOZVwK36RXQEUxAR+izmo
 EcUZKIkJJqYFLOKzr1hn3j5A4197Icb03FP0ypPQsyPh0ynT0jiS3jolWsaNihrnuz9nIzFSw
 JS9kyjav3+NQVsySKrm/wzzDUbZpk/Ud367FV86MMMnoe6IssaDn1xUPl64yiq5es3l36diDO
 VZPP9Izfr9oiLaGze/0ETDhFSvSD7lU8PHPHP/Ny9XF74bK+A2YBDh0yWytvK4r5rbqYcFBJY
 Kdeu0172PTvzWGKv5cf3FLkXvxB1Gt17Ld/H9wUMoRtpnrWe+8NK5OQjeD8/7B7vsXGGr4y/n
 z/wEVL12Z9+ce9NfWdTCtba1R67fylQZ7LCqf0T9/PP4v924Z7fcvzvZomqZX1bi6fpDnL00m
 tcPFMJZbijERDLeai4kQAZqz9eEQEAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-13.tower-636.messagelabs.com!1647958998!7216!1
X-Originating-IP: [104.47.26.44]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.10; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 5100 invoked from network); 22 Mar 2022 14:23:19 -0000
Received: from mail-psaapc01lp2044.outbound.protection.outlook.com (HELO
 APC01-PSA-obe.outbound.protection.outlook.com) (104.47.26.44)
 by server-13.tower-636.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 22 Mar 2022 14:23:19 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iillRrG/oy7/DgVgqPZAIWhjQS1AXxEr3YVFRruhWNcKN9MDUAosr6YBTXB+r+VtKzDMhIJEmDXEAUx85sDnFkqUBly+37W73/HFVxbOTgaPdH5n2BwazwhdSRUNjUhEkQLKFM15j6+gLPFvWwFx2MMxmUetYCn48pdDyDmgkOK+pGU3KHhuR9XwdKBrmp0Pp+ZAU4N3azqRXx045FizuG5wxHFjrmZBql7N9/aZbBV/HdNzSXmH3ye87W3XwWLmddcMfo8C7CFgxcaBKsVc8grB3kk+sepKfnZ7uED/CQFxbVFltUSSghbuQPqAOKXaK48J1xbyQmOiN0EsIJbpZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kyNafTKpHa5QpH1tHfE3IcIIFb6/N/1SL/YFZkOuMTg=;
 b=KKE1ih3opgotw8kZn/aeju1WKhfCwmF4DR41yTCYmtnxo9oZrpEZK1Reh2zJeazfNyVAb2RkmmOhIb7QTa66fWZLqZ0OQ7PmNCIxz9yAS+FwqbEl7M/dDEFiFSI4Fwt24LrMHiw0P917xiO0u6H6tXGjQG14tz4IjgsPl/yeCrEgyCmao4QIygFxyMETr79p7Oi98k5yCSl+YR99TBEK4EAhRvUvC4JwDHGIr8+9UJJZOLsCZV0HcOya9jxu73rahwHmYXoGzFaOD1N9XmYxeAb7ufPBzGwWT5QE2oVoTlM0kO3Ktuud49dSRmmNutaY7Ymv41S9jwH2+rof8D9A5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.6) smtp.rcpttodomain=intel.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from HK2PR0302CA0020.apcprd03.prod.outlook.com (2603:1096:202::30)
 by SG2PR03MB6780.apcprd03.prod.outlook.com (2603:1096:4:1dc::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.7; Tue, 22 Mar
 2022 14:23:17 +0000
Received: from HK2APC01FT052.eop-APC01.prod.protection.outlook.com
 (2603:1096:202:0:cafe::c5) by HK2PR0302CA0020.outlook.office365.com
 (2603:1096:202::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.17 via Frontend
 Transport; Tue, 22 Mar 2022 14:23:17 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.6 as permitted sender)
Received: from mail.lenovo.com (104.232.225.6) by
 HK2APC01FT052.mail.protection.outlook.com (10.152.248.244) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.14 via Frontend Transport; Tue, 22 Mar 2022 14:23:15 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Tue, 22 Mar
 2022 10:23:14 -0400
Received: from [10.46.54.105] (10.46.54.105) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Tue, 22 Mar
 2022 10:23:13 -0400
Message-ID: <32a6c091-a30c-d8a1-6dd5-d86ce7314051@lenovo.com>
Date: Tue, 22 Mar 2022 10:23:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <9e70bec0-66b6-9ac7-1b5d-9d8679700523@lenovo.com>
 <20220322141809.GA31222@intel.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20220322141809.GA31222@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.46.54.105]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85761b9d-a902-431d-2efd-08da0c0f8196
X-MS-TrafficTypeDiagnostic: SG2PR03MB6780:EE_
X-Microsoft-Antispam-PRVS: <SG2PR03MB678074145FA66AB7B42D9727C5179@SG2PR03MB6780.apcprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DK5uLxzD6H4U8FBJKAM6bcTKEHmS5OjYsek2Az+7PPExiVYyjjSHLu3+X+3t+fn68MTTNulQH/+qLONSLLGujikvt3NjcMe1m6EFB3GIwxDWI6RmhebPpy9owTzjEscSp78EWbigs4SK5617/IgH8molqIp+B/QIyeezoWEqdDCa5CNPXbVCpwo0f6l0N0btsA0krpbKCZFjYp+IvxQb1dt99pxUairgt0s8Ssr8nk38CbclLmT6XT+VgoEAD1qZsBdvWRc+3LIicP0kBTsQ+f+L0vQ2Af/oQaL7yDPaLfu+INYRjvENL7nAfXWH7+soV+NN7VYGwUq5HeBR4tvhO9a9VwNtKOO0sI6BF4A1xFypi39FWtyxkvARv8w7gBJSufaZnUbnJ+KdR3EkNn1K5mAZbSb3/F6Bwz65awQFAN8G5Zd7KKHvE/W2tYhh8LvefENefdbZK0rSZwrIMVoQHe2aCSGvIhOQ9ZWdrp3h+McTlqIOTGsFniXRYlzW0vyXx8VZAiNTUTKigJr5TX0Mu8/7H4ra25LP5urF35duzNfTTmcseekjje2f74L7CChgLkTNASmN+MIgggrpVOa4X/J4OrRbwrIG2T79RHi7/tchARs1zkDY+AwO68jO78uBgJZFKMR3dL+VJ0hwjPqkukcIv46aLxS9MyC8mUwTk1WYjIsGC0k7qviIDpxqd0s522FphTluClqwLimB3RTAdi7X8PCAD/rkyR6h30MHyObnT7w62yto6OwFHhvCBkl1Yb3yTGDDAnIT1TpGPBLnKg==
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(40470700004)(46966006)(36840700001)(186003)(356005)(40460700003)(426003)(26005)(53546011)(31686004)(70206006)(70586007)(5660300002)(336012)(4326008)(47076005)(2906002)(36756003)(8676002)(8936002)(82960400001)(31696002)(316002)(6916009)(16576012)(508600001)(16526019)(81166007)(36860700001)(83380400001)(2616005)(82310400004)(86362001)(36906005)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2022 14:23:15.9024 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 85761b9d-a902-431d-2efd-08da0c0f8196
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT052.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6780
X-Mailman-Approved-At: Wed, 23 Mar 2022 15:40:19 +0000
Subject: Re: [Intel-gfx] [External] Re: drm/i915/adl_p: Increase CDCLK by
 15% if PSR2 is used
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

Thanks Stanislav,

On 3/22/22 10:18, Lisovskiy, Stanislav wrote:
> On Tue, Mar 22, 2022 at 09:55:35AM -0400, Mark Pearson wrote:
>> Hi,
>>
>> On 3/21/22 06:49, Stanislav Lisovskiy wrote:
>>> We are currently getting FIFO underruns, in particular
>>> when PSR2 is enabled. There seem to be no existing workaround
>>> or patches, which can fix that issue(were expecting some recent
>>> selective fetch update and DBuf bw/SAGV fixes to help,
>>> which unfortunately didn't).
>>> Current idea is that it looks like for some reason the
>>> DBuf prefill time isn't enough once we exit PSR2, despite its
>>> theoretically correct.
>>> So bump it up a bit by 15%(minimum experimental amount required
>>> to get it working), if PSR2 is enabled.
>>> For PSR1 there is no need in this hack, so we limit it only
>>> to PSR2 and Alderlake.
>>>
>>> v2: - Added comment(Jose Souza)
>>>     - Fixed 15% calculation(Jose Souza)
>>>
>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
>>>  1 file changed, 26 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> index 8888fda8b701..92d57869983a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> @@ -2325,6 +2325,32 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>>>  					dev_priv->max_cdclk_freq));
>>>  	}
>>>  
>>> +
>>> +	/*
>>> +	 * HACK.  We are getting FIFO underruns, in particular
>>> +	 * when PSR2 is enabled. There seem to be no existing workaround
>>> +	 * or patches as of now.
>>> +	 * Current idea is that it looks like for some reason the
>>> +	 * DBuf prefill time isn't enough once we exit PSR2, despite its
>>> +	 * theoretically correct.
>>> +	 * So bump it up a bit by 15%(minimum experimental amount required
>>> +	 * to get it working), if PSR2 is enabled.
>>> +	 * For PSR1 there is no need in this hack, so we limit it only
>>> +	 * to PSR2 and Alderlake.
>>> +	 */
>>> +	if (IS_ALDERLAKE_P(dev_priv)) {
>>> +		struct intel_encoder *encoder;
>>> +
>>> +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
>>> +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>> +
>>> +			if (intel_dp->psr.psr2_enabled) {
>>> +				min_cdclk = DIV_ROUND_UP(min_cdclk * 115, 100);
>>> +				break;
>>> +			}
>>> +		}
>>> +	}
>>> +
>>>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>>>  		drm_dbg_kms(&dev_priv->drm,
>>>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
>>
>> Not sure if this will get thru as I'm not subscribed to this list but I
>> tested the patch below on my X1 Yoga 7 (Intel ADL-P with Step C0
>> silicon) and it didn't fix some screen tearing issues I'm seeing there
>> that are PSR2 related
>>
>> I also tried increasing the timeout to *300 to see if that made any
>> difference and it didn't.
>>
>> Let me know if there's anything else I can try out - I have a couple of
>> ADL-P machines I can test against and both are seeing screen tearing
> 
> Are you getting this screen tearing because of the FIFO underruns?
> Those should be visible in dmesg. This patch can fix only part of underrun
> issues caused by PSR2. 
> If your screen tearing caused by PSR2, but there are no underruns that 
> patch won't help for sure.
> 
Ah - OK, no FIFO underruns that I've noticed in the logs but I was
hoping the two were connected. I'll keep an eye out for those in the
meantime.

I guess I'll just wave a flag and say I'm seeing PSR2 related tearing
issues. If I disable  PSR2 selective fetch it goes away
(i915.enable_psr2_sel_fetch=0) - but as that's a different issue to this
patch thread I don't want to drag the conversation too far sideways.

Thanks!
Mark
