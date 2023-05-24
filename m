Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D65F70FBC3
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 18:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D04A10E533;
	Wed, 24 May 2023 16:37:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B41AB10E112;
 Wed, 24 May 2023 16:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684946237; x=1716482237;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=grXNTocwlkItXn0IoUrVJvxRcZ6XVToOLVs11FT2hOA=;
 b=DScMxnxoXi0HyRItczzgWtJ8f726nUQjvtSBDjX2wIBaeTFoAJKJz/ac
 I3li/RM6YL0y1eeacJiFo6ANlle9XBFbHumhJE243UQoMTFFwRRHcTIQT
 qBcE5Efz0dokqONfW9BnBE4GXAn8Z7ZvrVas/QKKfDhxvtcCMng+hA5xY
 wdC56DgJPNLd1gooFQADFMyT6mUNxlXzOcykpHqn/2XB7W3spDEwm+HxU
 Pl4/JEOFjCtS+1lcbGH8RfOZzAAewYC4YzlRDnzExo0X5c5YIQhXS0M35
 Pzbei2TmpZQHGzPI3f84euB5GS4Rqe8C5HFIKeIMZxd9Cn1oF2alyaMbM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="353650186"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="353650186"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 09:37:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="848836159"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="848836159"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 24 May 2023 09:37:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 09:37:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 09:37:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 09:37:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=laJhtiHQF2l3dl6z5AaM8UeazOyjEYtt2LFggT+n0WSfkgJyAdrWq9gl+aVvV3Amdm4PAIgFzWu/bMSjZEQ2NQWGNahSILTbMiIEUnRcoo3w/5zW/Mn1JYhReqPTJumu94Ra4ggCm2CrrRN8uUjrUvmeHSICpzKmwCUtm10YC/w2JNC46z1ex6aKSrimrzm9i6xVkZsZ634WJX6b2F/8Rxc7laqRxdRzroAc3BG0MzPN+r6QOakK0BkQ4sN0LBbb8BnSJRXrSy3CskGKRcH0AbHco9ex5MJle/QkI2NwRwSN2se4YJ1wXrk9AITEFKefD7YHEdmBm0Nr2pQhrjK1FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFM6rB+13cpB30zcvw27t7uCOeszrMIao4nX0TGwlzU=;
 b=jNZiD4Q8Cbb7Zafrn9AsEqODLBJMARQK18D1Jrprx8Xge/fhUms8y4TmkDaED/wCh4PbAFzM9T6RRCjJXDVxcfW8zGwImwMD7Wrf8oBhySL7wpwvyf/BjjTjj6RtQUL6yikEBnn/P7ESEzuCkUcDObhnbue/jQ6kXyLlSyx75v6dLegy4K1gtJtoIDH1xWJV7scjvAaTJRf2CdhuWtyo8zR5ZbrUUb5T58sKg0AuQeAgMVMtehCfejd4VlzbEwtCtX4ZGYFKxrtUmVNnOIQoG03Hhl2uQhSiKLEMZ9b7RuzcViPnIz64JrQ27d7fvJ2ktDzw4SbRvojUKSiLn35yig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4644.namprd11.prod.outlook.com (2603:10b6:5:28f::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.29; Wed, 24 May 2023 16:37:14 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 16:37:14 +0000
Date: Wed, 24 May 2023 09:37:11 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZG49N4hh1dKDHduR@orsosgc001.jf.intel.com>
References: <20230523152407.828236-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230523152407.828236-1-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0261.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::26) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4644:EE_
X-MS-Office365-Filtering-Correlation-Id: 0681bf5b-1d9f-426b-44dd-08db5c7520e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lfQp63QxSRjhcysY5nJ7BqbP8KhaJRXyJgqp+25qQdukqMh/kj/iusHQARtsD4Q8TvEc+hw24IbhO4KXIVVRuEqMaZqSOHM9X2XvktTifUX/C0WZB3bTL/gwq256Q5L1zsLqFHyblc1UcwGo+QXcfe/a+hMRt5hzTq0iSZM8x5a1dNs9V4LhpFjODRrVWuZfllFrkZpJGFda9y2AvntxZpMjMiYzGUqoBLE+Zq0aOer2v5Hlt7irpHQgWZjrO5nehv61WQDSIyUToNcJF1JA1TtaZD1h/38SfrrRyn2zbDrVPXdXHLM/jatYq8dTAdWXotgqLCkp4gGASEld0LK860so4S0tymMHX14x3sYUmWMsaS2agsV6tm7PPC8DD9jEXDsN16h77ai64b2Hl1bZYzlU+AXc/1WKQpr8ffjs+PfgwnuMqphSf39QU1Trnwg+MVSK+FOgZRd5G9FLagl9uabkK95mYV8Q7NP572UQROqLODPG5VLh5wsW4ioF+NuqdXFC305tXYP+zdkndoy1M76c1pBZ6hYE37DudzTEoQw7DAilM5lW0/HjAVlBsWC6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(346002)(136003)(39860400002)(451199021)(6666004)(478600001)(83380400001)(86362001)(38100700002)(82960400001)(6486002)(6512007)(26005)(6506007)(186003)(41300700001)(8936002)(316002)(5660300002)(2906002)(54906003)(8676002)(66946007)(66556008)(66476007)(4326008)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1k0bFlXY0dFWlhDTFFqK211ODdXMVhYQlkzbTdwKzhPMmU2VDNxdGdENW1T?=
 =?utf-8?B?WmdSVWdMdjBoUUdldjhUMGhwaXdlQmxoYVFnaXJWM3VXRkx3Zlk3MlhMTWl1?=
 =?utf-8?B?d1F1NmluRjBlMEgrcTR4Ym1KNGIwK094VXJvL1VJUnVYOHhQWkx1UGhMYmVB?=
 =?utf-8?B?NTFTckRjVEdaZ0tGQy9jWmZuYWxEemlSb0ppcWFSNWVyM0NNRVNURDk4bklC?=
 =?utf-8?B?VzFDbnNrdzhla2E5b1F3akJWZ0VsSS9iZkttM3g0VkM2Q3hBckY1bUZ5QVRs?=
 =?utf-8?B?YnBvT3llRU5EemxVbFlhU1d3emw5Z3ZNbzFXUWRPUUNSMnFUUEtVb0dCdTZm?=
 =?utf-8?B?ckxtWUZleEs1bDVSenRCS3ZmU0Znb1QvQ1NMV3NPWnI5MnVveWk4cDJjZnhP?=
 =?utf-8?B?SldFMW5PSjJWRnNIRnhsZ24wRVF0eTI3UEJibXp5ZDAyOW96ZDV0NjB6M05R?=
 =?utf-8?B?dCtObm1tU0RzUG5oRXdMVDc3cHlsNlRVNTBKb05KUE96WVdWZndYSnJxbThi?=
 =?utf-8?B?NDZPZHdHUWpyWGt0MEdpK1FrMHBHenZYK253UWdGRWRncUdyU3ZraUpUTE5t?=
 =?utf-8?B?bTRmcTVNR3p1MGh3UDFRNWl1aFVjb2QzM2krWDE5TVAzM1BnT2dOaWk0UEhT?=
 =?utf-8?B?NEdNRlhXQnNscWtNbGd5WHZBenhGMWlVN0o2bTRYSFdWdGo0RkZLMFhBbmsx?=
 =?utf-8?B?a295TlRYZnNTSDVUaWlZVUl5alZGclFEejlkY0U0WGRDTlRINmd1WHozUUJJ?=
 =?utf-8?B?UUVTdUpQSWEvU0tvbWIzQndGeWZEOG80eDNubU9ERTdWb3owNzZxVnpER0FV?=
 =?utf-8?B?eVp2WnZkSVZIQXlPZ1VYWG9qOUZ1MkdFclFzUk5SRk5tRHhJUkowTmFQeFdn?=
 =?utf-8?B?bi8vL0ZFRmFpQlpIMVo2MytvSTJncDQzMVFPMGFnWFp2bEYvb1NHdTQ2bVdQ?=
 =?utf-8?B?cTFzTXMvdzBZTVRUaTFaUkJyaUgwTWZibk9oRnRObTM2MnNCM3BEYzg4YXhy?=
 =?utf-8?B?Qm5zM3p4TitaTkg1OEY0SDh0YUJGZ2RSMTF3Q1JST25lanFOZ2w4UHdxMTNP?=
 =?utf-8?B?Z3FyRUYzWVprLzlCZXRWbDNYS0hWbURubkRlemMrODhmODFrcm1TblhOSHJS?=
 =?utf-8?B?bXRObXJPN2dVZksvNnN5c3N5L0FtVi9hdXN6RjloWjBVenloNWxvRmVDUFh3?=
 =?utf-8?B?em5JV3V5enAvemttYmlCVUFsQmIxcnQrM2R6cmxSS25hUFJ0Mk9rZUFrSGox?=
 =?utf-8?B?RXVBckt5Z0JxZW9neGRYK05MbEg1L0JnRjZVZVZPeTlicUNxY1FXYUxMR1dN?=
 =?utf-8?B?bVRvVnIrVFdlRC9UczAzdFlDeVpWaFN4Sk5oQnE3M3pWQ1c3WWJHVmxCVXRt?=
 =?utf-8?B?alZodFM2VDRUWHV6UW9JZHBHOC9iVm1XNzBVcWdUY215dk1Pd2ROVytKWXIz?=
 =?utf-8?B?K0NaZG55b1B2Nks3RWh2aHMxNmFXUzhZajJuRDB1bEpQaWp4VXp3QlF5R1lE?=
 =?utf-8?B?bTFsNjduOWZQUlRwcWNySkxROGZoRlo1Vk9idndMbFpmY2xYWHF3ZXdwcEVP?=
 =?utf-8?B?cXVzZTFJNy8yOERLMlE5MmdDcVhaVTlmb2RDYjRkRUlJVXEzUHVWcjVmSFMx?=
 =?utf-8?B?eUF1RG4zYzl4QmUyekZTWGZoRnZrb3FWSTB0Y3FGMkFkZVZ4SHdXZEJMRzJl?=
 =?utf-8?B?am5PQnRmU2Q3VUlna2ZQUERDV1pGV0pUZTVLMjBMYTJLbXo5WFlwUGR1MFhS?=
 =?utf-8?B?bVBXcFhUTmVXaHVrNWhjTHhuL3E1a0JsWUxjeVo1SmdyMWhtU0t0SnVUQ3Rk?=
 =?utf-8?B?TnU1V0oxdHcxek5FTzVNaHRLYjBJR2haTzBFZzJkemxxTnBKdW50OGFGRVEr?=
 =?utf-8?B?ZTR5SlZxTEV0dXhLanRudExhczRuakcwajhQYXZJM2RxeHIxdG9pRjQ2UFZQ?=
 =?utf-8?B?QkJ2TjlVeTF6bWtCNDV4WHFjdkFHTzBGa2RRcGx4N01WSUZqMHJqVGRtWWNa?=
 =?utf-8?B?ZXNjWFpaUUYxMVZQYjVicFJJcDRqZCtPMzZiRXFrWkZGaWF6Y1dnUUZUTXJ4?=
 =?utf-8?B?Rzk4YWRjUDlTbWpJVHdKNGpSTkF6VEkzTEhZSmQ4Zy8wQ2xNV0s5RjJxODJG?=
 =?utf-8?B?TUdYV2NId2lwQU9JSHdhUlZlWWdibW9YazNKV3RKOHdwZTVxcjBvVTFGZ0Vi?=
 =?utf-8?Q?ylyDngESOU4l7sz7h3OzrXg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0681bf5b-1d9f-426b-44dd-08db5c7520e8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 16:37:13.8082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WYdtgAMfUnCWybQxJunifDCY+R0lzpFbiJI1dlXZZOef1ZV2vuvhpJnHzGQLy3N3xbOhTBGGM0OT0YiSllosLZt1mVu/ciEZPTLD7SXDE0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Fix frequency and rc6
 counters
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 23, 2023 at 04:24:07PM +0100, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Need to reset aggregated counters before adding to them otherwise numbers
>will grow endlessly.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Fixes: 3dadeff69d4a ("intel_gpu_top: Switch pmu_counter to use aggregated values")
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>---
> tools/intel_gpu_top.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>index 4e49367a70c7..a89f13d46f11 100644
>--- a/tools/intel_gpu_top.c
>+++ b/tools/intel_gpu_top.c
>@@ -710,6 +710,10 @@ static void pmu_sample(struct engines *engines)
> 	engines->ts.prev = engines->ts.cur;
> 	engines->ts.cur = pmu_read_multi(engines->fd, num_val, val);
>
>+	engines->freq_req.val.cur = engines->freq_req.val.prev = 0;
>+	engines->freq_act.val.cur = engines->freq_act.val.prev = 0;
>+	engines->rc6.val.cur = engines->rc6.val.prev = 0;
>+

lgtm,

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh
> 	for (i = 0; i < engines->num_gts; i++) {
> 		update_sample(&engines->freq_req_gt[i], val);
> 		engines->freq_req.val.cur += engines->freq_req_gt[i].val.cur;
>-- 
>2.39.2
>
