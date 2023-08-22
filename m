Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B24783874
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 05:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8032610E2D3;
	Tue, 22 Aug 2023 03:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E4F10E2D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692674673; x=1724210673;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P/xhUE4G0+FI3MQG7lKt8R+SPOpIK2TXWIm4ExWC4ek=;
 b=ED9ZXEmLtmTunAF4mbBRrbD+rzRXMsa3xoCcSklo5SZl9rPc4zQxoZaq
 1bkOQm1UiI/lgiO46sg67WD5QHMG/Xut/oLxzw5JQtNahEj4PE6GzmCMh
 9s1UPpglVSPzQ8Fvu0jpbPvOjPuT5UFPgMfGpVfrn1oM29QuHj+A0x/s+
 dWW0s1s1Y4WPU9SNws9X/JfQkasG3coxl079gMiwOGtIGJgJqCOysQOtc
 pS31pcmymq+eEBeDiOCkip5KinpIElPXSBrfUkEaErP94V8gx433w/EyU
 CR/npOgh3LtbSpLntbZ7oG3vvjqC0/r7rcLlJ7e3xV9m/vvRsUR4kHbVs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="354093822"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="354093822"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="879771760"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2023 20:24:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:24:32 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:24:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 20:24:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 20:24:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TvewQ3595BiyoK+VQUJRBqxD2lOIHXgZVlhgrFJ9rTX6BsIfnChGl2gpXj5p3ta9oLN6pqphOi5GWgbO6BZlwTmJgT2xBbNwTeAo3YK0TGoGkJAD/x6Hkn8Y1ocfWbipbVckdBXBYQxR+CgvqidnKkQ82qitjRasQoChmes2W2S1PD/SL5YYlOE0ZA3VcQvAoO2pk2f+7PFzJGoQBIg7ZzkFvuP5HC0VwxaNPuAHggaDg9MtAa/C1yL0opI8XV/7N7ynAn7T7ZqQH/10mupNqF7dnxRBfcnGlQNW3ntrfPdjrX68md6ETzkPAMLybjx9ajLtyg1lkaJlDzstKHOk9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y0kPhzttnTlnsLTxfJigcrcpMfF5Oy5jGDlo8iD/T70=;
 b=Tct0KVrh9wYz0I3UwWXLS26aFeB8ZdWGiu8w7I0qt3u6Ia7RTpo1tmKt/iGPFxV6kQHlGjdctfSycVxdcsBnU9FLaokISy7IAKbfMEUvG2mhJDuSXkm0dYyEAb1CLonsjj7s223h1zK9zlz2zMwJ4fkZzHXdd/tGuV0ELfGkmi4MyvsWNfcY7sOEVn7AFk2VZHzGl3jsSfSpWe0NPWyhs/WNLYzv/U36uOKAP2R4McuGdbQUb8XRcswgPf3AAVkZ6wnBbpEwLVmggru4d8pR5ElOQ2kkLeNk4jO7dwY82JxUV82xi+zMpk3YECKmpNLyTeGyIH1ahSb9Eb3mEd1KkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 03:24:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 03:24:29 +0000
Message-ID: <ee0fee17-a464-0a94-f0ce-4bf3309aa665@intel.com>
Date: Tue, 22 Aug 2023 08:54:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230817083524.296571-1-suraj.kandpal@intel.com>
 <20230817083524.296571-5-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230817083524.296571-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0218.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4788:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cc6ac54-e8fd-400d-323c-08dba2bf4b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 49Y9l/m48SDj31jjjKCDK4Vi6jhAXADk38349b25lavjHH5i3DAK5eQlDG2Oyq5JBd4aPAJ9olRnDqKzUTKJMtr8YQ9Tagf/N4wO/p7VPQt+uFI9Hr4ra6ai0cL1W3HjrVckL9UsRwZyw3JyBsrhml55MrxFJUtE0IIX+DqJ6u4U3HEWTRGoaO+lCXVDm14nJUEbwNtSke7FqEwS02eMOJgq8myTBuVjNo1T34UWXx6aBEm4PhyTDAVhxWA2n05a8PNorK3cd+ZJs7DGpUE8v3nbygrT87VYoa3w9eoFmcIz+uVUSGotB80bx0DS63nDWWCbJEtmUPlXAxiXUxzDw2AaArpbFbTT8mPUHoJAGTcxuQpWBiahZIiic4063r4HfhCnsUaUcap4ZFwWSO289h5As1YfEz5lUy4hpq/WzGouafRFhWM4pfG1cwDGui9JqlHgw3eDbVfSki8Hxw0ZwSkDmDV6g9Wgb8ItkM8Bjv70o8+wm00MaApEzuSCTgBZVW7Sq5twCz0Yi9zclQP/iZZ/sPM2injyhjZSULDHJbxY27JLGq9aMtwETYC9/CLRDgC6pvCVs4y5uizuP1FPOH9sOi8GH2lr27PAK3a2T3sXX1Ha8IB1eYvs+mgsZpZ8rMxwUDNgfrvBXpCywNdBDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(66476007)(66556008)(316002)(66946007)(6512007)(82960400001)(8676002)(8936002)(2616005)(4326008)(41300700001)(36756003)(478600001)(6666004)(38100700002)(53546011)(6506007)(6486002)(83380400001)(2906002)(86362001)(31686004)(31696002)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmdPcUZGOWdUT05XMmhxRklXc2swcXhmY3VtTjNYeUt4NTkzTkZDNHFxVSt6?=
 =?utf-8?B?U01kaFd5S05YN3Y2SWQ0aXhkeUF4bHlMTjgzMXF4cXBPK2JleWhiMTZidVJv?=
 =?utf-8?B?WHJOVFN1UDg3ak9GNUdkc29vMzIxNFlaVjRnVmw1c0RiaXhkYlYrVVE1TkNv?=
 =?utf-8?B?RnNTOEVlQ3lGL2NmWVpnVitEZFdnRFhyT254ejliSGlBQXdvNzRuRjNhZkNU?=
 =?utf-8?B?RDZFdEpCTSsyN1BMYWRDREdyVC9HcVdnR2xKNGwwdWQ1dTUydkttd1ZyUlA0?=
 =?utf-8?B?RCtwTkdLTm85ZEFZVXkzNzBQOWYwK3JUSmttL0FibXd2Yy9GNEJzemYzZ0FS?=
 =?utf-8?B?TVJtblFuekxZSk5rMlR3NDZGQ3NpblNRcFl5SE9tZWg3TmZjTXA1R2loNXkx?=
 =?utf-8?B?VUs2NlRYdW1GYW54czVPSmxNeHA0dVlPdzhhR05rcnExV3Q1cmRpcXpnMmZM?=
 =?utf-8?B?OTR1UEFoR0FMSVpNUzZNaVZZbGpBem1BMXgralhWMWJSWkF5QlVsbmZqV1Fo?=
 =?utf-8?B?ZWMyWTZGWHlSL0d6ZXltVDFGSUNscHVMUU1NUjgzazd2YWV4RzVpZFJkZlFL?=
 =?utf-8?B?M3JFY0EydlhMWTM1Skd4aHpVVmE0dm84R2x1SXF3QlpTL3NHRkk3VHhnMW9o?=
 =?utf-8?B?WnN5emVUUUhadVBWd2R4bU0wd0N3dmoySHJ5d3FVR3VFNStaelJHZmF2Y04y?=
 =?utf-8?B?c21zMTVUZDlCNHU1bDBjMERsc1RGdWJ6aEJrVlk3UFdwcmRxMDN4R0tEWlA4?=
 =?utf-8?B?SXhXZkxTWEJkakxSNWczSXVUeDl0LytyeDRjRFlIcytxYXg4MEVBNFgyaCtq?=
 =?utf-8?B?VFp3U0RodDRaQkFLbWdKeE5KYXY5VFg4VDZ4ZmtDS3FrQzFiNjZ6cDVlZFdi?=
 =?utf-8?B?S2kydndlUHR0UTRlRU16NFE0YVdWTEhIdVlkaUczYzAwS2IvekNRVjc2c2tQ?=
 =?utf-8?B?Vnl3YWdVOEFzOE9WeXR0RUhOVk1UVEhmK2s3UUNDK0JTcW5NR2gxZmcvc0ha?=
 =?utf-8?B?K0RVUFJ5T1dHRy9YN0hXZzY0NGNhWG1CUzJGeERBVDFGVVpKN2V0Qlh0YWhs?=
 =?utf-8?B?TC9IRUpmYTM0cXJlYkhuWGFYU2RGYUNTVkdkbFdFOTVsaG95ZmVPdTMrUWll?=
 =?utf-8?B?SzhQWk9xbGpESEF5WGtmTW50M3hJOVRZdGh2WjI1eDJZS3RFOHhPbmRMNXNx?=
 =?utf-8?B?bG8wWnpPTm10MEMraHdMbjJ3NWNQTHcyc3pORWdkUTQwZmpESy9tMThhbmRh?=
 =?utf-8?B?a3dROXEyMCtlY3NFY2JSekNVTE1zK09ISm5iVzZFOGxJdjZ6cEUrWGwxaGVx?=
 =?utf-8?B?dmFmUjQ5d1dXWnUzaTJlZFlUdUpkQUo4Mi9RM2dNZ1ZiSklyMFYwYng1aWNo?=
 =?utf-8?B?VDBPRnhKV21WVE1rQzl1UXZjY3hQZ0I0R2VyVWgxVThxVjJ6VXRpTjFCOVFU?=
 =?utf-8?B?ZnJNTXhZZTdaN2FJRUdvS2tSS3lTRXlPa3VVNFQyQnVaQ3RzZDZVTUlIdFpj?=
 =?utf-8?B?c01ueGFYcTU4TW1jdXpWOFVXOW4vclEwQmo3WCtrSXlsQ3MzZllwM0dBeVlk?=
 =?utf-8?B?V1AyZ0tlN1hleXBUajQ4WmhPRzg5RUNVMlprcDBteGZHc3JYSERIY1NLNHky?=
 =?utf-8?B?WlFueVZyU3BNbk4wV21LamM0OVNWbXFmN3lmU1d0TzVaSWQ1azVPZlloUXdG?=
 =?utf-8?B?SXFvR3hBL0FjZy9ST1JEMjFNemU3Sy9GWmJUMmc3UkVDZ0dNbUw2WHhET0hq?=
 =?utf-8?B?NmlYMjRidGpGbnpnN3NseUJkdVY4UThpL3d3Z1YxOUFQVlRka1pVWU1jSW9V?=
 =?utf-8?B?U2FKeHhSRFZXRkN0cERnZkJ2VGIzZFRzWXFJVjVaVWJJb1BUdnZ4Y2FFZmRN?=
 =?utf-8?B?T2I0WnF1LzdWYXEwWFJWTnl0emtOeUVKUHByeTVxMFZYNDhpejVGVzFxcEJp?=
 =?utf-8?B?N0xqQVo2L0Z5TEZKS255emduUHZmQ0NLb2NaUWV6QjBFU3l2YXNKMmxIRXdB?=
 =?utf-8?B?OXJvSmt6c3F2bVVWS0FNNTNURjVUTTcwamVabTZ4SzJHQ21RRWc2eXhkbWFs?=
 =?utf-8?B?WkxRTWtVdjFJTm5xZktWTTJaYmdwQjBFYXJPMStUYThqUVhXbHFQRkErV0xW?=
 =?utf-8?B?bkx2KzVHVzNFNVB6dVJtV24rdmRidmNKWGE2Sm9yanIzNDBGaUc5ODhFUkdD?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cc6ac54-e8fd-400d-323c-08dba2bf4b2d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 03:24:29.0614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wJi4wg5JRMSS/Elew+c0qeghTGUdT+8cyoXkvjbGHOgowCOtCYXkURTT65s065pXp5jFtdVKjwfaEuvkAmesEKknJ4P8ceoYFsbcv7N7n38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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


On 8/17/2023 2:05 PM, Suraj Kandpal wrote:
> Add function to read any PPS register based on the
> intel_dsc_pps enum provided. Add a function which will call the
> new pps read function and place it in crtc state. Only PPS0 and
> PPS1 are readout the rest of the registers will be read in upcoming
> patches.
>
> --v2
> -Changes in read function as PPS enum is removed
> -Initialize pps_val as 0 in pps_read func itself [Jani]
> -Create a function that gets the required register and call that
> in the common read function [Jani]
> -Move the drm_WARN_ON one abstraction layer above [Jani]
>
> --v3
> -Send both reg values regardless of dsc engine no [Jani]
> -Don't use num_vdsc_instances stick to dsc_split field [Ankit]
>
> --v4
> -Manipulate the reg values instead of creating MACRO to change
> name of pps [Ankit]
>
> --v5
> -Read dsc reg values using array rather than individual variables
> [Ankit]
> -Loop the verification of all dsc engine reads to future proof it
> [Ankit]
> -Keep the fix me comment in this patch and remove it in later one
> where we add other readouts [Ankit]
> -Add switch statement that fills in the required registers based on
> no of vdsc engines per pipe.
>
> --v7
> -Pass no of vdsc instances from read_reg function [Ankit]
> -Fix issue where arrays do not get freed on return for read_and_verify
> func [Ankit]
>
> --v8
> -Simplify reading and verifying of register and remove dynamically
> allocated arrays [Jani]
> -Remove no_ from no_vdsc_per_pipe and wherever else it applies [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 118 ++++++++++++------
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>   2 files changed, 94 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index fbe8ce9fe1ab..27ae70b5849f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -371,6 +371,28 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   	return num_vdsc_instances;
>   }
>   
> +static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
> +				  i915_reg_t *dsc_reg, int vdsc_per_pipe)

We are sending dsc_reg_size here.

So just fill the dsc_reg with the offsets, irrespective of the no. of 
vdsc per pipe.

later we are reading or writing only those which are required based on 
vdsc per pipe.

This function will always fills the array with offsets as per dsc_reg size.

In read function, while calling this function, the argument sent is 
dsc_reg which is correct.

In write function in the next patch, the argument sent is vdsc_per_pipe, 
instead of dsc_reg.


Regards,

Ankit


> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
> +	bool pipe_dsc;
> +
> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +
> +	switch (vdsc_per_pipe) {
> +	case 2:
> +		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) : DSCC_PPS_REG(pps);
> +		fallthrough;
> +	case 1:
> +		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) : DSCA_PPS_REG(pps);
> +		break;
> +	default:
> +		MISSING_CASE(vdsc_per_pipe);
> +	}
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1000,17 +1022,72 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>   	}
>   }
>   
> +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> +				   int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	const int vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	i915_reg_t dsc_reg[2];
> +	int i;
> +
> +	*pps_val = 0;
> +	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < vdsc_per_pipe);
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, ARRAY_SIZE(dsc_reg));
> +
> +	for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++) {
> +		u32 pps_temp;
> +
> +		pps_temp = intel_de_read(i915, dsc_reg[i]);
> +
> +		if (i == 0)
> +			*pps_val = intel_de_read(i915, dsc_reg[i]);
> +		else if (pps_temp != *pps_val)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
> +					      int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int ret;
> +
> +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	drm_WARN_ON(&i915->drm, !ret);
> +}
> +
> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u32 pps_temp1, pps_temp2;
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* Readout PPS_0 and PPS_1 registers */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> +
> +	vdsc_cfg->bits_per_pixel = pps_temp2;
> +
> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +		vdsc_cfg->bits_per_pixel >>= 1;
> +
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +}
> +
>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum pipe pipe = crtc->pipe;
>   	enum intel_display_power_domain power_domain;
>   	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
> -	int vdsc_instances_per_pipe;
> +	u32 dss_ctl1, dss_ctl2;
>   
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
> @@ -1031,38 +1108,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>   		(dss_ctl1 & JOINER_ENABLE);
>   
> -	/* FIXME: add more state readout as needed */
> -
> -	vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> -
> -	/* PPS0 & PPS1 */
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (vdsc_instances_per_pipe > 1) {
> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	} else {
> -		pps0 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -		pps1 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (vdsc_instances_per_pipe > 1) {
> -			pps_temp0 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> -			pps_temp1 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	}
> -
> -	vdsc_cfg->bits_per_pixel = pps1;
> -
> -	if (pps0 & DSC_NATIVE_420_ENABLE)
> -		vdsc_cfg->bits_per_pixel >>= 1;
> -
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	intel_dsc_get_pps_config(crtc_state);
>   out:
>   	intel_display_power_put(dev_priv, power_domain, wakeref);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 785ede31116e..862dc708c5fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -78,6 +78,10 @@
>   /* Icelake Display Stream Compression Registers */
>   #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>   #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> +#define DSCA_PPS_0				0x6B200
> +#define DSCC_PPS_0				0x6BA00
> +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0 + (pps) * 4)
> +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0 + (pps) * 4)
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> @@ -88,6 +92,14 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  ICL_DSC0_PPS_REG(pipe, pps)		_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> +#define  ICL_DSC1_PPS_REG(pipe, pps)		_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>   #define  DSC_NATIVE_422_ENABLE		BIT(23)
>   #define  DSC_NATIVE_420_ENABLE		BIT(22)
>   #define  DSC_ALT_ICH_SEL		(1 << 20)
