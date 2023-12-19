Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A6A818155
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 07:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF6F10E416;
	Tue, 19 Dec 2023 06:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B3E10E3FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 06:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702966065; x=1734502065;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=wRNnKmOIzOM5+Yuot5XeXXqjREq61BZEyAfg49CuElo=;
 b=WpVhuzAuJuGv+5J8oDw9XPUJI0NF5R8154078q9fGwyjPYRXSXEXsqg3
 B95cdEJtSNdl34VGkyzFmfZVt3VRey6vD+PWEVMNU6qi1GUl8OOsGL+eV
 M6K4gafIej/vazLm2EzB89i8d2Kl412JQfeuc9A9TwJlkBUjONqZFZC7U
 jsxOQuDtRt2qi2ZtZqG8gs3odyMTz+6oNGZITUlVd2+h4yr1vwT+iiOL1
 yogYNgkRhdBRXppplD4nAJT7C9U0ZhMlx/zbf5cFNZBL9rRk+JSAZ2n4G
 hfXlXfOD8kNJZze4h4tX/FWDjQKUb/Blmbia3r7s3E9Ri7230zCyKWkmM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="9062181"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="9062181"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="24074791"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 22:07:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 22:07:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 22:07:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 22:07:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 22:07:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ExEjlCHWopzrDdVlcBcApEeLcW4Z8Sa/u0iNwqKhck8e/KwFldFkxLOZeV6+MV/KzRGkhPrhl8UEeEfM3VniJTVYiE/DnyfLTRYS5LvgE2Ce/nEWZgv2Vnaed75delI+2ZfmuZ0i78xjJ8xx1AIsY36s6u5xt1ytHkbfk9banmahoBYzc3HTeKUIG6ovjyr13iNmn1L77x61ZHWy1GYCDz2SFiHjr3eyiLZBiWv4iJAJPyWU5blaoEG9tnOS419oWYfOg8jnDfC6cZUh+izIIrrR6HuK+UiszWYLdvhKt4t72bI7BKfhfZbK7UxjWj8vek66hJqVj8XbsniF6tR/rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E9jaEEHeiEP0+p7E3z6rv6Hfzpn6lAUgIAfsNjXNSMI=;
 b=Gwoyp7jyt7ufI0L3IdMhO+6yWs50Lk6pAGm0qMAWb7VLFn26JTH/jBJeIdIhogha+wwhLMS34hXNs7U/6ee9O012e6zfIgqwzlH9szYAJ43SQFJQ7udLgtigadfN6zgucQuH/VZCEZ8rwqSliwxlVCjPS5G8NVaF2V/xOfZ4ntuvJWfGQGySjqonxKz82kp8jat9h2uPsUSEuZF20Mo1fpOs+bpiNPaWg7SB7sPIunsntrXvNvL/zPeqm+OSOqOpWJhuvZRMqBZd0O5kIZoC68KmC/DWzU7oDvBtSaNorkw8wk49wsd2T/slUQsLatjVqUMymVVPCQDjMPxDyzcfWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA2PR11MB5211.namprd11.prod.outlook.com (2603:10b6:806:fb::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.38; Tue, 19 Dec 2023 06:07:40 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9%7]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 06:07:40 +0000
Date: Mon, 18 Dec 2023 22:07:38 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Subject: Re: [PATCH] drm/i915/perf: Update handling of MMIO triggered reports
Message-ID: <ZYEzKs029n1Xs3Vm@unerlige-ril>
References: <20231219000543.1087706-1-umesh.nerlige.ramappa@intel.com>
 <874jgevjzy.wl-ashutosh.dixit@intel.com>
 <871qbivj2g.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871qbivj2g.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR07CA0013.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::26) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA2PR11MB5211:EE_
X-MS-Office365-Filtering-Correlation-Id: 567d27ec-51c5-4cde-bb43-08dc0058ce9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AJ5JLR6OKBfgLb+JdzpI48CPsY+hq0MwEbFOV/QIQIW40R9B8DDoykJdWnMyZeZlmlISuAf/5cFUGB43bIccXQiyKCJ7wctmUJDze3th5P5piGMfo3LO/O8MNnk0Dcuwm7CO8pJrfB3/rhlsI6FxEdmI7vHpbhrF5zVqafHD2PtRYgGpfeqsm439Cg7HlKxeCxr61bFlByWnk8Fff0GEBR0LGU4jrNE7EZc9Fb5uejgtpQILouCL1Srr+4T8I9mwWpgzzty/QRTDjxHY//pIk/fkz8px+2+jLcYaoPXzpCBlUdIlgogMugHNDoOujwYTaQXBhQfAyUM2D4o6XkaU9rnDG3soZYw7l6HVbBh2dzq/raVD2tx1vS6qN7TQQ0kx/TGPaHjC4vm/u6t4GOanq/718udXAUbPAD4K283B+PoUvGOfSTciUarYOHhzXsniC/o2wS3QC4iYqfgEUfX5xftbucx5EgmMvK2RaVQCHnnVR3wj79CVnlfJM4WPrLJrbWE0Y2egc0wCDpLaWBxOdPLafVEwTEkIyDWYFlQgKnGN7xIm3xmBa44DEK7V6wBt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(26005)(6506007)(8676002)(83380400001)(5660300002)(15650500001)(6512007)(9686003)(8936002)(66556008)(41300700001)(2906002)(33716001)(478600001)(6486002)(4326008)(6862004)(6636002)(66946007)(66476007)(316002)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmlIMUUxVGdrT3FJRDlWZlpQWXJENDhkMTl0aGxJT1E1WUd5dnNycHFDTG5x?=
 =?utf-8?B?VUhROEZtMGNaMVZYNTBHaGlzU1o5YTVod0gvZjBFd2VvV2J3Y2VQUTdZeDM3?=
 =?utf-8?B?aWwralo0ZlBDWUxwb1luSHlPVXhKL3RSdlZSZFlQcU4vTzNIb1J1N210MndI?=
 =?utf-8?B?NjVHWDZFb280MGM2ZmFIdU5RL2VaVm8rbDNUV1BhSzlpK281aGp3aVZFZ2xN?=
 =?utf-8?B?QkFrY2FzUTE3bGQva2o2ckRPUE1wemsySGh5SC8wVEpXTWFBOEhlQkhxSFl0?=
 =?utf-8?B?dzdMcy9YWGl5MnlCMlVJRklBSWRBNk9LUFBiTHo0QXJCenAyRHhDVWc0Y3NQ?=
 =?utf-8?B?WE1ua3lPMWpYMG1wUVlZeEh4V0JIQ2VVNGsxd3QyNmlzMk1XaWNac2VMTmVS?=
 =?utf-8?B?bGxNRHAxWTVHSmJiMU9BWGJMeEU1bnpLOFY0U2Q3MWR2Mm1KblBXVnVyaWlC?=
 =?utf-8?B?WkJzVW0zRG5hazVvWkc2S2twaVlMMXIva1gwUnFxK1ZaZjYvTXA2MzJERThF?=
 =?utf-8?B?YThNdHREOHR0NUt5SjhkM3RLcDMzWndiby9SdEovb3RmNXVWSGpSWUtmRFBH?=
 =?utf-8?B?NmFmMGFZZjFCVkpkU1hnQ2pOdGxrU2J4TlNLbjVDekpPT0cvN0N6bnJzZjY5?=
 =?utf-8?B?QUlETy92WWorb01Ea1ZxTDUrdC9KaENKc2FDVXJlRzFSVlgxVFJUTGYxdnc4?=
 =?utf-8?B?REc2M3NQYnc0YUt5VTUrRHdKSDZMc1Fuci9FZDVxcUFLSkN1MnBNVlBSMXFT?=
 =?utf-8?B?b2M5eGhHVWowMXNYS2tWTkJsQlBWNWNEU3VWd1o2V2dLTDVzS0ttdDh0VzVC?=
 =?utf-8?B?NTdSTkxJVGwzaFpZL2JibzRlYWpYMldZbWEzZVFOSTR2aURtQkJEUk1zVGw2?=
 =?utf-8?B?NzBOMmViY2x4V2Y5Nmhwazd3TjR2cmRlRkdYendUU0EwZkR2cTVtT1p1eXJu?=
 =?utf-8?B?Wk9vOEU0YWZ4bk5FZDZxUmJ6TFJFandPdlY3aVNXNGVUclJXRWd6MnJRbUFL?=
 =?utf-8?B?emZEMDZySldqc1BQWnNYanFaa2g4b3p0ZEIwRURoZWlZTFJWUGtSeElvenNX?=
 =?utf-8?B?Z3oxeTdTRHQ0amhOTjhuS0JWbTYydVM3b2huUG9LVGtFOFFHY3FqQ2ZQQUxC?=
 =?utf-8?B?S3lIc3ZJVmlxNjZvQUpUUDNaeXFqTFhZMmJiQi96QmJFSUFKSlJzSlJCQWtD?=
 =?utf-8?B?STNlMFJ2MEVCMXhPZENkLyszNnZNemVqZEZzRFpHc1JQVTFwb1U0MksvYkR1?=
 =?utf-8?B?ckp0R3BaRnd1clgwWjRwVUt0YSsxbWIvMDBCaWpocUtacHVmVGNJOXY0cWRr?=
 =?utf-8?B?VlJpaFczVUVBSm9PU1dpWGF6TnNnaE9QY0RUb3d2Zkw4Sy9jZkl1QlVuM3Ju?=
 =?utf-8?B?TGFpcWdsTUZjT0VtTDkreEw4Y205YWljeVdCL0t1NkRSbENCYnlOTjVNQ0c1?=
 =?utf-8?B?ZmgydzREelptYVpVZVF6V2Rqd1pITWlmQ3JhOEpRS1VCUDQ5Skh2SjQ0VXJU?=
 =?utf-8?B?UjJTbXgxTDJXb0tqN0VnQlBsbDlZakVMd0ZOQ3BFcnZ6bFNHNU04WXc2YU8r?=
 =?utf-8?B?MnlReEd4ckQzclZUNVF1cklZQkVubTN2UDJXUjg5QkxoMWtBYlZBZExlT2hZ?=
 =?utf-8?B?L3pSUDFQY0JYTnNYTHZEU0xCbDZXUTZsVFRxcVdXRnVvUkx4ZmFYZWdURC9Z?=
 =?utf-8?B?SitvQU1iZDVZdjVyakp2WjFhcFAxZnVCeU5RL1JVTE5nVFV6ZGZSRFJnMEdF?=
 =?utf-8?B?TWFNc0NRdVFXanFBMXpMcDZlS3FyWkFQNVFjdkRMb1FVZGdJY0VkSzhSaVc1?=
 =?utf-8?B?eVFseDErT1dvQkxwT21WVGFzUTBEMDgxQzlRdTJsZUVIeXVaWml6b3pxNFlO?=
 =?utf-8?B?MFVQUHpKcUpIUWhveS9URTREUnJXZFRzNFBaRC9mOFZTeS9YQ3hEZ0kzTUxz?=
 =?utf-8?B?SUhrbnpYc3dMUVJYTUUrRHA2QytNS1QwRjlmMnBkcjJVeTJmSW1YUExBTkIr?=
 =?utf-8?B?ay9NRGZjdTJvVXI3cy94WU1CbUtpR0hMQk9MaWZFRDBCQnRCRGdDZlYwODdJ?=
 =?utf-8?B?aWt1eXMzOHFpa1hNMXZ3ckpScTV0NHJFVUhjQUcwOVEwMktBU1EyczVlRHlD?=
 =?utf-8?B?dDlETzkzZi84dmoxRUIyYU9EU1FkYURZM0RmNlR5UERPL3RQeGVsZGhHWHJH?=
 =?utf-8?Q?KagUDVMRxJ15ttTQQ+lVuLE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 567d27ec-51c5-4cde-bb43-08dc0058ce9c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 06:07:40.4681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tSKo7wfreMjS5Mff+0xylsL8M1yxhcWF6BDO3BCA1rXFHmXxP7Q9/M+tIZq9MFKRW2hbY2MDTYhL9ANPbIvi6ri2ktRpIp6ONBd402+epL4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5211
X-OriginatorOrg: intel.com
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

On Mon, Dec 18, 2023 at 09:48:39PM -0800, Dixit, Ashutosh wrote:
>On Mon, 18 Dec 2023 21:28:33 -0800, Dixit, Ashutosh wrote:
>>
>> On Mon, 18 Dec 2023 16:05:43 -0800, Umesh Nerlige Ramappa wrote:
>> >
>>
>> Hi Umesh,
>>
>> > On XEHP platforms user is not able to find MMIO triggered reports in the
>> > OA buffer since i915 squashes the context ID fields. These context ID
>> > fields hold the MMIO trigger markers.
>> >
>> > Update logic to not squash the context ID fields of MMIO triggered
>> > reports.
>> >
>> > Fixes: cba94bbcff08 ("drm/i915/perf: Determine context valid in OA reports")
>> > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_perf.c | 39 ++++++++++++++++++++++++++++----
>> >  1 file changed, 34 insertions(+), 5 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> > index 7b1c8de2f9cb..2d695818f006 100644
>> > --- a/drivers/gpu/drm/i915/i915_perf.c
>> > +++ b/drivers/gpu/drm/i915/i915_perf.c
>> > @@ -772,10 +772,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>> >		 * The reason field includes flags identifying what
>> >		 * triggered this specific report (mostly timer
>> >		 * triggered or e.g. due to a context switch).
>> > -		 *
>> > -		 * In MMIO triggered reports, some platforms do not set the
>> > -		 * reason bit in this field and it is valid to have a reason
>> > -		 * field of zero.
>> >		 */
>> >		reason = oa_report_reason(stream, report);
>> >		ctx_id = oa_context_id(stream, report32);
>> > @@ -787,8 +783,41 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>> >		 *
>> >		 * Note: that we don't clear the valid_ctx_bit so userspace can
>> >		 * understand that the ID has been squashed by the kernel.
>> > +		 *
>> > +		 * Update:
>> > +		 *
>> > +		 * On XEHP platforms the behavior of context id valid bit has
>> > +		 * changed compared to prior platforms. To describe this, we
>> > +		 * define a few terms:
>> > +		 *
>> > +		 * context-switch-report: This is a report with the reason type
>> > +		 * being context-switch. It is generated when a context switches
>> > +		 * out.
>> > +		 *
>> > +		 * context-valid-bit: A bit that is set in the report ID field
>> > +		 * to indicate that a valid context has been loaded.
>> > +		 *
>> > +		 * gpu-idle: A condition characterized by a
>> > +		 * context-switch-report with context-valid-bit set to 0.
>> > +		 *
>> > +		 * On prior platforms, context-id-valid bit is set to 0 only
>> > +		 * when GPU goes idle. In all other reports, it is set to 1.
>> > +		 *
>> > +		 * On XEHP platforms, context-valid-bit is set to 1 in a context
>> > +		 * switch report if a new context switched in. For all other
>> > +		 * reports it is set to 0.
>> > +		 *
>> > +		 * This change in behavior causes an issue with MMIO triggered
>> > +		 * reports. MMIO triggered reports have the markers in the
>> > +		 * context ID field and the context-valid-bit is 0. The logic
>> > +		 * below to squash the context ID would render the report
>> > +		 * useless since the user will not be able to find it in the OA
>> > +		 * buffer. Since MMIO triggered reports exist only on XEHP,
>> > +		 * we should avoid squashing these for XEHP platforms.
>>
>> Hmm I am wondering if this is over-information and this comment should be
>> made brief.
>
>Let me try: "For Gen's >= 12.50, the context id valid bit is reset when a
>context switches out, but the context id is still valid. Because of this we
>cannot squash the context id in this case".
>
>So this should affect both the regular as well as MMIO triggered cases
>afaiu.
>
>Anyway, please do what you think is right with the comment. I just thought
>I'll chime in.

The long and descriptive comment is entirely for my benefit. There is a 
very good chance I will forget this, so putting it down in the code.  
Also, I don't see this described in the spec, so thinking that we will 
benefit from it by having it here. I can put it in the commit msg 
instead if that helps.

Thanks,
Umesh

>
>> For the record, here's the explanation of what is happening from Robert
>> Krzemien's email (which at least makes it simpler for me to understand
>> what is happening):
>>
>>	For Gen12HP+ (ATS/DG2/PVC/MTL+) platforms, context id valid bit is
>>	set only for context switch reports and when a context is being
>>	loaded. When exiting a context, a context switch report is
>>	generated, ctx id is not zero, but the bit is not set. It allows us
>>	to distinguish whether context switch reports are generated due to
>>	entering or exiting GPU contexts. Ctx id field is non-zero for
>>	context switches and mmio triggers. Other types always have ctx id
>>	set to 0.
>>
>>	For previous platforms (like Gen12LP, Gen9/11), the bit is set for
>>	all types of reports if a context is loaded. But those older
>>	platforms don’t have mmio triggers. Ctx id field is non-zero for
>>	all types of reports if a context is loaded.
>>
>>	I don’t understand why i915 needs to set ctx id to 0xffffffff if
>>	the flag is not set. It has been removed from XE KMD as I remember
>>	correctly.
>>
>> >		 */
>> > -		if (oa_report_ctx_invalid(stream, report)) {
>> > +
>> > +		if (oa_report_ctx_invalid(stream, report) &&
>> > +		    GRAPHICS_VER_FULL(stream->engine->i915) < IP_VER(12, 50)) {
>> >			ctx_id = INVALID_CTX_ID;
>> >			oa_context_id_squash(stream, report32);
>> >		}
>>
>> So I am assuming there's some unknown reason (maybe not hearing from Mesa?)
>> why we can't get rid of the squashing even for legacy platforms. But that's
>> ok I guess. So this is:
>>
>> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
