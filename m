Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B503C4D69F7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 23:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6AF10E05B;
	Fri, 11 Mar 2022 22:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FA910E05B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 22:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647037634; x=1678573634;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9mwu9w0nnFVVH2y1o16DkEkFCr6VCvR9LwglTnbXjJ0=;
 b=C/M84OVVL8Um0jrDl/NGPj2fy7VO2CKjYQvDF1qJZ333Vgn0mVpyfO2l
 iMoXe6eA0Z5Hurt2S1ljyABAuwyd7Nf05mxKS3dj6Vcgx50mbrIaU5yKv
 R2zI5xF7MKNDWD2BMx8Rmn9UD4hNEozLt9Msh7NwDUjnWooUwWAAHSknY
 0QzBawktfNvb2wEaDkeyqOqnqp4f07QYPjTSb7nVeizVXTnQUwML96P64
 +Fv8aKSCdX5UtezT7Bxl0Oj3RE15Ag68RwaanZNz1xmP9iuLJV/xW7Ym1
 SypMMNJMfnLqB1a7AFAG1xk62Q5mXJbS2Zf3NCE4VCitXG31LiUZnzccP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="342092679"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="342092679"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 14:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="612287607"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 11 Mar 2022 14:27:13 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 14:27:13 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 14:27:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 11 Mar 2022 14:27:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 11 Mar 2022 14:27:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0NUHM9IG6j8P43xT9VYzTI6g+9dBCeRuvpx7+3OpZOCj7ZZFJn/YHSW4JXGaVVBs/LqgAWj+pj98ntZhSS6KZ/jTcDPudPrftiEzwC91TH3lMQ+z5BV3JBDRoJBwpqDCC33uSlaiks19Gw+soM7RMdXGPz9jMPULl46OZZ1FqxuStwvf6KvWguAI0oAaVLiER9mAu+PPmmjLPwJGhi72rZVIy+5GvWfrvGkomUzyuSq8fd4S1o3+eLpJGgtTXIN8NsT/qBnWzLFwsV2fogbYlneSv+czcGD8R0cThbLy0RkghddW6TSVp4rZufvneVqBfLgei1RmaSZyWbEYQsD3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rNAzFwUBzLa+C1ICQL30iZjnK70hYfxVQjiOrxKNWqw=;
 b=I3sHu+KlB9cEdsiiw/r32ae0XiXfh9WFxP/+Fqwza7qWNirAMSoKYJhxarEfTlnXUO6igivf+XftBX91riRkRojUniI/577esd57my0vo1ec6gBQIM+XsMNMs7Cb3t6XqfclhLuMcSGNHG1RdIAKYSTP4VWrormjR/bnN+g35n5AJKYEdu3p1g54m5tSa7eSpfWuWx18hhUSk8rWdkfaDTcvjc/PX2qN7pwuc48Z66kk9twdUmfwbpuw+xy02cysyVJHRhDvoq3N6z20c+YX63a9wSzbqnrfi+yxRlbgboPxmQvxweOQBnxfZ1aO4huiISNxuwUQ8NVIbXbblwgMpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 BYAPR11MB2629.namprd11.prod.outlook.com (2603:10b6:a02:c6::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.19; Fri, 11 Mar 2022 22:27:10 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%11]) with mapi id 15.20.5061.022; Fri, 11 Mar
 2022 22:27:09 +0000
Message-ID: <19c3f1f8-22a6-66b3-6315-97a483a2909e@intel.com>
Date: Fri, 11 Mar 2022 14:27:07 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-11-alan.previn.teres.alexis@intel.com>
 <20220311181626.GF23794@unerlige-ril-10.165.21.154>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220311181626.GF23794@unerlige-ril-10.165.21.154>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0P220CA0022.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:d3::21) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caa6412a-4fc2-461d-259a-08da03ae4815
X-MS-TrafficTypeDiagnostic: BYAPR11MB2629:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB26291352D4C7E8E1DBEA8CA18A0C9@BYAPR11MB2629.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EFdh1hAmRpfc4sHWl/L/44x069m9e8SJthI9htzQCME5CjvPn7C4ND/wiXerYGrioU73Q2owEcmpK5u/AeibJbGB/LI9faOXH8EmelKVMurFUeAQMIsKr+o+Ew3oEe0fB6yByf6lIbaEBE5rV5/2bbt38XZqXoxgylDKOTmEcG+1ipseishaWE9HWT26FXpJXNMFIxe/BrT6yPIRj6Y4UoiTwhrGfLLI9bFAI+daHSXNCauiDDuU0ffOuHwhcdRMe6vDmGG7jVygpckHmFfqtYbxuyukiIetmVY1BqNFAjB59knUzvsdddksd8FSW3Urndph28mtHEXkXzwKYlwwYpAx2Y5h8O3phEAO+TemYlloj/KglCka8UHyIUhhOf6/915PqmsAaVKbIBzwGk06jJFPFNBoNvzEFIS2sGPDD4Ix0dAG8MWpx085kuVBFv0JVYzNDGDGeENwAJ+Bv7UvSiEJSCaeIDpbVC0jt6x4r8Z+5BU7WVre4oOVl4QKIGbXs15jcxDhbpkVPcvGUvvoUOaFTsl7Q0OAc/XSR49Z/0ZNaYSUnlv5aEcvoCn/j4rkg9lCsI1p0O+ZdYMl8B2+7ndfZ3gLbiG0sIBPSK1ZG84nPGOjTqu7FS8DHz+PdxIOu938F+o7vGNXMaNikk0nt5q5o4ChYa1N9LD94mYWE1J70kopYJmQbyM11LIzJGXktXp1c1ibbhvlHmZqe0K2XIl8khOCsi2HyazxSjJgMrU3lzq1OSIN0wmKhJDzKLLsg2nT2PiWEzbMOBHOCfEbjMIxl2jFp32DWV10dl++ZzvKWxgPqcBkoTKIs7FKmrMpvD5FkYy3Zt/lEpZYvkodkg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(31686004)(31696002)(30864003)(82960400001)(6916009)(53546011)(38100700002)(8676002)(66946007)(66556008)(66476007)(6486002)(15650500001)(186003)(2906002)(2616005)(26005)(5660300002)(83380400001)(966005)(6512007)(86362001)(8936002)(6506007)(508600001)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEdjbFlvK0ZrMkVhb2R2U3N3bS9mdTltWDNxcGNBdDRtSjV3YlVlV3FnK0Nz?=
 =?utf-8?B?T1RuQVlJQ25KcVk0dWJSQ3I0K0NERmRyOTlLbHhzWHpxK0R2SHQzcGxxMk9E?=
 =?utf-8?B?ZS80bjNmeVpoUUNJR0p1VTM0bFIvd1YvZzJhSHlNeTlhZ3Fkd3JlNE4xTjRV?=
 =?utf-8?B?RUhlcE1VOVFWN0orcitIVDF2cEFmNnVQNFp5R1NQVnRHaGRUekdBVWVBM1E1?=
 =?utf-8?B?MXM2TmU3M2pTbFhJb2pwbSt2NTlXR2FYVXBaTHlYNDlsZXVDVFNoU2xKejM5?=
 =?utf-8?B?Q1pEUlJhSGNJM09ac29xMnIxbVpMajhSaGtvY3RqWWozd3djTFl5NVgwT2Iw?=
 =?utf-8?B?V2JzUDJrMWlJeG1DcHlSRTY5cWFuNVNtQXRITktMUUZFWVRnc3NYUktXdWIr?=
 =?utf-8?B?VGZIaWdnNFdLWmFya2E0UHlHZVk4WG1qWWdMNDhhU0N5VUxnWEszVC83RXdG?=
 =?utf-8?B?WkxaaWx5Q3h3V2RpK0tRdjNnY1pqVm1mRFRSQjJvMjFvaFBBQkF5cFdmb08r?=
 =?utf-8?B?MEovSXV1TnlBeTF5Ykg3NmFlMDBqcWpWUWdSZ3RJWXpsTUZmenVDWHh2WUpK?=
 =?utf-8?B?cUVhRDVnamVkbkc0ZWRyODRUMTNUT25YcU4wb0NuNURwV00rZnhhUHd3QzZk?=
 =?utf-8?B?bkY2K2FUK2tIMUFqa0pIV2pHYTVPS0lZa1VSbGtjeWlmbGpNYkhNQXZGaldR?=
 =?utf-8?B?WnJKeDV3Y0xlNnZzaFoyY3hjdEx4ekpsakJDVFhmaHNjNEZ2aUNwRGtCOGZX?=
 =?utf-8?B?OTdkSkxFckQ1UHl1cmw4aS9ZSkJtM0c3cFpMQ09MWG1oZ2NqeFhrNFlzUnBS?=
 =?utf-8?B?Y2pJYWdITW1uS3Uxa0o1ckpPaTF4SzlWQUFPeC9OWGhSLzVCUGxGaWhscHVE?=
 =?utf-8?B?NmsrQWhCT0hJYnNhWjdDb1M1a2RQM0lDNjFWUndKd211QnJrWHp1SitWbDF1?=
 =?utf-8?B?Zm9MLzYzTXloVVlGSDlCa0N6RWZjcStaMjRoQlgycVhGUVZxU2FqMk1JRGhl?=
 =?utf-8?B?aml4ZUtYamE0K21QY25RTGc1VllselNxb3Z5N1B6MnQvSWZyKytuTGpjWjJH?=
 =?utf-8?B?QjMrRWlFWmJuZnVCSXdlTE93QTRVQnlWZlBzSlUzWFVqclVMT003QlA4a3RN?=
 =?utf-8?B?MHZicGJIajBPV2lQdUhmOGdtUitRMkpkM1l6eW1ERFNMb0xXNUhuMjFRSWxT?=
 =?utf-8?B?TWllZkZ1ejk5YTlXdkJKYkpHSWwzN0lPREFUTndkRzF0bkVqa2tGRld3am9o?=
 =?utf-8?B?VWpvTEI0NGJrZ2t2eC9tWndWMVNBVEtRQ085U2hRWmxIM3kvd2J0M1NoQ0dp?=
 =?utf-8?B?R0trcEVENW1VZFBmbzFSVnd3bTlMbXd5VHRkREJhUUhSM3RRZVZEeTJuUFRw?=
 =?utf-8?B?WnpEWUpPS0p6QXJJam41Nkg5U0dscUVxcXZVaXk5dHJmeDIxYjdtb0wyWDNn?=
 =?utf-8?B?Nis3Lzd0Y200eWRuT0xKb1ArUWxSSEd4aUtjZUFGVDFIM3p6ZUdJQ2xnN1lm?=
 =?utf-8?B?OEEvc0ZHeC9UaWQ5dTNHTHc2bFFYeEhFQUowdzZLN1JIZTV5aW81K3lsb0d5?=
 =?utf-8?B?OWRBNUp4bVloeFUzdGJ0N0lXazIwM2pia3ZtekdBNm1pTWoxV1dKemEybUx1?=
 =?utf-8?B?RS9LYmNCVUVRNm9xNUN0bXk4QTQ3em1sL3VLdWFVWm10Q0haNEFSbDhXdTh3?=
 =?utf-8?B?K2F3N1ZhN3ZlMWlxZjgyTVhoMkhrQnNaSUZCb2grTW53VU9jRjJjZFMzRWZX?=
 =?utf-8?B?R2M3bXhjM3phTmVRU2NVY0MwWWorckNkN0R1T2k2TW9MaFdOUkd6b3RJTm9H?=
 =?utf-8?B?S3lMSjI0SDRJS21nd2lXZSs2L2w5ZTlTRlBoT3UyYjRXZEhQMVNBSU0xUm16?=
 =?utf-8?B?TDdQamM2c2VQdW5GOStaQXJEUTRyOWF3eThZMTh6aFJ3Q2J1UWxMZ3RaUUFO?=
 =?utf-8?B?Zy9BQ2E2bkU2VVhsSkRwUm1QakkvbHFPWkdRVzA5UUF1R0gzRXVoUDBnVU54?=
 =?utf-8?B?aURla1U0YklKa0xrRnZLV1ZuVlJsQTIzd1cvTVA3WTlDZlZYZlRKbEw1N0t3?=
 =?utf-8?B?Nng3ZTZpRDc3cHZhcmU5WElmckhtQmMyNFRHZW9JQnRacXVPaW1vVkR0Tmhm?=
 =?utf-8?B?blBGNDVlWEtoMTJNQ1lzKzZmRU9pN3Q5NVZtb0NGMGdUUkN1NUNoanpKSThD?=
 =?utf-8?B?eU4xOEo1czh5dWxHTGhoYjZ3SW5aS2k3TXN2VUhWTjI3NjFuNTJ2TE5Sakx5?=
 =?utf-8?B?ay9uRmEwRkU4ZFZQQm1PZnM3M2wxWnpleUxKbTVEbnd4SmFmclZUdUYxclBJ?=
 =?utf-8?B?YzFsM1E2L0M3ZzZYeTFwSWJpMHRZM2hhL2M1MUtmOEZoZGF5dnhrdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa6412a-4fc2-461d-259a-08da03ae4815
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 22:27:09.7540 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Skg+9+K0kEXVXneGGHWNb9uS2wQM7qz9PcWXDPimeRxRjMmzgoZ13EtgNPaUzb/2yKNt6n9Zksm1N5OGX+nFXhIQIEiakoMRqk+VT6sHcIlBc/haY1gbqenqQOOwyHdT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2629
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 10/13] drm/i915/guc: Extract GuC error
 capture lists on G2H notification.
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

Thanks Umesh for reviewing and for the conditional Rb ...  a follow up 
on the conditions for #1 below (as per our offline conversation)... and 
i will fix #2 as expected.

On 3/11/2022 10:16 AM, Umesh Nerlige Ramappa wrote:
> On Sat, Feb 26, 2022 at 01:55:38AM -0800, Alan Previn wrote: +static int
>> +guc_capture_log_remove_dw(struct intel_guc *guc, struct 
>> __guc_capture_bufstate *buf,
>> +              u32 *dw)
>> +{
>> +    struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +    int tries = 2;
>> +    int avail = 0;
>> +    u32 *src_data;
>> +
>> +    if (!guc_capture_buf_cnt(buf))
>> +        return 0;
>> +
>> +    while (tries--) {
>> +        avail = guc_capture_buf_cnt_to_end(buf);
>> +        if (avail >= sizeof(u32)) {
>> +            src_data = (u32 *)(buf->data + buf->rd);
>> +            *dw = *src_data;
>> +            buf->rd += 4;
>> +            return 4;
>> +        }
>> +        if (avail)
>> +            drm_dbg(&i915->drm, "GuC-Cap-Logs not dword aligned, 
>> skipping.\n");
>> +        buf->rd = 0;
>
> (1) This looks like an understanding between GuC and KMD that GuC will 
> not write partial headers at the end of the log buffer if there is no 
> space to fit the header. If you encounter such a scenario, you go back 
> to the beginning. Right? If so, please add a comment indicating the 
> same here.
>
Thanks Umesh for reviewing, and as per the offline conversation, we 
resolved a bit of a misunderstanding in intent of the function above.

As per what we agreed, we should furnish some additional comments -thus, 
this will go into the code as a comment:

      The GuC Log buffer region for error-capture gets populated in a 
byte-stream flow. However, right now, as per the current and foreseeable 
future, all packed error-capture output structures are dword aligned. 
That said, if the GuC firmware is in the midst of writing a structure 
that is larger than one dword but the tail end of the err-capture 
buffer-region has lesser space left, we would need to extract that 
structure one dword at a time across the end of the ring buffer and onto 
the start. The above function, guc_capture_log_remove_dw is responsible 
for that. All callers of this function would usually do a straight-up 
memcpy and only only call above function if their structure-extraction 
is straddling across the end of the region. GuC firmware does not add 
padding. Once above function has extracted a structure that stradles 
across the end, all extraction functions would return to the norm of 
straight up memcpy's. The reason for the no-padding is to ease 
scalability for future expansion of output data types without requiring 
a redesign of the flow controls.

An additional note wrt above function, .. the while loop always attempts 
up to two tries because if we have exhausted all the dwords, i.e. we've 
this the end, we will reset buf->rd = zero and try again from the 
beginning (this wont be in the comment).


>> +    }
>> +
>> +    return 0;
>> +}
>> +
>> +static bool
>> +guc_capture_data_extracted(struct __guc_capture_bufstate *b,
>> +               int size, void *dest)
>> +{
>> +    if (guc_capture_buf_cnt_to_end(b) >= size) {
>> +        memcpy(dest, (b->data + b->rd), size);
>> +        b->rd += size;
>> +        return true;
>> +    }
>> +    return false;
>> +}
>> +
>> +static int
>> +guc_capture_log_get_group_hdr(struct intel_guc *guc, struct 
>> __guc_capture_bufstate *buf,
>> +                  struct guc_state_capture_group_header_t *ghdr)
>> +{
>> +    int read = 0;
>> +    int fullsize = sizeof(struct guc_state_capture_group_header_t);
>> +
>> +    if (fullsize > guc_capture_buf_cnt(buf))
>> +        return -1;
>> +
>> +    if (guc_capture_data_extracted(buf, fullsize, (void *)ghdr))
>> +        return 0;
>> +
>> +    read += guc_capture_log_remove_dw(guc, buf, &ghdr->owner);
>> +    read += guc_capture_log_remove_dw(guc, buf, &ghdr->info);
>> +    if (read != fullsize)
>> +        return -1;
>> +
>> +    return 0;
>> +}
>> +
>> +static int
>> +guc_capture_log_get_data_hdr(struct intel_guc *guc, struct 
>> __guc_capture_bufstate *buf,
>> +                 struct guc_state_capture_header_t *hdr)
>> +{
>> +    int read = 0;
>> +    int fullsize = sizeof(struct guc_state_capture_header_t);
>> +
>> +    if (fullsize > guc_capture_buf_cnt(buf))
>> +        return -1;
>> +
>> +    if (guc_capture_data_extracted(buf, fullsize, (void *)hdr))
>> +        return 0;
>> +
>> +    read += guc_capture_log_remove_dw(guc, buf, &hdr->owner);
>> +    read += guc_capture_log_remove_dw(guc, buf, &hdr->info);
>> +    read += guc_capture_log_remove_dw(guc, buf, &hdr->lrca);
>> +    read += guc_capture_log_remove_dw(guc, buf, &hdr->guc_id);
>> +    read += guc_capture_log_remove_dw(guc, buf, &hdr->num_mmios);
>> +    if (read != fullsize)
>> +        return -1;
>> +
>> +    return 0;
>> +}
>> +
>> +static int
>> +guc_capture_log_get_register(struct intel_guc *guc, struct 
>> __guc_capture_bufstate *buf,
>> +                 struct guc_mmio_reg *reg)
>> +{
>> +    int read = 0;
>> +    int fullsize = sizeof(struct guc_mmio_reg);
>> +
>> +    if (fullsize > guc_capture_buf_cnt(buf))
>> +        return -1;
>> +
>> +    if (guc_capture_data_extracted(buf, fullsize, (void *)reg))
>> +        return 0;
>> +
>> +    read += guc_capture_log_remove_dw(guc, buf, &reg->offset);
>> +    read += guc_capture_log_remove_dw(guc, buf, &reg->value);
>> +    read += guc_capture_log_remove_dw(guc, buf, &reg->flags);
>> +    read += guc_capture_log_remove_dw(guc, buf, &reg->mask);
>> +    if (read != fullsize)
>> +        return -1;
>> +
>> +    return 0;
>> +}
>> +
>> +static void
>> +guc_capture_delete_one_node(struct intel_guc *guc, struct 
>> __guc_capture_parsed_output *node)
>> +{
>> +    int i;
>> +
>> +    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> +        if (node->reginfo[i].regs)
>> +            kfree(node->reginfo[i].regs);
>
> (2) Check before kfree is not needed here and other places that you 
> use kfree.
>
> Ref: https://www.kernel.org/doc/htmldocs/kernel-api/API-kfree.html
>
Yes, i realize i have been holding back against changing my coding style 
(not used to freeing memory without checking).

However, as per offline chat, I shall change this here and in other patches.


>> +    }
>> +    list_del(&node->link);
>> +    kfree(node);
>> +}
>> +
>> +static void
>> +guc_capture_delete_nodes(struct intel_guc *guc)
>> +{
>> +    /*
>> +     * NOTE: At the end of driver operation, we must assume that we
>> +     * have nodes in outlist from unclaimed error capture events
>> +     * that occurred prior to shutdown.
>> +     */
>> +    if (!list_empty(&guc->capture.priv->outlist)) {
>> +        struct __guc_capture_parsed_output *n, *ntmp;
>> +
>> +        list_for_each_entry_safe(n, ntmp, 
>> &guc->capture.priv->outlist, link)
>> +            guc_capture_delete_one_node(guc, n);
>> +    }
>> +}
>> +
>> +static void
>> +guc_capture_add_node_to_list(struct __guc_capture_parsed_output *node,
>> +                 struct list_head *list)
>> +{
>> +    list_add_tail(&node->link, list);
>> +}
>> +
>> +static void
>> +guc_capture_add_node_to_outlist(struct __guc_state_capture_priv *gc,
>> +                struct __guc_capture_parsed_output *node)
>> +{
>> +    guc_capture_add_node_to_list(node, &gc->outlist);
>> +}
>> +
>> +static void
>> +guc_capture_init_node(struct intel_guc *guc, struct 
>> __guc_capture_parsed_output *node)
>> +{
>> +    INIT_LIST_HEAD(&node->link);
>> +}
>> +
>> +static struct __guc_capture_parsed_output *
>> +guc_capture_alloc_one_node(struct intel_guc *guc)
>> +{
>> +    struct __guc_capture_parsed_output *new;
>> +
>> +    new = kzalloc(sizeof(*new), GFP_KERNEL);
>> +    if (!new)
>> +        return NULL;
>> +
>> +    guc_capture_init_node(guc, new);
>> +
>> +    return new;
>> +}
>> +
>> +static struct __guc_capture_parsed_output *
>> +guc_capture_clone_node(struct intel_guc *guc, struct 
>> __guc_capture_parsed_output *ori,
>> +               u32 keep_reglist_mask)
>> +{
>> +    struct __guc_capture_parsed_output *new;
>> +    int i;
>> +
>> +    new = guc_capture_alloc_one_node(guc);
>> +    if (!new)
>> +        return NULL;
>> +    if (!ori)
>> +        return new;
>
> For readability, I would s/ori/orignal/ if that's what you mean.
>
>> +
>> +    new->is_partial = ori->is_partial;
>> +
>> +    /* copy reg-lists that we want to clone */
>> +    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> +        if (keep_reglist_mask & BIT(i)) {
>> +            new->reginfo[i].regs = kcalloc(ori->reginfo[i].num_regs,
>> +                               sizeof(struct guc_mmio_reg), 
>> GFP_KERNEL);
>> +            if (!new->reginfo[i].regs)
>> +                goto bail_clone;
>> +
>> +            memcpy(new->reginfo[i].regs, ori->reginfo[i].regs,
>> +                   ori->reginfo[i].num_regs * sizeof(struct 
>> guc_mmio_reg));
>> +            new->reginfo[i].num_regs = ori->reginfo[i].num_regs;
>> +            new->reginfo[i].vfid  = ori->reginfo[i].vfid;
>> +
>> +            if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS) {
>> +                new->eng_class = ori->eng_class;
>> +            } else if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>> +                new->eng_inst = ori->eng_inst;
>> +                new->guc_id = ori->guc_id;
>> +                new->lrca = ori->lrca;
>> +            }
>> +        }
>> +    }
>> +
>> +    return new;
>> +
>> +bail_clone:
>> +    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> +        if (new->reginfo[i].regs)
>> +            kfree(new->reginfo[i].regs);
>> +    }
>> +    kfree(new);
>> +    return NULL;
>> +}
>> +
>> +static int
>> +guc_capture_extract_reglists(struct intel_guc *guc, struct 
>> __guc_capture_bufstate *buf)
>> +{
>> +    struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +    struct guc_state_capture_group_header_t ghdr = {0};
>> +    struct guc_state_capture_header_t hdr = {0};
>> +    struct __guc_capture_parsed_output *node = NULL;
>> +    struct guc_mmio_reg *regs = NULL;
>> +    int i, numlists, numregs, ret = 0;
>> +    enum guc_capture_type datatype;
>> +    struct guc_mmio_reg tmp;
>> +    bool is_partial = false;
>> +
>> +    i = guc_capture_buf_cnt(buf);
>> +    if (!i)
>> +        return -ENODATA;
>> +    if (i % sizeof(u32)) {
>> +        drm_warn(&i915->drm, "GuC Capture new entries unaligned\n");
>> +        ret = -EIO;
>> +        goto bailout;
>> +    }
>> +
>> +    /* first get the capture group header */
>> +    if (guc_capture_log_get_group_hdr(guc, buf, &ghdr)) {
>> +        ret = -EIO;
>> +        goto bailout;
>> +    }
>> +    /*
>> +     * we would typically expect a layout as below where n would be 
>> expected to be
>> +     * anywhere between 3 to n where n > 3 if we are seeing multiple 
>> dependent engine
>> +     * instances being reset together.
>> +     * ____________________________________________
>> +     * | Capture Group                            |
>> +     * | ________________________________________ |
>> +     * | | Capture Group Header:                | |
>> +     * | |  - num_captures = 5                  | |
>> +     * | |______________________________________| |
>> +     * | ________________________________________ |
>> +     * | | Capture1:                            | |
>> +     * | |  Hdr: GLOBAL, numregs=a              | |
>> +     * | | ____________________________________ | |
>> +     * | | | Reglist                          | | |
>> +     * | | | - reg1, reg2, ... rega           | | |
>> +     * | | |__________________________________| | |
>> +     * | |______________________________________| |
>> +     * | ________________________________________ |
>> +     * | | Capture2:                            | |
>> +     * | |  Hdr: CLASS=RENDER/COMPUTE, numregs=b| |
>> +     * | | ____________________________________ | |
>> +     * | | | Reglist                          | | |
>> +     * | | | - reg1, reg2, ... regb           | | |
>> +     * | | |__________________________________| | |
>> +     * | |______________________________________| |
>> +     * | ________________________________________ |
>> +     * | | Capture3:                            | |
>> +     * | |  Hdr: INSTANCE=RCS, numregs=c        | |
>> +     * | | ____________________________________ | |
>> +     * | | | Reglist                          | | |
>> +     * | | | - reg1, reg2, ... regc           | | |
>> +     * | | |__________________________________| | |
>> +     * | |______________________________________| |
>> +     * | ________________________________________ |
>> +     * | | Capture4:                            | |
>> +     * | |  Hdr: CLASS=RENDER/COMPUTE, numregs=d| |
>> +     * | | ____________________________________ | |
>> +     * | | | Reglist                          | | |
>> +     * | | | - reg1, reg2, ... regd           | | |
>> +     * | | |__________________________________| | |
>> +     * | |______________________________________| |
>> +     * | ________________________________________ |
>> +     * | | Capture5:                            | |
>> +     * | |  Hdr: INSTANCE=CCS0, numregs=e       | |
>> +     * | | ____________________________________ | |
>> +     * | | | Reglist                          | | |
>> +     * | | | - reg1, reg2, ... rege           | | |
>> +     * | | |__________________________________| | |
>> +     * | |______________________________________| |
>> +     * |__________________________________________|
>> +     */
>> +    is_partial = FIELD_GET(CAP_GRP_HDR_CAPTURE_TYPE, ghdr.info);
>> +    numlists = FIELD_GET(CAP_GRP_HDR_NUM_CAPTURES, ghdr.info);
>> +
>> +    while (numlists--) {
>> +        if (guc_capture_log_get_data_hdr(guc, buf, &hdr)) {
>> +            ret = -EIO;
>> +            break;
>> +        }
>> +
>> +        datatype = FIELD_GET(CAP_HDR_CAPTURE_TYPE, hdr.info);
>> +        if (datatype > GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>> +            /* unknown capture type - skip over to next capture set */
>> +            numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>> +            while (numregs--) {
>> +                if (guc_capture_log_get_register(guc, buf, &tmp)) {
>> +                    ret = -EIO;
>> +                    break;
>> +                }
>> +            }
>> +            continue;
>> +        } else if (node) {
>> +            /*
>> +             * Based on the current capture type and what we have so 
>> far,
>> +             * decide if we should add the current node into the 
>> internal
>> +             * linked list for match-up when i915_gpu_coredump calls 
>> later
>> +             * (and alloc a blank node for the next set of reglists)
>> +             * or continue with the same node or clone the current node
>> +             * but only retain the global or class registers (such 
>> as the
>> +             * case of dependent engine resets).
>> +             */
>> +            if (datatype == GUC_CAPTURE_LIST_TYPE_GLOBAL) {
>> + guc_capture_add_node_to_outlist(guc->capture.priv, node);
>> +                node = NULL;
>> +            } else if (datatype == 
>> GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
>> + node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
>> +                /* Add to list, clone node and duplicate global list */
>> + guc_capture_add_node_to_outlist(guc->capture.priv, node);
>> +                node = guc_capture_clone_node(guc, node,
>> + GCAP_PARSED_REGLIST_INDEX_GLOBAL);
>> +            } else if (datatype == 
>> GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
>> + node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
>> +                /* Add to list, clone node and duplicate global + 
>> class lists */
>> + guc_capture_add_node_to_outlist(guc->capture.priv, node);
>> +                node = guc_capture_clone_node(guc, node,
>> + (GCAP_PARSED_REGLIST_INDEX_GLOBAL |
>> + GCAP_PARSED_REGLIST_INDEX_ENGCLASS));
>> +            }
>> +        }
>> +
>> +        if (!node) {
>> +            node = guc_capture_alloc_one_node(guc);
>> +            if (!node) {
>> +                ret = -ENOMEM;
>> +                break;
>> +            }
>> +            if (datatype != GUC_CAPTURE_LIST_TYPE_GLOBAL)
>> +                drm_dbg(&i915->drm, "GuC Capture missing global 
>> dump: %08x!\n",
>> +                    datatype);
>> +        }
>> +        node->is_partial = is_partial;
>> +        node->reginfo[datatype].vfid = 
>> FIELD_GET(CAP_HDR_CAPTURE_VFID, hdr.owner);
>> +        switch (datatype) {
>> +        case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>> +            node->eng_class = FIELD_GET(CAP_HDR_ENGINE_CLASS, 
>> hdr.info);
>> +            node->eng_inst = FIELD_GET(CAP_HDR_ENGINE_INSTANCE, 
>> hdr.info);
>> +            node->lrca = hdr.lrca;
>> +            node->guc_id = hdr.guc_id;
>> +            break;
>> +        case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>> +            node->eng_class = FIELD_GET(CAP_HDR_ENGINE_CLASS, 
>> hdr.info);
>> +            break;
>> +        default:
>> +            break;
>> +        }
>> +
>> +        regs = NULL;
>> +        numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>> +        if (numregs) {
>> +            regs = kcalloc(numregs, sizeof(struct guc_mmio_reg), 
>> GFP_KERNEL);
>> +            if (!regs) {
>> +                ret = -ENOMEM;
>> +                break;
>> +            }
>> +        }
>> +        node->reginfo[datatype].num_regs = numregs;
>> +        node->reginfo[datatype].regs = regs;
>> +        i = 0;
>> +        while (numregs--) {
>> +            if (guc_capture_log_get_register(guc, buf, &regs[i++])) {
>> +                ret = -EIO;
>> +                break;
>> +            }
>> +        }
>> +    }
>> +
>> +bailout:
>> +    if (node) {
>> +        /* If we have data, add to linked list for match-up when 
>> i915_gpu_coredump calls */
>> +        for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < 
>> GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> +            if (node->reginfo[i].regs) {
>> + guc_capture_add_node_to_outlist(guc->capture.priv, node);
>> +                node = NULL;
>> +                break;
>> +            }
>> +        }
>> +        if (node) /* else free it */
>> +            kfree(node);
>> +    }
>> +    return ret;
>> +}
>> +
>> +static int __guc_capture_flushlog_complete(struct intel_guc *guc)
>> +{
>> +    u32 action[] = {
>> +        INTEL_GUC_ACTION_LOG_BUFFER_FILE_FLUSH_COMPLETE,
>> +        2
>> +    };
>> +
>> +    return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +}
>> +
>> +static void __guc_capture_process_output(struct intel_guc *guc)
>> +{
>> +    unsigned int buffer_size, read_offset, write_offset, full_count;
>> +    struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>> +    struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +    struct guc_log_buffer_state log_buf_state_local;
>> +    struct guc_log_buffer_state *log_buf_state;
>> +    struct __guc_capture_bufstate buf;
>> +    void *src_data = NULL;
>> +    bool new_overflow;
>> +    int ret;
>> +
>> +    log_buf_state = guc->log.buf_addr +
>> +            (sizeof(struct guc_log_buffer_state) * 
>> GUC_CAPTURE_LOG_BUFFER);
>> +    src_data = guc->log.buf_addr + 
>> intel_guc_get_log_buffer_offset(GUC_CAPTURE_LOG_BUFFER);
>> +
>> +    /*
>> +     * Make a copy of the state structure, inside GuC log buffer
>> +     * (which is uncached mapped), on the stack to avoid reading
>> +     * from it multiple times.
>> +     */
>> +    memcpy(&log_buf_state_local, log_buf_state, sizeof(struct 
>> guc_log_buffer_state));
>> +    buffer_size = 
>> intel_guc_get_log_buffer_size(GUC_CAPTURE_LOG_BUFFER);
>> +    read_offset = log_buf_state_local.read_ptr;
>> +    write_offset = log_buf_state_local.sampled_write_ptr;
>> +    full_count = log_buf_state_local.buffer_full_cnt;
>> +
>> +    /* Bookkeeping stuff */
>> +    guc->log.stats[GUC_CAPTURE_LOG_BUFFER].flush += 
>> log_buf_state_local.flush_to_file;
>> +    new_overflow = intel_guc_check_log_buf_overflow(&guc->log, 
>> GUC_CAPTURE_LOG_BUFFER,
>> +                            full_count);
>> +
>> +    /* Now copy the actual logs. */
>> +    if (unlikely(new_overflow)) {
>> +        /* copy the whole buffer in case of overflow */
>> +        read_offset = 0;
>> +        write_offset = buffer_size;
>> +    } else if (unlikely((read_offset > buffer_size) ||
>> +            (write_offset > buffer_size))) {
>> +        drm_err(&i915->drm, "invalid GuC log capture buffer state!\n");
>> +        /* copy whole buffer as offsets are unreliable */
>> +        read_offset = 0;
>> +        write_offset = buffer_size;
>> +    }
>> +
>> +    buf.size = buffer_size;
>> +    buf.rd = read_offset;
>> +    buf.wr = write_offset;
>> +    buf.data = src_data;
>> +
>> +    if (!uc->reset_in_progress) {
>> +        do {
>> +            ret = guc_capture_extract_reglists(guc, &buf);
>> +        } while (ret >= 0);
>> +    }
>> +
>> +    /* Update the state of log buffer err-cap state */
>> +    log_buf_state->read_ptr = write_offset;
>> +    log_buf_state->flush_to_file = 0;
>> +    __guc_capture_flushlog_complete(guc);
>> +}
>> +
>> +void intel_guc_capture_process(struct intel_guc *guc)
>> +{
>> +    if (guc->capture.priv)
>> +        __guc_capture_process_output(guc);
>> +}
>> +
>> static void
>> guc_capture_free_ads_cache(struct __guc_state_capture_priv *gc)
>> {
>> @@ -715,6 +1255,8 @@ void intel_guc_capture_destroy(struct intel_guc 
>> *guc)
>>
>>     guc_capture_free_ads_cache(guc->capture.priv);
>>
>> +    guc_capture_delete_nodes(guc);
>> +
>>     if (guc->capture.priv->extlists) {
>> guc_capture_free_extlists(guc->capture.priv->extlists);
>>         kfree(guc->capture.priv->extlists);
>> @@ -732,5 +1274,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
>>
>>     guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
>>
>> +    INIT_LIST_HEAD(&guc->capture.priv->outlist);
>> +
>>     return 0;
>> }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>> index 24a11f33f7d9..3c79460c7ca5 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>> @@ -12,6 +12,7 @@ struct file;
>> struct guc_gt_system_info;
>> struct intel_guc;
>>
>> +void intel_guc_capture_process(struct intel_guc *guc);
>> int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
>> int intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 
>> type, u32 classid,
>>                   struct file **fileptr);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> index e9a865c2f4cb..8d59a11ec595 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> @@ -158,9 +158,9 @@ static void *guc_get_write_buffer(struct 
>> intel_guc_log *log)
>>     return relay_reserve(log->relay.channel, 0);
>> }
>>
>> -static bool guc_check_log_buf_overflow(struct intel_guc_log *log,
>> -                       enum guc_log_buffer_type type,
>> -                       unsigned int full_cnt)
>> +bool intel_guc_check_log_buf_overflow(struct intel_guc_log *log,
>> +                      enum guc_log_buffer_type type,
>> +                      unsigned int full_cnt)
>> {
>>     unsigned int prev_full_cnt = log->stats[type].sampled_overflow;
>>     bool overflow = false;
>> @@ -183,7 +183,7 @@ static bool guc_check_log_buf_overflow(struct 
>> intel_guc_log *log,
>>     return overflow;
>> }
>>
>> -static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type 
>> type)
>> +unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type 
>> type)
>> {
>>     switch (type) {
>>     case GUC_DEBUG_LOG_BUFFER:
>> @@ -199,6 +199,20 @@ static unsigned int guc_get_log_buffer_size(enum 
>> guc_log_buffer_type type)
>>     return 0;
>> }
>>
>> +size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type)
>> +{
>> +    enum guc_log_buffer_type i;
>> +    size_t offset = PAGE_SIZE;/* for the log_buffer_states */
>> +
>> +    for (i = GUC_DEBUG_LOG_BUFFER; i < GUC_MAX_LOG_BUFFER; ++i) {
>> +        if (i == type)
>> +            break;
>> +        offset += intel_guc_get_log_buffer_size(i);
>> +    }
>> +
>> +    return offset;
>> +}
>> +
>> static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
>> {
>>     unsigned int buffer_size, read_offset, write_offset, 
>> bytes_to_copy, full_cnt;
>> @@ -243,14 +257,14 @@ static void 
>> _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
>>          */
>>         memcpy(&log_buf_state_local, log_buf_state,
>>                sizeof(struct guc_log_buffer_state));
>> -        buffer_size = guc_get_log_buffer_size(type);
>> +        buffer_size = intel_guc_get_log_buffer_size(type);
>>         read_offset = log_buf_state_local.read_ptr;
>>         write_offset = log_buf_state_local.sampled_write_ptr;
>>         full_cnt = log_buf_state_local.buffer_full_cnt;
>>
>>         /* Bookkeeping stuff */
>>         log->stats[type].flush += log_buf_state_local.flush_to_file;
>> -        new_overflow = guc_check_log_buf_overflow(log, type, full_cnt);
>> +        new_overflow = intel_guc_check_log_buf_overflow(log, type, 
>> full_cnt);
>>
>>         /* Update the state of shared log buffer */
>>         log_buf_state->read_ptr = write_offset;
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>> index e1345fca7729..18007e639be9 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>> @@ -67,6 +67,10 @@ struct intel_guc_log {
>> };
>>
>> void intel_guc_log_init_early(struct intel_guc_log *log);
>> +bool intel_guc_check_log_buf_overflow(struct intel_guc_log *log, 
>> enum guc_log_buffer_type type,
>> +                      unsigned int full_cnt);
>> +unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type 
>> type);
>> +size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type);
>> int intel_guc_log_create(struct intel_guc_log *log);
>> void intel_guc_log_destroy(struct intel_guc_log *log);
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index ab3cea352fb3..870b48456e9c 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -25,6 +25,7 @@
>> #include "gt/intel_ring.h"
>>
>> #include "intel_guc_ads.h"
>> +#include "intel_guc_capture.h"
>> #include "intel_guc_submission.h"
>>
>> #include "i915_drv.h"
>> @@ -4070,17 +4071,18 @@ int 
>> intel_guc_context_reset_process_msg(struct intel_guc *guc,
>> int intel_guc_error_capture_process_msg(struct intel_guc *guc,
>>                     const u32 *msg, u32 len)
>> {
>> -    int status;
>> +    u32 status;
>>
>>     if (unlikely(len != 1)) {
>>         drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
>>         return -EPROTO;
>>     }
>>
>> -    status = msg[0];
>> -    drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status 
>> = %d", status);
>> +    status = msg[0] & INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK;
>> +    if (status == INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE)
>> +        drm_warn(&guc_to_gt(guc)->i915->drm, "G2H-Error capture no 
>> space");
>>
>> -    /* FIXME: Do something with the capture */
>> +    intel_guc_capture_process(guc);
>>
>>     return 0;
>> }
>
> With (1) and (2) taken care of, this is:
>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
> Regards,
> Umesh
>
>> -- 
>> 2.25.1
>>
