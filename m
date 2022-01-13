Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A01EC48DBCE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1247010E11D;
	Thu, 13 Jan 2022 16:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8BA10E11D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642091513; x=1673627513;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=p3G+sBtgro0CTKoAD04dcczgtJpv1rNvqdFjlscTvNY=;
 b=Le/uHAsAEqw6j1vLcmtHdDFIgvgHNLfFUX2O0BCfnmk00vOnoC9Mcqku
 zemDbvlawjI0YGbvpXdRxgKp9mW57LluvHPvdYfPwTl44Deyksx7JzVSr
 RYg1VHgRR5j+lXXfhzmRQLtfEiSAdIvQhdAnirWHHz8QlRenTrFazhaxw
 CQxT3UZBWajnLXuZDDE+HI/nHITARlx+E+sccgiLXj7bxoDoBmzpxkubX
 oMlAzK59qVoqM0t/o8nQL2+mAPSDQXjUdTX+yeuFwC+CVt8xlvi/YYdfI
 rhnx54kEdsLUHapC3JCLwerjKky7eXaTlh+cj1xMuWRFR1Vv+NNI1TN/Q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="224735337"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="224735337"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:31:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="576982721"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jan 2022 08:31:11 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 08:31:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 08:31:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 08:31:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 08:31:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4/a7Ie30b6zJ3qedVlo1In0/lG65t11jS02msFazIPTJLJv3hMO3FW66BLGguPp/lN1AiiRgsqE+ZbQviV2VEuH+R2YrfQwqY9GaX4pPMvuEu7bmOAPWAO/14woYHNnFnqT/nBoPRmmg5Vx//Jd6ZY3U0E4UQN+DFGnLXBVPtAdLwpHoD4uiVihFRime9reaBv1chC27Nyuy6uc3YmbvLE0J1xWwG4E9xE2Q0Jrv54VaYQT6NWIQw4RtZ0mVy9N2odCsc7zcgPIoVzKz+eCkPOqy48kmLeT26CnpUKoau3qR6Im5usmYBsBdZ1R93AcKRJvKi5/bXRxytOHJ/33RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7DT+KdCkiLYOyAf6Ej9XXrHWcy4WAQ+xbflkLx0Q+KQ=;
 b=RRdjo8nnISuW7QWgyvv4ob5kI1Oou5aJCapRKuMWKa0uJIzHs5G7f/Mat+YXaTnmC3QLS/i6I7HRDRNlGINCA7yF1goGjfKv/8yQ8xTSDX6H/h1zgN8RYrB9QOt5uNZ9mbkB0X1tzo78KWn2ma7F9CWl7T87lct03tQOQjSagaOohN5jq1ePX1U5nNpILNQY2FHD1xTe9OcC2BgQyZm5tKOULMQ2eNrJByTsl7liljWXmFyALlnH0lApeaX1/3Fil2rS0BH6Zfwj8c5eqiVTBy999t3UgSOSt94uSIiHqidpU51NXBOo7zoIUcNW+objoum4GPgdgu2SeJsineMKFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:14b::23)
 by BYAPR11MB3253.namprd11.prod.outlook.com (2603:10b6:a03:77::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Thu, 13 Jan
 2022 16:31:08 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::e956:687b:f7eb:3707]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::e956:687b:f7eb:3707%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 16:31:07 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220113160437.49059-1-jose.souza@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <1bcff71a-0ff7-fb24-7322-23cbfd7d9ee0@intel.com>
Date: Thu, 13 Jan 2022 08:31:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20220113160437.49059-1-jose.souza@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: SJ0PR13CA0164.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::19) To BN0PR11MB5711.namprd11.prod.outlook.com
 (2603:10b6:408:14b::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30fffb8c-ff41-4719-9f98-08d9d6b219c5
X-MS-TrafficTypeDiagnostic: BYAPR11MB3253:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB325395BFC691C120587C5013CE539@BYAPR11MB3253.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:109;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pQIU8WnGS1xXwVH8jLIg9Ucv8SXyKiK24LydJQsHj8fUZTp+EbzDzN3zJtERQNs49sj2my0fkzLkratCNCl6UVlg1Guu62u2lUt8ZoR2BvMuiZSzw5patUojzg01Zt4oq0l0L1hQNZaV18sRKnLVr9/LAovBUICursAKPqDL0mrNUUYAYKJ1/T6tnhG5trkebiwo4Nf3ZUWSl72JGhBzdbhCPgyxuicfhJoBQ4ceyFp9gdpFvR7DQ7KH1HBA97UQhun7uX1PWJTArJoTeQeHGZPqq+7XFXbNNkqA9+hrsE9UyCnzVkljsMreSfKPbek9HXQipi4gI5cGjayQ72ihxbMCEjkiy4V4a9eAhF7a8/vIFD8FhSh7clzyPItPieA2vAP2wp3bDTaJI4PpAGCRd5+RhM03G1rc+1hw9mZ85M2g8Jxb1OI8iV/XFgCogXdOFS/+ZbaX7KgOgC4vCE8c80+X0tscGEvM0+0Js2R8oJiH7Tt/QAA0CR5QGxOq4WxIR9VkeMIGQ8Yo2v+O6D+O6zuo4blUFUaMcdXpk9sSmYmagnfPmBoBcBrd/nMMhgYg7VVCs5XFPnjDdVs11GyUD9jETSEPeLy7QVM8ypQW9X8WYpgB16cMSDu3rl9B4bLp+jmIHnoSV80zWsbP1mxTrQR9SHBlKBPcUFOtJ4NekBbtYVIZzwNV/fioG+F88rHlXyafjUBFdljIP/pxKVTbWp1ns6eY6pZrjFF85WpcYtg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(83380400001)(6512007)(66476007)(8676002)(2906002)(86362001)(2616005)(66556008)(31696002)(508600001)(36756003)(82960400001)(26005)(316002)(6666004)(53546011)(6486002)(38100700002)(186003)(31686004)(5660300002)(8936002)(6506007)(15650500001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUNPbFBTUWVqYWxvSkNIZG5zbWp6T0lTcDI1bExNR3RxOER1bVcrSjcvQmZC?=
 =?utf-8?B?d2RaeHhlSXRNUTBrZlozdnRjV3BQcW9jT3g1WDhmbmg3bHlSdjVlVTFYSnFk?=
 =?utf-8?B?REIyN2Q2L2xoMXkrd0FhMUcvbXBDYS9IbzZkRlIwcGlHWkdsdXRYU3Z4VFo3?=
 =?utf-8?B?c2gzQTJ1TEkzMVNsQ2dKVEFiVS9NbWcyZlJwWTBSemVWekNlMisralhucVV0?=
 =?utf-8?B?TjlRRFUwVmh5RzJFdWF4NjJuTThGeSsvYklldmdlMDZlemU5YTRqaHdIelJM?=
 =?utf-8?B?WEdhdGhUMms2cHE0alkraWxsMFlkalZSVTNtaTlleGRSeDZSemNtbFA3QlNG?=
 =?utf-8?B?Ny9RWm1nTmpGQmhPc3oyTHRVeGxRRS9uNlk0Wk1IMUtEZmxuQXE5eVhVZi9t?=
 =?utf-8?B?RnpKWGpNdUpqMm43UEI2ckcwUjdjM1YyQW1iZUVnQTZKeGE1MnhLYlRPUkJs?=
 =?utf-8?B?cDhJbkYxaEowbThPakNCUDFEc1NEb0hJR3VKaE1IMzdJSXhCeHJtdzE2c1d0?=
 =?utf-8?B?UUpTNm5sWkphL0F5Tjh6RWlrYTkyUFJRSnU2ZWdRVy9PN2V3SmViK1lDTnVo?=
 =?utf-8?B?U0tuYzlCMlAra1FNb3Z2dlV3M1VqaU9EVEpqK3hzTVNJUjZ1OWczaXI4ekdV?=
 =?utf-8?B?bmttOElBSkJ1ckNScUE0bkVaMWl5a0N6cythSUpEcmM5Zk5PRXNibHdFTGt5?=
 =?utf-8?B?V2VQVFJJTVVhaGtzMFpBb0I4QkNOYTN6MUxlbEM5Tkc0d3JGdC8rQy93ZGhh?=
 =?utf-8?B?VWV6b1JCdllqSC9JbkpadTFiWXc0ZmFZdFJTWENpTjBKRmJxei9EVHhvTGVt?=
 =?utf-8?B?YU9HWUd4cUpkUXp1alVTTmJtVWVXQ0phT1RxWWVqZ2JpaGx1MDFjSjQyWUxu?=
 =?utf-8?B?ckRjN0RQekovaG9GTy9Nb2NBTjcwV3NkUkVBK2xod1M4cElqV3h3b25ueVdI?=
 =?utf-8?B?WTBjYzNKTjY5Mm11K2t4bjRRUldIcUFrN0N0RnBITWxDU0F4N0laYTZveGgy?=
 =?utf-8?B?N2NwalRwNkJrYyswUUhVWUFMTzd1dFd2aW5HK1JVMU5XMlFCVWxYU2FGL29j?=
 =?utf-8?B?bVBuckhTKzlOMHhSMWNKVUFLL1BieGtHTHFkRXJhYkJOTmo0OGU2cGVvK2M4?=
 =?utf-8?B?NitKSXR2MW1YWkhnYm9hWFNvRnV6VDk3aFdid0IvaE1Cd2JJbHZlbmFBc21j?=
 =?utf-8?B?Z1NrZ0RoNnRWOGJ4WVlRUDkwM08xTnNnNng0SUQ0aWJEK2gvai9yMGEzMVVP?=
 =?utf-8?B?RUZZZ01KUHNrQzU4ZytIeDdoVVZSMWIxYmljSTVMdFNUZm5iT3pZd0xVWm9E?=
 =?utf-8?B?UGlnaHZFNTVOZFZJOFlKQUlwTldoMnBqcWlrS3NhUVZ1QXR0VWlnV29NczNI?=
 =?utf-8?B?MEFjMTRBWFJTemp1a2JubWVvQ1pndjRxNE1VL3Q4Ly9XTldtTTRyRng4U3Zx?=
 =?utf-8?B?QmVaNjUvenhRYWNZTGowaTFveHZZZUVRUngvQlVqVFhmMVRlY3ZhSjkvbkxK?=
 =?utf-8?B?ZDJ4TnV1Y1BxdHhnaDY4QmxUUlV5aE1jMnR3ZkJNenFhSC9NdG00MU43WHdO?=
 =?utf-8?B?TXdaRWxkcTlXc0tNa2tVM3YrQ1R5N01FR2w1WlNxNml4NEd1eFFsMTRiaExC?=
 =?utf-8?B?UmxQdGNiOUVCR0YrbVpkZ3BaNGFRa1poOHZPZWNlQTU3NTdRZ1llV2k5Q1JZ?=
 =?utf-8?B?RnY3dnNzMEVhcTJGUTZiR2ZCVERmNTRiZEFKZHU2b3VuNzJuS1k3ZXR3QjNB?=
 =?utf-8?B?RUlGMS91VDMybG1sdWJWOXZuenYzQWpJZ0pJc0NlWFc0VmFHcEtTUUFOblo2?=
 =?utf-8?B?eUdaNnNEV1RuK1NtRiszeWNBMTJRU2hlRmQweklRSEZpUUVkT1ExVEY1RDkv?=
 =?utf-8?B?bUFGOExWVkxjeC9mYzdaRTlpOFB2cVBYOXIzUGF2S2RIMEY1WHJhMW1BZXNi?=
 =?utf-8?B?Q0dXTS9SbDJ6ZW1EZyswQ3pBUUczNXBPaWUvWFdUcC9hNzdYeVdPZGRxR2Yx?=
 =?utf-8?B?RXFaNkc0U3I3NWNpYzZ5SjRvZ1FGdjhZaWZaUmNOY1pvaDlIU3RtRDcveTcr?=
 =?utf-8?B?N2g1ZWFoMzZYY3VJRDNPN1h1blRBU0h6NjlLRVZyUloydEMzM0tYQ3lLZ2tC?=
 =?utf-8?B?cUh1bjBseGhSdnBpMXVSVnpVQy90b3ZpV2ZuQnpHSjdZc2cwOFIxZC82a0xL?=
 =?utf-8?B?bzNsWVl3aTVnNjhmdXNYUi9Nc1ZxSEtVVFlzUzdtd2p3UERTQ0lxZVhQVnFQ?=
 =?utf-8?B?RTRvdGxHRXFKa2xvc0hqM3NPNmx3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30fffb8c-ff41-4719-9f98-08d9d6b219c5
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 16:31:07.7821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9sytWZlXqcdWv+FSUWfJCOM91C4ULUhDndHsAbPywuCrJk1GoonQ6ii0yhDZw5aWFRGAJx6dB0wg4G9z4ERRBGPd7mVvv8mfzL5huTB3A1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3253
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/ehl: Update voltage swing
 table
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

matches BSPEC.

Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

-Clint



On 1/13/22 8:04 AM, José Roberto de Souza wrote:
> EHL table was recently updated with some minor fixes.
>
> BSpec: 21257
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 09d6ab13536cc..0c32210bf5031 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -477,14 +477,14 @@ static const struct intel_ddi_buf_trans icl_combo_phy_trans_hdmi = {
>   static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] = {
>   							/* NT mV Trans mV db    */
>   	{ .icl = { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
> -	{ .icl = { 0xA, 0x47, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
> -	{ .icl = { 0xC, 0x64, 0x34, 0x00, 0x0B } },	/* 350   700      6.0   */
> -	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 350   900      8.2   */
> +	{ .icl = { 0xA, 0x47, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
> +	{ .icl = { 0xC, 0x64, 0x33, 0x00, 0x0C } },	/* 350   700      6.0   */
> +	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 350   900      8.2   */
>   	{ .icl = { 0xA, 0x46, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
> -	{ .icl = { 0xC, 0x64, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
> +	{ .icl = { 0xC, 0x64, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
>   	{ .icl = { 0x6, 0x7F, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
>   	{ .icl = { 0xC, 0x61, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
> -	{ .icl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
> +	{ .icl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 600   900      3.5   */
>   	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>   };
>   
