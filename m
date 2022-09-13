Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952C95B64A2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 02:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2CF10E0B9;
	Tue, 13 Sep 2022 00:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A1410E0B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 00:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663030032; x=1694566032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BevyGTqLrZuFDzjJNfUGjcuhaX8Vm9wI3Zv/9h4Uiko=;
 b=fLxSd1+IE5M0qnPse2AD+sAPA7TybBqkNJswPaSjT9weGYerV7RDw+oT
 NuB/e7MI3v42moOwe4IO1v8jGCBowcGOzqbhm97Kf0vU2leuCP5RE1+7U
 kkBeR9/25aQDAaw6YEbIqJTN6/qfxrzPZ+U45zBGZC1r9NunojzPAxfyT
 1akZLHg6/Wkwmm6hfvtIkcBjwh/a8fvMBbV2ALOTo7YOqvHqiRxc/SXUZ
 pw4ewv7TbQ/GGMTEh1+2CWKallyylLLcojAx8P1Mgg/7PpCtkbHckf+q5
 E4Ks9n2EKzA1Ca9ZsjggZjH2z7HVK0di4UmZswZCBc6lU+7fem8aDF1ID w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324245302"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="324245302"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 17:47:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="758591153"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2022 17:47:12 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 17:47:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 17:47:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 17:47:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HvyQENYdtpVfRusDGQuiMUtqWFBOSXvW4DsUHSU7Z1nOu+bGscFkAOQt4MBiMZT4cn3ahFpyX/VjCq5W7xgP8n7jjSEaWBXaUE4V+Y7Otb0TNg8/oPspyxNogNfFsDIfw/w+Urim3kmSf1a/AbRpd5dlwQEbwEEmk9DDcZgTXNO74EYII5vz1Aza4YSIAIOvBEIywn0k4mDoOec+anx7YD+8K6RNeepdfHjsJtKQP4PmEyUJK/R81EKrSZGFQcjGmD1TCmhtqEA/XCrkIAU6zOcRTS28NJKFdlSGUYKH1i0AtQ4Yd6e71mCRbBMMi5EGTDnR3pJoB4swFlItgF4qDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YoXaj5XQXZSiwTAodFiQWwBDl3X9nfIgmj70sa4mgGU=;
 b=RGKngw+f16TQDQ8/1W7VH38ajxkSoPMg2FOChKGzhasmW1U7J3efbFPgAJwgoXEJdxYPPmSncXcSms57hVQ3MHUDj9Fco001febkxpHeiOqLLLvI4q97PNu6kacJ2nNIEUBa5DJG2Lzi7OLBKTJZxS9wF6+41RfQHEge8zukJ4uf6wjqVF7OHQzrmLuCzOVpGI/z+4aZlTDVg3vFSOJ6bLhC8KdSfER5CN+IFisXGGgpHFLpV7wY+owSCpCLgLz4WvEUoZ4zXVtBxgXjmhaZTut4BzgDpXwA6n5QyWw6CgA8CkwBhTwWqKrPzblFR8Iz5IuG6ERzv9nKEftbhCQBAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM4PR11MB6429.namprd11.prod.outlook.com (2603:10b6:8:b5::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Tue, 13 Sep 2022 00:47:09 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%9]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 00:47:09 +0000
Message-ID: <adce120b-a78a-259d-3684-73bffa3b0ab3@intel.com>
Date: Mon, 12 Sep 2022 17:47:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220906230147.479945-1-daniele.ceraolospurio@intel.com>
 <20220913002329.ia4m33z5sqnds2ll@ldmartin-desk2.jf.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220913002329.ia4m33z5sqnds2ll@ldmartin-desk2.jf.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:217::10) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|DM4PR11MB6429:EE_
X-MS-Office365-Filtering-Correlation-Id: 26912ecc-947b-4ffd-e478-08da95217d1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cfsuGimsYOIp73aBKWlmE5cRXRnPEE88EsG7g/s1QBZR1lWJC8ghTmBJe+WQYccjyW1eivZmlkdZozoFreAeuGt0H+yzuM8RGsnz3NNMKOLOydw7uoSLJAbljqclkwzK3x+MLcPuET+wKSyUUbUdltgy8osvXsDw/r9jIcR4OXKvWqOVQ8Bjj7I3RulEmJ8W6py7gyugnVVWhYqq8fxE1fnXHLCBPCN7GwVeHm4INpdUobVe3C2/M74LnOlRMUhUrI/ObiDVmox/3tFUybN2WTR/9XXG6TqPsBdTdtHYuTpBNZdXGlTG8LZ6lirL7T9qdnZ5PECsWR3wEI6od6leq1SXNLziUHz7wgGPNVBhk7FmMSnozx6amr8WtTe2i9BbodubyCjFOE0CHB/qmYAvZHcQ6uoZR02q10KrcUfDRk1EO9Hx/VU+QSR7xtMaUeiuVAd019Vfs2dGJVsJLBP4QsdmGM6obdE2cTRK13lMefvul6onpBCNzaIueeQqg03j9bUzqt7ea0WsDYJ/Aeygq9cVEmsRpnyF35BZydfAYddMW9Lqvbm3WAy+8N7Qa+OFn9fj7slOoNsLibhNQ/Ch0Vj+PNRLqnJZtEvt3YrmgwbFHYcreL7r/Ll1n2cMEwUvBS/sVHl/Y4gzLqV/MqY+gGM127UyBhwo3hvf0UAg+f+8Q+c2WsYbyzGEz+A2vgB18Nx7TpH3/IEdI1aTzTwqccYYu2+euaELPQmvoNMi8OzwFBMsgnnoyDgW4sbJTS4KIM+XUzig7Td1VzI/gw/il/UeUkz+Vmb9qSuSOrOjZpc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(136003)(366004)(39860400002)(376002)(451199015)(6666004)(2906002)(478600001)(26005)(6512007)(8676002)(6506007)(316002)(5660300002)(4326008)(6636002)(83380400001)(31686004)(53546011)(31696002)(36756003)(86362001)(37006003)(66476007)(66556008)(6862004)(8936002)(82960400001)(41300700001)(107886003)(186003)(2616005)(66946007)(38100700002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVloKzFSZ2JWbVEyVXg4YWFqRmJPTU01S1lvTWFITlFTR3BWbkp0aG1tWThh?=
 =?utf-8?B?THhyV1h4bjRBdlRudnpBQnlYbGlsb2NIMjQvZVcwYm1YY1h1bmxqc0xKZzVJ?=
 =?utf-8?B?M0w2YWhyTkVRWWpwUk1FRHhTdEFCQkpKT2lld1Y0NGM4K3Qxd3MwdWh4Qzhx?=
 =?utf-8?B?ZTJsNlNSdkdZYUtHQWtSMkhxeXZlR2ZuSFR1ZGd6Rmp1SUtBVi92d0RFYW04?=
 =?utf-8?B?dTF0bmVlQWJ0d3hTTUgxUXN2aDR1QXVySVpGQjBwTGk3VmRQNHErWDBQUVNo?=
 =?utf-8?B?bHFycC80R1JOa3lvUVZnWVQ4UVp6VFRHTE9ycytWQm8rTmJKSFV0b0pxOXNY?=
 =?utf-8?B?QmVIOXFTK1N5QzRtV25YbjRIWWVKL1R5ajVaOHRwbWhmRUJ4SUVVOElJRGI0?=
 =?utf-8?B?UExoSkVLcDdoWFFuc2RnTk9RNEpHQWhlRTl2MnBVclU5ZitnRFE3SWhuTDZ4?=
 =?utf-8?B?bTJCaTJvQW8xK1M3MkgrOUpZa3R5Nmp2TTFGNzh2Yk9FUENqUTZCQXg4dFBV?=
 =?utf-8?B?S0tKRVZhTVRYdTMvaDFKUCsxRlllK0YyYmJQNldOejN2Z01EZnNjd0hVNFdN?=
 =?utf-8?B?RmU5VDFyS0VabjIzMEFVSENZbU42aHc0NHVxOENLRVpBeFRueTlmbHRmbjVC?=
 =?utf-8?B?cXkwUWd6OHBQL1dRMkRpbUtXZG84c2VhUmI1OHBwZnN1RkNMQ2FKZ0Vwd1BL?=
 =?utf-8?B?NnBwRGJiRSt6eDEwZU03OTFPSzUxNndKendCdTAwcEdnMjRjNUxrbEYyMkFu?=
 =?utf-8?B?b0tCd2hSV2RBVzFwUmZwVXZ6bGVGZ05ocHBkZjZsRTdDaFBlSUJoakxMVElJ?=
 =?utf-8?B?K0pzSW0vMzIxekVzcTRsTmtleU13SEoxdk5VcFV4V3pSd2xScDk0SDhnZkpS?=
 =?utf-8?B?Y2FQdkdLbmFnUUxtTVlaUXVWV0lvLzJHalJrdmJnbFhMT0daZ3RVQWRqZkZR?=
 =?utf-8?B?ZTQyazdXNkRZM0UzaFc1N09DaGlyb1dXMmt0cDVEWUhFYU1OZlk0M3NuUGlI?=
 =?utf-8?B?cWtoanJudWwyQ2xma1J3L2hodkRLdjNSNnpqMjExeFF2YStPd2hGcENCVnY3?=
 =?utf-8?B?eGVFU1J3VlI5M1RIdXd0V2d0ZndTbkRCNGZRRFZDMXpkNW11Y1YwTDlmSXNS?=
 =?utf-8?B?WXpuSjVwZDhWU09rWlphVnlJU0llclJDeUt4cCtLUE8yZU9SNjR6SWlJOVpL?=
 =?utf-8?B?c2drMXFlTXM2WDhsanN5aHA3eU1BZ2ZPL2V1ZVhPTG9yWm52UzhFNVZYSDhU?=
 =?utf-8?B?bEJvcEdORWJvZHAxZVNOSDRyZGROaE9NNUZzWTErTm1KaU1jbTBLSkw3Z090?=
 =?utf-8?B?OCtXaEsyb2E4SnJ4bllSc2tNZ3Jicm5jdk8wOU85MVFZQ21lSGFhdXJ2cjR2?=
 =?utf-8?B?VFVIS3JoQUFPcVByd05zQU8rb3FMZi80a2EvcjJsNysxem81MjVJVnhzZkQv?=
 =?utf-8?B?S25LeWM5UG11cWFRN1J1cERiRmY0eEtlODJ3Z3VIbVBCL1Z5dzZWU3JFVm15?=
 =?utf-8?B?Y3VxN1c3cVUyLzhPZjVTcTBoa0NSaWI4NWFiTEJlQ2crWGVqSzgxN2llVEM1?=
 =?utf-8?B?WWh6cnJaZUZvMzhGVEFTY05OS2l6eVA1ekNpVG93cXFwU2ljOUJlOFpnR3ZO?=
 =?utf-8?B?emFFYmJWWnFIaGNpSnpyamk2bm9VRU5Da3dWKzBRVW16cnZQZDFEK0REOHYz?=
 =?utf-8?B?RmN0dlJZVjdIRWlWS01Odzl3Rng1cThGMFUzcm9XMXRISmFObWZ4WGJrY1VU?=
 =?utf-8?B?UmZyU2F6cG9RYnpqUFBFNDhYTWZ0QlYvamRqK1VsVFFSQmU0cUpUZVFhTUpl?=
 =?utf-8?B?OWtiMTNoWjNzNzlmU3p4cUxaazRFV1hpVnMrWG04RU41RVJtTmdFRDA1VU5Q?=
 =?utf-8?B?Mmt2d3BibkdIOWRBaEFoZWFLUFZBTjBmV1pRWVZGRnlHRjJWdmw5S3lHQnJU?=
 =?utf-8?B?dytseEdtejhUOGpPa2YvZ3pnSDUzaE9PQVJ5VTVNYUJpNEZXRVVUSTFhem9V?=
 =?utf-8?B?OGVQSStCWG5JSWYyazlGNFVHN2lUQytZLzdnZUt1N0tKMlNKL29sdy8xY1Ey?=
 =?utf-8?B?NWdaeGtDbC9BVnplck44NDVHMDhrTUQzSVZYTU5UQzcwWE5QWkE1YkFaUnI5?=
 =?utf-8?B?NmZXT1czRTVMNWZYZ3BwbWd2WU5FNlFrbXpvMkFVMHFacnJ5MmZacnFubTlj?=
 =?utf-8?Q?AMGwN9Tcc9e5n9B3eponSOc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26912ecc-947b-4ffd-e478-08da95217d1a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 00:47:09.3751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U19k8P+Yt/ybp2I9aCEcny5/Uex8GJ0svNgKp6BpB/uSwh69yMvEHSOzkx4rTJK3qXtN4yw85/yk3+kQGLHy1t9iExVK8lBa5M9YF2ybpj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6429
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/uc: Support for version reduced
 and multiple firmware files
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



On 9/12/2022 5:23 PM, Lucas De Marchi wrote:
> On Tue, Sep 06, 2022 at 04:01:46PM -0700, Daniele Ceraolo Spurio wrote:
>> @@ -184,49 +247,94 @@ __uc_fw_auto_select(struct drm_i915_private 
>> *i915, struct intel_uc_fw *uc_fw)
>>     fw_count = blobs_all[uc_fw->type].count;
>>
>>     for (i = 0; i < fw_count && p <= fw_blobs[i].p; i++) {
>> -        if (p == fw_blobs[i].p && rev >= fw_blobs[i].rev) {
>> -            const struct uc_fw_blob *blob = &fw_blobs[i].blob;
>> -            uc_fw->path = blob->path;
>> -            uc_fw->wanted_path = blob->path;
>> -            uc_fw->major_ver_wanted = blob->major;
>> -            uc_fw->minor_ver_wanted = blob->minor;
>> -            break;
>> -        }
>> -    }
>> +        const struct uc_fw_blob *blob = &fw_blobs[i].blob;
>>
>> -    if (uc_fw->type == INTEL_UC_FW_TYPE_GUC) {
>> -        const struct uc_fw_platform_requirement *blobs = 
>> blobs_guc_fallback;
>> -        u32 count = ARRAY_SIZE(blobs_guc_fallback);
>> +        if (p != fw_blobs[i].p)
>> +            continue;
>>
>> -        for (i = 0; i < count && p <= blobs[i].p; i++) {
>> -            if (p == blobs[i].p && rev >= blobs[i].rev) {
>> -                const struct uc_fw_blob *blob = &blobs[i].blob;
>> +        if (rev < fw_blobs[i].rev)
>> +            continue;
>>
>> -                uc_fw->fallback.path = blob->path;
>> -                uc_fw->fallback.major_ver = blob->major;
>> -                uc_fw->fallback.minor_ver = blob->minor;
>> -                break;
>> -            }
>> +        if (uc_fw->file_selected.path) {
>> +            if (uc_fw->file_selected.path == blob->path)
>> +                uc_fw->file_selected.path = NULL;
>> +
>> +            continue;
>>         }
>> +
>> +        uc_fw->file_selected.path = blob->path;
>> +        uc_fw->file_wanted.path = blob->path;
>> +        uc_fw->file_wanted.major_ver = blob->major;
>> +        uc_fw->file_wanted.minor_ver = blob->minor;
>> +        break;
>>     }
>>
>>     /* make sure the list is ordered as expected */
>> -    if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST)) {
>> +    if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST) && !verified) {
>> +        verified = true;
>> +
>>         for (i = 1; i < fw_count; i++) {
>> +            /* Next platform is good: */
>>             if (fw_blobs[i].p < fw_blobs[i - 1].p)
>>                 continue;
>>
>> +            /* Next platform revision is good: */
>>             if (fw_blobs[i].p == fw_blobs[i - 1].p &&
>>                 fw_blobs[i].rev < fw_blobs[i - 1].rev)
>>                 continue;
>>
>> -            drm_err(&i915->drm, "Invalid FW blob order: %s r%u comes 
>> before %s r%u\n",
>> -                intel_platform_name(fw_blobs[i - 1].p),
>> -                fw_blobs[i - 1].rev,
>> -                intel_platform_name(fw_blobs[i].p),
>> -                fw_blobs[i].rev);
>> +            /* Platform/revision must be in order: */
>> +            if (fw_blobs[i].p != fw_blobs[i - 1].p ||
>> +                fw_blobs[i].rev != fw_blobs[i - 1].rev)
>> +                goto bad;
>> +
>> +            /* Next major version is good: */
>> +            if (fw_blobs[i].blob.major < fw_blobs[i - 1].blob.major)
>> +                continue;
>> +
>> +            /* New must be before legacy: */
>> +            if (!fw_blobs[i].blob.legacy && fw_blobs[i - 
>> 1].blob.legacy)
>> +                goto bad;
>> +
>> +            /* New to legacy also means 0.0 to X.Y (HuC), or X.0 to 
>> X.Y (GuC) */
>> +            if (fw_blobs[i].blob.legacy && !fw_blobs[i - 
>> 1].blob.legacy) {
>> +                if (!fw_blobs[i - 1].blob.major)
>> +                    continue;
>> +
>> +                if (fw_blobs[i].blob.major == fw_blobs[i - 
>> 1].blob.major)
>> +                    continue;
>> +            }
>> +
>> +            /* Major versions must be in order: */
>> +            if (fw_blobs[i].blob.major != fw_blobs[i - 1].blob.major)
>> +                goto bad;
>> +
>> +            /* Next minor version is good: */
>> +            if (fw_blobs[i].blob.minor < fw_blobs[i - 1].blob.minor)
>> +                continue;
>>
>> -            uc_fw->path = NULL;
>> +            /* Minor versions must be in order: */
>> +            if (fw_blobs[i].blob.minor != fw_blobs[i - 1].blob.minor)
>> +                goto bad;
>> +
>> +            /* Patch versions must be in order: */
>> +            if (fw_blobs[i].blob.patch <= fw_blobs[i - 1].blob.patch)
>> +                continue;
>> +
>> +bad:
>> +            drm_err(&i915->drm, "\x1B[35;1mInvalid FW blob order: %s 
>> r%u %s%d.%d.%d comes before %s r%u %s%d.%d.%d\n",
>
> what is this \x1B[35;1m? Probably something that went bad while
> writing/pasting this?

Looks like it slipped in. Fix coming soon (John will send a v2 of " 
drm/i915/uc: Fix issues with overriding firmware files" and include it 
there).

Daniele

>
> Lucas De Marchi
>
>> + intel_platform_name(fw_blobs[i - 1].p), fw_blobs[i - 1].rev,
>> +                fw_blobs[i - 1].blob.legacy ? "L" : "v",
>> +                fw_blobs[i - 1].blob.major,
>> +                fw_blobs[i - 1].blob.minor,
>> +                fw_blobs[i - 1].blob.patch,
>> +                intel_platform_name(fw_blobs[i].p), fw_blobs[i].rev,
>> +                fw_blobs[i].blob.legacy ? "L" : "v",
>> +                fw_blobs[i].blob.major,
>> +                fw_blobs[i].blob.minor,
>> +                fw_blobs[i].blob.patch);
>> +
>> +            uc_fw->file_selected.path = NULL;
>>         }
>>     }
>> }
>> @@ -259,7 +367,7 @@ static void __uc_fw_user_override(struct 
>> drm_i915_private *i915, struct intel_uc

