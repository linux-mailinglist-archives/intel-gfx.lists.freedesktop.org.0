Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C845AF520
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB59310E236;
	Tue,  6 Sep 2022 19:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C77B10EA6A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662494241; x=1694030241;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tFvhJhSi6kuB3P5eF/40H56nlctTDBUE40ujvQtK5MY=;
 b=JN2Fbn74h2erKwkj2SE/tfmTkm7YfTU+ii21/lvZRp1+TCel4rc3JOJZ
 sId/cqu7FHENfKa9nF8ofajTE4MPzv0XUbwaMyUj6KTj0TxM1GIXJDy0Q
 sqDS0/oSMBFZ9TWBZ5/UJ5LzwPi73Dh/Pz8saH3sRNn47TPFOwFzK1Y+H
 pplhBq2FTkx9S1YwZxWf3SbkRw4MKOnX7+Jyzmitqz6IUGd8Hj1FI3eqA
 b3FGZEoqHAE8+hiWv240rNyvRxQdde8VxS1T26UNYr7CGZ44gZNeB9oti
 EFx945N2UPoxW3ECC6eFAoJJW34BbdL5dlPYnNEM+Fa9WZiOeSOrOWhq7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297475614"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297475614"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:57:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="859376425"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2022 12:57:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:57:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:57:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:57:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:56:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VH9FzTtQ+qy3EQaBdGeUVZmmDosVBcFfmhRho1HqZIUdDAdZHFQTxPnkpG+QsLVTCGDVFhH+0ETQh2IAzlPVevJrZ12b5rfPBkA3SjF5f8xucMZvg44Z7fZEwQb+A5OmhCqkqDgmsOjgHUqtgS4duymIax3A3WiEqSqTIRbc+qe+P9P0GM+Z1LMhRBdSXCoMaGPjmSjpZnREX7sT6AZitqyMeT7klGOSLTn0OWNFimvu6hDdozZ+zA8ocEMhnhxqejgrxoRrcrHe5Tqn/e+MN2KDPm4bRBo6Wz3v450rz4E9CCJn/TELiEhbV2LtOctn5yQfTpP+NCWsahQkYhXNVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1QyowEGwTynTkdfpfRxBpwKpmD8R3kyjU4M9j5UckyQ=;
 b=goXxCTyKvOC+zD11BJT/tmKP7bBTmxaCKBvsCb8j24L4gfishepVvznM5xJgDVrABg+XjIg4mZ+TqBg34AJfqC97jWOwMWgifjp5XnGa28hKT4CY1N7pm5tx+rDAYoteEh6iM9fer/2NM8uzmCBhJkhdv1ZCg2xXKIXIKkPshz1+Nb4/8YivMOXKrWJen5/Wnirwgr5buzPfpZNhW76eNcdnvu+VTQ1LDeMrJf7rMlJbCFWhmR1jQR1ZU1u2xVvDhr+g+0AaRBdoRX6awPMCA70e4Are1dqAlGOrsZtkJKom/H711YiFsw2t/OmAgcbAEe3r/oyw8oiV6MkuFucZ+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BN0PR11MB5741.namprd11.prod.outlook.com (2603:10b6:408:161::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 19:56:42 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:56:42 +0000
Message-ID: <4130d4bc-af09-21aa-e60b-73b0f5f18515@intel.com>
Date: Tue, 6 Sep 2022 22:56:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-12-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-12-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0405.eurprd06.prod.outlook.com
 (2603:10a6:20b:461::35) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2bd4f94b-09d9-46e6-9def-08da9041eb55
X-MS-TrafficTypeDiagnostic: BN0PR11MB5741:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e/97qcCY0hppVeW/pd6sHuDUDVQASMRc+VPvctC/xBuJ9kgsLwTaCni4rti6Ya1KoHcpEXHjOQyGO7lUUNrVhDWZOpAvTOFSVaJgeYB/xVyXp3ghvnmqyBEfGb1YDDFqzoqu1XcbAPsdH0a3DdwJH5zCC3CJap2q+wX66ZkoJH1SCnim542zUvKx+fIjfEFiy+PKc1Iuz84qd1SWZig48R7zbZUkeImvLdKYwC3jWooWPxksWFoMGdfHOfVM8m7m4+NXMQ2y2JwuT2y2KzKdPpiLfg+Fl6TpHJci4/ghQwMFWflK45t2tMzD2IEJzII5zJ/TL40xTUF/g6C9TBUAtyrgEUTnYnyL2rDyQz710BclYuq+NHGv/iH5OsS2JRSWfjAHCXUo56yv0JyfXKnWhA5CcnPdWKPjsQkOEg1Z/3Nipu+SAGeqIDqjV/3mxEU8ckt1N2Zh02J6QyGz4VQpkx1MjKAWCtd2Pp1vORIY7ag+wUag0otRAH5eiBA9ZJrl6l+u97rlWhiG4CmA047DKO9JbvMnuOP/OheU4Z9lk26zPev60mpgWy+NR5xqDbVQizIzQU0R6ZWxt+FbBG2wvWWHGoGkX5PtnnpFAGDfsnm5N1wD+553Ox/a6YVeEyQdY6anZfVAoRfiz+9U5euqJcmJkjk0j1h79bUm6HldhWGzomN5fNW3HWzg2i4WwFNJEN2hVCTUyTpJYDy1jQ0UGpbo4JBXKueZ8B2pD9F7qHvLGdVTaWCkoDR56fvPIZK+CBaDvSRAUsupO+aNEsQW9w00kbHleGw1iAYBTAP2zoU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(39860400002)(136003)(376002)(396003)(41300700001)(6512007)(6506007)(26005)(2616005)(6666004)(53546011)(107886003)(186003)(4326008)(66476007)(8936002)(2906002)(66946007)(5660300002)(83380400001)(66556008)(8676002)(86362001)(6486002)(316002)(478600001)(31696002)(31686004)(36756003)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1RpblBHN0dLU2NhSTVOQ0NvTndMUVdJTXk5YmZTY244aUlwQ0ZScjlUMW9y?=
 =?utf-8?B?YnVtM0FldkYrZWxzNWhZYStaRTdNTFAwYW83ZHNXUkNSWDFQMnFBSHBMSkkx?=
 =?utf-8?B?d1Fkcit6YTF4WWwybzZKUFNRSk1QVGVWeTUwVW03Y2t3OGRhMVZvWHBGVSsy?=
 =?utf-8?B?UWQ4MnoreTRxOWFQY2NLOHhQMFNsUUFwLzVqRTRySXFhblZ6RGRPb2U4bTFu?=
 =?utf-8?B?am4xNk9KZFNvaEN6NU9IOTJ5QWU4VGI1d1I5VWRiLzMwV3lJbEFKY2VBSGJw?=
 =?utf-8?B?R0ZOamJ1ZkRUZUFCQzZHc3NEcWJRVExKek14L2gxRVpqNHBjelVwMEFkYmtN?=
 =?utf-8?B?dG93Wi9nVllLL1pvaTlacjRhUmphblpEdlpYS216Um5PVGpUam5HdnBPYWI4?=
 =?utf-8?B?SzlXUlpkUE1TcStaRit1Y1RyQktESGpoR1ZONXdBaFlrdXJnVTZ4MHJuY2V1?=
 =?utf-8?B?M09rSG1iQmliZjlQcEdKTTd5VnNGVEZjVFZEVzlaTU0vSUZDSmw3bXZFVmEv?=
 =?utf-8?B?K0MvQjhDN0ZPMVNWR1E2ZHVCS3Jrb2ZZNFE4YmZ3VGhBZ3NJUGdQNldFQlJs?=
 =?utf-8?B?S1hFdWQxTVdoaE5ldW12Vk1PN0VOc3QzMENuTXVtQWhqdE5CMXNjS21uY0FC?=
 =?utf-8?B?L0JVMVdrVGFkOG5WQjh2M2YxN2ovdWxDUlhhK3FQU2dlUE9QaFBqaW5ITWh1?=
 =?utf-8?B?Nkpua3Y3eXZ6QWV2N0YxaCtuanZBUUdKYzQ5Q21rWVNQYXRKak4vZDZvZEpY?=
 =?utf-8?B?NThXRmhGemNNeHFyT0YrekxkL0phekpRT2l2NUI2b2gwY3dOZEZzTkRnYzR2?=
 =?utf-8?B?NUZqSUVBRFdVUjNwbXpUcG9QK3lRNFFJbUt6TGpncUhGc1lISkN5NXVYeVcw?=
 =?utf-8?B?QVpFZDArbEtObXBhQ0pCK1ozNlpxL2RMQ1ErelZLQkZLRUViRUNka1daNHVy?=
 =?utf-8?B?dytycnBObjBBSXZ0aTk3U1JHcTZORy9UZmh2cTcwdzYzN29Mai95b1hsbkYw?=
 =?utf-8?B?UXhDZnJvY1RsS0lrbHllOUkya1VCaHdhdW9Xb01zMjE1NXlVb2JqcHV0dC82?=
 =?utf-8?B?dGZXYTF4YTcyWnllcUZTV3M3OUFuWm1Xc21Kc29yUE1RQTV4Mmp6UnBPaEY4?=
 =?utf-8?B?S2wzTS9BaklJL1dXbUYrV0sza3F6VXE2TmZYamw5Vm9odVdEMFdON0VyYTlV?=
 =?utf-8?B?ajY3aTdDeTR4TCt2S2VBOVdmNENNTnBkRE1TRkFJMjRuQ2UxVG1TbDBRQWor?=
 =?utf-8?B?YkQvb2ZVdy9DVmN5MENjRmQ1d3RLVFd6S2J1WFVMWTlIR1hsNTdQcmVlSTZ5?=
 =?utf-8?B?UzhZNHdoRitZUm5nMHFSZk43NkdOdktLcFJTQXFHZDBLdHhTKzdSdVZuTWZu?=
 =?utf-8?B?NlNiaXdabDlnY2RkOHRoTVZqV3pta0pnZWYyVXZRN2pTQ29KTzdDZ1FpeTlo?=
 =?utf-8?B?UHkzT0ZsQytYamQzTFhSa0tvcklJNVZLSk9kYjRpUWdlUG9QOCsyRnFQWEJ0?=
 =?utf-8?B?WVNxT2VMOEZWRFg2WmZwZHhNZkNoWTdjVXhRa1A5NWE4WG81L0IvaDJuN3B0?=
 =?utf-8?B?MkFUTDM4STA2RHFxdllDZHFIVytvK01aS05rY0FCRU5VbVRyRU1KQ2N3TW1E?=
 =?utf-8?B?Tk5rVmJqU0l5OWYwTEdQVHR5QzZaRTZja1JxVWE5Qlppbmxsb1d1SThCa3Vm?=
 =?utf-8?B?NDBQQ3pZNXJ4SGN4bTVOTFF5V2Y0ZEdISGFQZG5pZVBjNWRVeXE0R3VJQThQ?=
 =?utf-8?B?R3hvekpoYmRsQWRRdzltNXRBeUJsNFBreUJqSGRlQTJaUTc3YVJ6S0dQOUc3?=
 =?utf-8?B?TjJ0ZXM5UlJXNG0rYmd5N09lVCtYcGpwM0dhd2hsVXRteEc4eVhrWmNPQjJL?=
 =?utf-8?B?bDJtMXVLYnhtczNTeVF0ajA1Z21sbHJOOVV5ODc5T1NoNWc5V0dlYUNNQ0k0?=
 =?utf-8?B?TXJOZWpBVWRiQ1UwaG5EeENwbTFCOGpTMjN3Q2wyRTdEUUxLcUhOTG1lMFhT?=
 =?utf-8?B?U0ptQ1M1WHJkcGZDMjcrRE9uQXplNmlSSHh5amxsc0UvMTNSdDMzY1dqemho?=
 =?utf-8?B?dDMvbmpyU2djcVF3Z2xvZjJRNDhYL3NrUEU3azFVV2V2SVRDSlRhOHhwek5x?=
 =?utf-8?B?dklpdU9zOVJiV3kzdVJ3ekZKTHFkTkR5d0J4aG01TjV5QWE0RTRtS0dRVnFx?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd4f94b-09d9-46e6-9def-08da9041eb55
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:56:42.4377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7RL+TXVHswO/R317QTFJDVz0rCFPOfwzL9DjNUDBygiQyJupk48/c5C7SW3nzY319NKk+W+MvfDYYfmFwCmDMzut71nsQAhMnUypg6/Aldk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/19] drm/i915/perf: Store a pointer to
 oa_format in oa_buffer
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> DG2 introduces OA reports with 64 bit report header fields. Perf OA
> would need more information about the OA format in order to process such
> reports. Store all OA format info in oa_buffer instead of just the size
> and format-id.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c       | 23 ++++++++++-------------
>   drivers/gpu/drm/i915/i915_perf_types.h |  3 +--
>   2 files changed, 11 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index f7621b45966c..9e455bd3bce5 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -483,7 +483,7 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
>   static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   {
>   	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
> -	int report_size = stream->oa_buffer.format_size;
> +	int report_size = stream->oa_buffer.format->size;
>   	unsigned long flags;
>   	bool pollin;
>   	u32 hw_tail;
> @@ -630,7 +630,7 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>   			    size_t *offset,
>   			    const u8 *report)
>   {
> -	int report_size = stream->oa_buffer.format_size;
> +	int report_size = stream->oa_buffer.format->size;
>   	struct drm_i915_perf_record_header header;
>   	int report_size_partial;
>   	u8 *oa_buf_end;
> @@ -694,7 +694,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>   				  size_t *offset)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
> -	int report_size = stream->oa_buffer.format_size;
> +	int report_size = stream->oa_buffer.format->size;
>   	u8 *oa_buf_base = stream->oa_buffer.vaddr;
>   	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>   	size_t start_offset = *offset;
> @@ -970,7 +970,7 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
>   				  size_t *offset)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
> -	int report_size = stream->oa_buffer.format_size;
> +	int report_size = stream->oa_buffer.format->size;
>   	u8 *oa_buf_base = stream->oa_buffer.vaddr;
>   	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>   	u32 mask = (OA_BUFFER_SIZE - 1);
> @@ -2517,7 +2517,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>   {
>   	int err;
>   	struct intel_context *ce = stream->pinned_ctx;
> -	u32 format = stream->oa_buffer.format;
> +	u32 format = stream->oa_buffer.format->format;
>   	u32 offset = stream->perf->ctx_oactxctrl_offset;
>   	struct flex regs_context[] = {
>   		{
> @@ -2890,7 +2890,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
>   	u32 ctx_id = stream->specific_ctx_id;
>   	bool periodic = stream->periodic;
>   	u32 period_exponent = stream->period_exponent;
> -	u32 report_format = stream->oa_buffer.format;
> +	u32 report_format = stream->oa_buffer.format->format;
>   
>   	/*
>   	 * Reset buf pointers so we don't forward reports from before now.
> @@ -2916,7 +2916,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
>   static void gen8_oa_enable(struct i915_perf_stream *stream)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
> -	u32 report_format = stream->oa_buffer.format;
> +	u32 report_format = stream->oa_buffer.format->format;
>   
>   	/*
>   	 * Reset buf pointers so we don't forward reports from before now.
> @@ -2942,7 +2942,7 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
>   static void gen12_oa_enable(struct i915_perf_stream *stream)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
> -	u32 report_format = stream->oa_buffer.format;
> +	u32 report_format = stream->oa_buffer.format->format;
>   
>   	/*
>   	 * If we don't want OA reports from the OA buffer, then we don't even
> @@ -3184,15 +3184,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	stream->sample_flags = props->sample_flags;
>   	stream->sample_size += format_size;
>   
> -	stream->oa_buffer.format_size = format_size;
> -	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format_size == 0))
> +	stream->oa_buffer.format = &perf->oa_formats[props->oa_format];
> +	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format->size == 0))
>   		return -EINVAL;
>   
>   	stream->hold_preemption = props->hold_preemption;
>   
> -	stream->oa_buffer.format =
> -		perf->oa_formats[props->oa_format].format;
> -
>   	stream->periodic = props->oa_periodic;
>   	if (stream->periodic)
>   		stream->period_exponent = props->oa_period_exponent;
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index dc9bfd8086cf..e0c96b44eda8 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -250,11 +250,10 @@ struct i915_perf_stream {
>   	 * @oa_buffer: State of the OA buffer.
>   	 */
>   	struct {
> +		const struct i915_oa_format *format;
>   		struct i915_vma *vma;
>   		u8 *vaddr;
>   		u32 last_ctx_id;
> -		int format;
> -		int format_size;
>   		int size_exponent;
>   
>   		/**


