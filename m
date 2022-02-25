Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD904C3EE9
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 08:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DE910E4F6;
	Fri, 25 Feb 2022 07:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC2610E4F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645773687; x=1677309687;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vVbl8afINNB9FltXsn/qgs0n5WHKO8pHpuibgVSLzpc=;
 b=Pt2DI/X1vYFsiU4mBMccF4/sZT46mz+mV5yGA5zWbrXI36CqgOPaLjEi
 6IMIijyO0W8e1QliZUjVAzxxPtF1aQ2NrWpqtBkF2V9CannAbjce8VL5/
 kYrlXEUuvRErACjQv1bElywi0EqZkccRB9KkNy1rx/XxkY0WAwy+r6dgJ
 TtCwuhkGUwI2rX4LEwn7OW3CrsDWzX8L8pDoYcyrzZc7lbLENwe+R3NdD
 cgNDkvAfdQSWGXK9UKWbFvqQlnl1kbwGkxXZTHiZMeOx9A/x0RM9JRFf4
 vWvr229+pSJBqcaqJ9fiK1SM8k8yfH/5gt3bMsM2oCwFleWQWc7W3jd9I Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="235947780"
X-IronPort-AV: E=Sophos;i="5.90,135,1643702400"; d="scan'208";a="235947780"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 23:21:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,135,1643702400"; d="scan'208";a="628761563"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Feb 2022 23:21:26 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 23:21:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 24 Feb 2022 23:21:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 23:21:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7k0MZvGfqhUcnbkP64b3+hIHG92567JpdOVNnjqVPjNSbuDNYpbaDyGPxRHa9LVCfyjZ88HQYIuF9TjVHfCvaXwlR4GziVH+Yy8UQ+V7wNwEMqA7R3XbZ9FPVH1NT3RES7s3a2RnW/i2JkaDYvCQmQvfJopdGCPO9+I5hTBFy3PrHSI+m1Z+HPKj/ZIC7b1QaM7EHWvi04IyH2PKCoOLgQf8Dmh0/kDGCYaK5Vlv63bmR37qy54dpJdRG7S/F5BfIeIrULDpgNNVnLspyXClIkhw9plmzNyRcB22xq4BXvXYgfCAYQAmGi2PwqXzJ2UU3zLbODq9HXVY6Ilxwqbiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lCzTvX2Hg6UacC2NO4+vLQqTxPSrnYywq2py8l89lzA=;
 b=O23iznCBONFYtkd6YuO9tPp/xfNR3qsTImPHsyN8HizcAIACn91cUOXSXjC8nPQIwonXZrr1lW4NkP56mvH8mYxjm6lxUIxLU25iNuA0a2ugiCho/BRQcrnDWKKzvdLfQHD+Oz9N+QRCenIEJli8cRaPQe57ekS90ATEb4Q7IdjA03pIZibOU2htev/ZUlMozMExBnXLfyU15TywGdYsvZL1h6vKBF0AIy4bDYlblOPI9BDni1niKyaWmhpEBiBgsmeh4XqdaKIuz+2WgUrzFy4+RS4apZdsXgLdHdsT5Zio7OBsUOR2nnJmMzazR5wa4rMXSYlaTlMNtbRvvRywjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB1556.namprd11.prod.outlook.com (2603:10b6:405:d::19)
 by DM5PR11MB1308.namprd11.prod.outlook.com (2603:10b6:3:e::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4995.19; Fri, 25 Feb 2022 07:21:22 +0000
Received: from BN6PR11MB1556.namprd11.prod.outlook.com
 ([fe80::2456:8e42:50b:b49d]) by BN6PR11MB1556.namprd11.prod.outlook.com
 ([fe80::2456:8e42:50b:b49d%3]) with mapi id 15.20.4995.027; Fri, 25 Feb 2022
 07:21:22 +0000
Message-ID: <16f07cfe-363e-3ced-1cde-fd2f46ca4c3d@intel.com>
Date: Thu, 24 Feb 2022 23:21:19 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-8-alan.previn.teres.alexis@intel.com>
 <20220211013629.GA34157@unerlige-ril-10.165.21.154>
 <df189b62fad353301c33ea2c37fba1391e11a6d7.camel@intel.com>
 <20220217192139.GH34157@unerlige-ril-10.165.21.154>
Content-Language: en-US
In-Reply-To: <20220217192139.GH34157@unerlige-ril-10.165.21.154>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0121.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::6) To BN6PR11MB1556.namprd11.prod.outlook.com
 (2603:10b6:405:d::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e4754ec2-a9d9-40e0-134a-08d9f82f6cce
X-MS-TrafficTypeDiagnostic: DM5PR11MB1308:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR11MB1308FF573FEE461880909E4E8A3E9@DM5PR11MB1308.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4pKlviyuWDSdx+teukV/sl32ktdmzouEgnE/+1Z2YWF15AbLJpMEamL6Mmc8KO/vBPQq0oGUS1RC66mEkopXSsdsHhU0sOx+6oi1DayIKixruPMuHpjIlvjeTUYDjjEK9Nf5ku9ECLygqF7tbI1DZWWzOVeXaFNCxdk7sRSjMC00CXIZ3Iz9TbCG5/BNlyUWfdm7MdnNFWov72yTCJfZowMh0365XkigM9EjKNiwGp8RsoV6NJkAgsT9jV4lHotwNnXHx39qiw0WXVSr/I53onjXVZyVvGUJn1EzF8Nxvy1Rwm2IGcq1S/bdGupRWc0rzmsUSdi3hgcdWaRy0oJ9yAsRE4SLAIo+SDiQBMwlIlntFaJgqCRSTWLTHiongGZgRAi2WHtzHV/rSNhk1r41WKBPqvj7XFNUVPEBZysrPQoANd/VNgp2mpjliXkdBOL85WfHNJEJzbr0K7S5+xw3JapzrD3ifObKMiPzf8PLd/VajF2f51fBUmfxnPWDs64FGyM5vLwE99eCX+Szp2yASdPigovkvQm/wcvybIpovnkZGwTQHpHhn/a9280vpy1LLEpPCZ7J1WLDH9+fN4eT8ScH0fmRsxsA0GxwQTYLX6CadvxbuE5V8bus3AnBo8Lz84wxOr5Q/dvEkxIL66BYKPd3v8TRpoN292WptturXWJ0LVuDqHZDE1LjO3yCRUBjDOXPMD1zjlwBCa6MItKP2djTIXPRijj3J80j0KWRjFY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(36756003)(6506007)(6486002)(31686004)(6666004)(107886003)(6916009)(53546011)(82960400001)(186003)(316002)(26005)(8676002)(38100700002)(83380400001)(4326008)(66556008)(2616005)(66476007)(66946007)(2906002)(6512007)(5660300002)(15650500001)(31696002)(8936002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlJsWjN0SnFIdG1uT3Jkb1BJM3ZGTTF1cXY2UHZRdXM0aTYxVmNrZjJnRDhz?=
 =?utf-8?B?Qks4NnZZOHV0YUNCMExBZ25jaWQ5NkxqSS82SUZSN1JndWFhN3hpaVpEc05X?=
 =?utf-8?B?QmFuSDVHQi90SFRWZHJoeXZsNzZPODRKUnBIWklJbkJoS1RTeWpDbFd0Qy80?=
 =?utf-8?B?Q2RJYWFzaHJFZEtaQ3c4b2hpb0FCL1F0aHptZHRZanhzWE5xRWd4bFNrVzBN?=
 =?utf-8?B?SkRFR1RjSmoyUm9XQ0NrS1ZiSjk4eHNJOXl1dlVCMytoQ1FDcCtBMXVUWTF3?=
 =?utf-8?B?aXR3TE5NS3lSYmNWY1B0d01YYnF5blJhWnN4Ylc5em5DZ0FRNlMzM2RuVk1o?=
 =?utf-8?B?WUN5aWpmY2I3Qmxkc1NLcDNNNzdtM25UZy9XWFUxeEdCcWRvNEpWbjRSNzRx?=
 =?utf-8?B?eWlhaUFmWDJUbWtMTkVkMy8wS2phZkNlN2hlR3J6Z0htNlNYSEhlbWc5NkpL?=
 =?utf-8?B?ZHUwckwreWE0WTJBSFNpVXBSYU95TlZOVmdicDMyYUlsa2NmU2wrZVJ2OFRa?=
 =?utf-8?B?QzR0OTIzWllSYjhEQXEzejFLZ2wyTVhhKzh0WkxGejN5bDZmcDJOQS9rdkxU?=
 =?utf-8?B?VXdMVzFhUFkydXFXclEvWWNIcWhQY2FWM0FDUTNoTnJEVHdNZHpxaEczVWhl?=
 =?utf-8?B?WGZ3VnlZKzV6ZEo1Yy9WM0pJMEN5NzVNM1RPNWcwYWExcTluV1ljSGs1YmRz?=
 =?utf-8?B?a0U4WFc4S3dTcjA1a0E5UzFrUkFCUmJqc1NJMFVKK2s0N3hSbDJaU0p3VHRF?=
 =?utf-8?B?bHB6bVdIYk5SVnpOQnVZOFRUVC9uZG5VUHZLRkdObnpmZUhiZDJaQmx2SXJD?=
 =?utf-8?B?WWU4RFFQRDgrK01xVVBTWnMyZzluc0JsbEd1bzdwclA3ak9IdndEUW9ndHRJ?=
 =?utf-8?B?S1NEcHV1ekJMWkdwSzBLSzJrU3pkbjNveEQrS2t0OTR3dWhtZGN0NjFkN2xj?=
 =?utf-8?B?dHVFOUtOSUVGZXdpZit6VU5WYklNd1pNZW5Rd1pQb012SnFVbmp6cEtUbTkv?=
 =?utf-8?B?UXVMZDRvUzQ2MlVHQjhaSVlQYVY1Wm5PdEpWTHZjc2hiUXVieFNvU3FMOUM1?=
 =?utf-8?B?MVgzT0EybXF6VllGQ3FLU1JOZTdQM09ncEVReGFPMTlCUUU5OUUzVklYT3pM?=
 =?utf-8?B?SmZta2Y2cVhQMmhhMEZXSUp5Mmk0RzlZR0hvK3RKRmlBck5UT05JVGtiMTF6?=
 =?utf-8?B?Umk3ZVBZOXZnR0RtSWpUNXNmMFhSMFZGaTBmTGtWbUJXd0o2RTZ0c1ByanFq?=
 =?utf-8?B?N2Ird3IvZDRhakVKL3BzeFVSWHpMY1U0aXpoS1pvd2RJRWdnbW92WnVSRUo1?=
 =?utf-8?B?SmlBeGtubGxubVVBQlh1eDNDVVhRYUtEOXdSd2szaUpobytacXBqZkRIaHdT?=
 =?utf-8?B?ZGtFSVFKSmRSZHl1YkxUbkw5aVlFU2RWSzAzNmJ2VVRPYnVFTVNJMi9sUit1?=
 =?utf-8?B?M0kvME44SGo0SndmN1VuLzNaWmpwREVUSm84dVJycjNJTDVxOVdkQXFKNlVs?=
 =?utf-8?B?bFRRQnpER2JQMTl0MDhKNkdLV2gxeUtLRjJQRlZ6eVBPSU9LWHB5QzlRQXQ5?=
 =?utf-8?B?UW9NUWJpSnhZdU5RSWliWVRieUVRbTdWUWNLNjk1MWRIYVphRDhWa1EyQmM3?=
 =?utf-8?B?WTVIZDU3cVRXR1o4WEszTWlkVnRGbGJZTThLd3dNNmp1VTNLQTllVTdlNE5m?=
 =?utf-8?B?cUVuWHB2WjAzQkU3RXlsdnJGMTh2bzl5UFlacDJoblo1L2tPKyt6NzVaRjRa?=
 =?utf-8?B?Y2ZPZE5JblpXQmRrNko3U3orSTZobjBWRkZGS0J6ODhkTWloY2RqdDIwbEpa?=
 =?utf-8?B?cG9oRVVBMFVnY1RSOFpJL2M2Mk9rNWlCaDA3NmJkbWRuVkYrTDNPeUo0OHFV?=
 =?utf-8?B?dmhZdjY5cENHTzBPZmpLYXhMRmUvTi9MZW5uZE13SE1OT3Rub2xReVdMSFZ0?=
 =?utf-8?B?YUhTcG13RVBjdXNLSnpSWjdMMVkzZE84SzBjRmEyRDBVcDZ2ODVMMTdCblhk?=
 =?utf-8?B?aUFpajNUczBGNENnOHJXRjF4NS9PaXhrVmdwdlMzSU5wRVI4dHcwb1oxTjRW?=
 =?utf-8?B?Y2lqTDBIL2dPbWpyS3YweHdRcVR5bVRWcVhCSUsyaC9Ga0x0TWRqK0Y5SFRP?=
 =?utf-8?B?eDl1VnpFa0lWajE5MmV0S3RQZFpSUXdBNHRWMXkrNFBzbkVvNmloY0VyNjFK?=
 =?utf-8?B?elczcFhkK2l0SmZCdlo2WFV3eVowS1k4THA3YWFhL3AxYXhWcVZNVWxFSzhl?=
 =?utf-8?B?SkNMSDhhbmpWVXR3ZjN1NWJUcFZ4TjBBM1dHVkJxb1NIdWk2OHhqQnJrbTNF?=
 =?utf-8?B?SE5URGZjdE9sTjl6cUtOQ0hmWTR0dW8zcnFZUFdDWk5FemVGVkh5dz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4754ec2-a9d9-40e0-134a-08d9f82f6cce
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 07:21:22.4888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZjIDYNzRWmIAip1t6bvJ/NzzW+TU3uz1G7Wf8KboEbOCp4Iw+b1NWO/HCms6tssI4q1snMn8bWUNm8HDgTbVCdvwTYSJQSYE5x0e6fsKM1NEZtFeuzhFhr6CGg7uJDvE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1308
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915/guc: Extract GuC error
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

Folks, a brief update: over the last few weeks of internal reviews,
testing and debug, another redesign has been implemented for this
patch (the extraction of error capture information). When
experiencing back to back error capture notifications (as part of
multiple dependent engine resets), if a forced full GT reset comes
in at the same time (from either the heartbeat or the user forced
reset debugfs or the igt_core cleanup) GT reset code takes the reset
lock and later calls guc_submission_reset_prepare. This function
flushes the ct processing worker queue for handling G2H events.
intel_guc_capture gets called to extract new error capture data from
the guc-log buffer but is actually in the midst of a reset ..
this causes lockdep issues (the memory shrinker vs reset locks).
Checking for uc->reset_in_progress is racy. That said, the
extraction code (this patch) needs to be modified to never allocate
memory for the output 'engine-instance-capture' node. Redesign is
complete where a pool of blank nodes are allocated up front and
re-used through the life of the driver. That will be part of the
next rev.

..alan

On 2/17/2022 11:21 AM, Umesh Nerlige Ramappa wrote:
> On Sun, Feb 13, 2022 at 11:47:00AM -0800, Teres Alexis, Alan Previn 
> wrote:
>> Thanks Umesh for reviewing the patch.
>> Am fixing all the rest but a couple of comments.
>> Responses to the latter and other questions below:
>>
>> ...alan
>>
>>> > +enum intel_guc_state_capture_event_status {
>>> > +   INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_SUCCESS = 0x0,
>>> > +   INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE = 0x1,
>>> > +};
>>> > +
>>> > +#define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK 0x1
>>>
>>> MASK is not needed. See below
>>
>> Alan: Oh wait, actually the mask for the capture status is 0x000000FF
>> (above is a typo). I'll fix above  mask and shall not change the
>> code below because the upper 24 bits of the first dword of this msg
>> is not defined.
>>
>> ...
>>
>>
>>> > +static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
>>> > +{
>>> > +   if (buf->rd == buf->wr)
>>> > +           return 0;
>>> > +   if (buf->wr > buf->rd)
>>> > +           return (buf->wr - buf->rd);
>>> > +   return (buf->size - buf->rd) + buf->wr;
>>> > +}
>>>
>>> Is this a circular buffer shared between GuC and kmd? Since the size is
>>> a power of 2, the above function is simply:
>>>
>> Alan: not this is not a circular buffer, so I'll keep the above
>> version.
>>> static u32 guc_capture_buf_count(struct __guc_capture_bufstate *buf)
>>> {
>>>       return (buf->wr - buf->rd) & (buf->size - 1);
>>> }
>>>
>>
>> ...
>>
>>> > +static int
>>> > +guc_capture_log_remove_dw(struct intel_guc *guc, struct 
>>> __guc_capture_bufstate *buf,
>>> > +                     u32 *dw)
>>> > +{
>>> > +   struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>>> > +   int tries = 2;
>>> > +   int avail = 0;
>>> > +   u32 *src_data;
>>> > +
>>> > +   if (!guc_capture_buf_cnt(buf))
>>> > +           return 0;
>>> > +
>>> > +   while (tries--) {
>>> > +           avail = guc_capture_buf_cnt_to_end(buf);
>>>
>>> Shouldn't this be avail = guc_capture_buf_cnt(buf)?
>>>
>>
>> Alan : The "guc_capture_log_get_[foo]" functions only call above
>> guc_capture_log_remove_dw when there isnt sufficient space to
>> copy out an entire structure from the space between the read pointer
>> and the end of the subregion (before the wrap-around). Those function
>> would populate the structure dword by dword by calling above func.
>> (NOTE the buffer and all error capture output structs are dword
>> aligned). Thats why above function tries twice and resets buf->rd = 0
>> if we find no space left at the end of the subregion (i.e. need to
>> wrap around) - which can only be done by calling
>> "guc_capture_buf_cnt_to_end".
>>
>> ...
>>
>>> > +
>>> > +   /* Bookkeeping stuff */
>>> > +   guc->log_state[GUC_CAPTURE_LOG_BUFFER].flush += 
>>> log_buf_state_local.flush_to_file;
>>> > +   new_overflow = intel_guc_check_log_buf_overflow(guc,
>>> > + &guc->log_state[GUC_CAPTURE_LOG_BUFFER],
>>> > + full_count);
>>>
>>> I am not sure how the overflow logic works here and whether it is
>>> applicable to the error capture buffer. Is the guc log buffer one big
>>> buffer where the error capture is just a portion of that buffer? If so,
>>> is the wrap around applicable to just the errorcapture buffer or to the
>>> whole buffer?
>>>
>> Alan: Yes, the guc log buffer is one big log buffer but there are 3 
>> independent
>> subregions within that are populated with different content and are used
>> in different ways and timings. Each guc-log subregion (general-logs,
>> crash-dump and error-capture) has it's own read and write pointers.
>
> got it. I would also put this one detail in the commit message since 
> it's not quickly inferred.
>
>>
>>
>>> Also what is the wrap_offset field in struct guc_log_buffer_state?
>>
>> Alan: This is the byte offset of a location in the subregion that is 
>> the 1st byte
>> after the last valid guc entry written by Guc firmware before a 
>> wraparound
>> was done. This would generate a tiny hole at the end of the subregion 
>> for better
>> cacheline alignment when flushing entries into the subregion. However,
>> the error-capture subregion is dword aligned and all of the output 
>> structures
>> used for error-capture are also dword aligned so this can never 
>> happen for the
>> error-capture subregion.
>>
> Makes sense, thanks for clarifying.
>
> Umesh
>>
>>>
> .
