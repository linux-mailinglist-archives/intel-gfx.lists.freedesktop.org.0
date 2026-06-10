Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 235kN0xhKWoSWAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 15:06:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB7B66993E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 15:06:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=CbrBFi2l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8E210E958;
	Wed, 10 Jun 2026 13:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011024.outbound.protection.outlook.com [40.107.208.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6273310E935;
 Wed, 10 Jun 2026 13:06:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SoYnEsbkV1HMO+FUHWHiTtV0OVSY8BwhA7Ye2g16V3SPO9JwLBq1WrF/l97uMCzkI+wOJtBrt6N67OdYOXFAtmFetWBCE5q1EwQdsM6DhZxrYhDH8jqH3HEKiooDQacZxNdmsWId+/B36i7i6385BLoNTsm/OSoTrPXc9WgkWL1lc9TxhAogTG8j/Bp3/8d4UFRxZISM2GBULkS1WK75FTl8oWK2tgkUCR/PobpHBqrmt7lyeGg3dTRzsslyjlDpzE8WACzxJlar6c7TExAKGbSKKhAl3coRnwNm1sce3pyXSuxYHgWsipphGaqayhXHjlSXNHsI3/Lg3xZkX2Doag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+WhaMjuvhttWgdGKlfCKnrUBuAW2xrNqRst8mU/gkk=;
 b=nhEiC0NM6a1CZM3TpsVsrNk5h2n+lngWzkM8o7oKJC1bM5o8aQujt070EK4XYUlpPR0oHYPJfzxpRKpse15REk1RUH60uzxPOYEpNG72auQnmwqxnQ9znnPbCtstl8DndRrd9BSt57BYOtQuajDvObeMbWKWlvq+IGdFwNjq1jAKkOXg3YesQ0mO8LbFVQHwbqgHAY3Hia3LJ5QACZjWOe9eouPZwxCke3kZPpAudIF3aHzpm1n1pm9rzMAC/BTXf+O3B20Xa8oTKcJOk6bxzSBgoaPm1VwT+WOriPpqSG9HEFJpeiybOcC4U3BJhURHIhiOHfIdGw7hbJ9KfPIStw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+WhaMjuvhttWgdGKlfCKnrUBuAW2xrNqRst8mU/gkk=;
 b=CbrBFi2l/Eprd45IaEfm8pZ18YO+0rYr1JK5jT5Gs8IiHcx1lPsHkOkNDPnUAJKFZdWqUpiNmwrTvNZZzxSs8BgKp/KouZ4K1+s7i4eZ37uC+q8YMD8KwwqlpRBv9wgZodwqe49o62dbxnzGhBqLphuElmE9pNaXQ+eNCTfAx88=
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11) by CH2PR12MB4294.namprd12.prod.outlook.com
 (2603:10b6:610:a9::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Wed, 10 Jun
 2026 13:06:11 +0000
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8]) by EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8%4]) with mapi id 15.21.0071.011; Wed, 10 Jun 2026
 13:06:11 +0000
Message-ID: <6ab93f55-0643-4518-9aaa-b12d55f8ccb4@amd.com>
Date: Wed, 10 Jun 2026 18:36:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: Matthew Auld <matthew.auld@intel.com>, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
 <c9cdcf8a-d531-4e79-a238-97fd39b8c108@intel.com>
 <9b0add60-9bca-44dc-a95d-be289ea2d3c1@amd.com>
 <3ba98ec2-ea1f-4074-b1cc-456fca283ef8@intel.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <3ba98ec2-ea1f-4074-b1cc-456fca283ef8@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN4PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:273::8) To EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: EAYPR12MB999132:EE_|CH2PR12MB4294:EE_
X-MS-Office365-Filtering-Correlation-Id: 032f56e8-8def-4a6f-b146-08dec6f109fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|18002099003|22082099003|56012099006|4143699003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: TX0zQsf9ebiIlN5Kfp6ohbN/KDBlsbi1/eIgw795JuKINKj5D/og6ztIW4BBDgNRV+BOf3ktG/Nw9thTBQc8D6ixWyFjyl9sR87DGw40brVhhLDQZXK1CXPtg6TeXFxi+juN68UjFklcroQ8o9tscDiQ3NZXtXGVN6N/bIRIKNVTKMHxIJ7ZSyanI307dQCKT0RUURWKBGz+JW3HNIn4d4oskM37PUsHIr8cCpmNfro9uaVUZqGozMKLiBSLXIgYYul1gStt0L72ayCst54ERHyqUxUNnixpBsjFRgIUDWH6EhRvyYsQhe20OnXtnC4lfnLouTBW4atRqSrWensKIXzlEXCjuSMu9PXYb0HFlt4FVO0HUMmhVCJpSYjoOBRPOTGqMag5DeE0YOZwldwEWx/uAJHLjeg0skefMCcoWNHAh5FvzXHvvu8GCP2WgXZdB4lZ8/o2VqvpL0i4w/PHnlazWBILV5GCzuLp96/5zTHzW7ersImGyQZvQKZFGferK7EULEHFO0z2Zl0GcP/ZTiVwNCRL5FNXcfM8zNdxQLA2FwLX/Ml/ICNYLP7A4rM6JJqlpdyx6dw1q/a3NpV53YtIu2sn+Cct4r2FeARBWsMR2Rg2+EFuMRy7Vtpw5CFhG3qLPvreF+qyeXnugrQCrEeEATRj2ATcTm5B6LCWXhr5wZTvW043Cg5Y05xyuTOK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:EAYPR12MB999132.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enZabDFTUGI4M3RWVjgyUkdtSDJtU2IrclBMWktVenhIWlp2SDMvY2UzVjg3?=
 =?utf-8?B?NjEzbTVZM2hBaTQ0TW1uRjhCUHVsdjF2V3FSZlU3dldNZUtFS3ljbldJREhq?=
 =?utf-8?B?UXduMHRBbURqdVdTOCtXd3JwK2IyNFFBdXRadzVVNy83TE9aVjRwQ0N1NUtw?=
 =?utf-8?B?TDZXUXVpNlRkampvaGVYNllJRnRGVWpLVS9HU1FGbUk0bFZPakZ3QVlDRVJa?=
 =?utf-8?B?cEZBa3EzSUtydzZSV2VFM1phK3hlazluMGtUZGFHRU0rV2F0V3l2YXdyZjJ3?=
 =?utf-8?B?cWU0ZmRKWEdPbCtaUklFRHBVVTd5blN3VnBQT3BLdjJjZ1RBbVMwam0rNElq?=
 =?utf-8?B?K003WXlFbGo3RXRqNU1oVDRPMmVaK2FxckNiR0tvcVpSNzFBSlNiSGtTNC9W?=
 =?utf-8?B?V2p1TUZBSUlUR05NWGl2ek5BbVVVUFR2Kzl3ZGhSRzN5TFdpcnJWcGNGWGxE?=
 =?utf-8?B?alFMRksvSzlpczY3ZFZZczh3T1FGWG9EY2tuUWpkVmxGK3FNMFUxMlAvMmI0?=
 =?utf-8?B?SjRyZ21pY1hzNmJuSUY0Q3pTY3BEcUVJYUFjbnpiREFOZjl3Q3I4dExvdjRK?=
 =?utf-8?B?SER0QnZkRlNJZWdOMm5rd2NXK0VNWEExNmtCSXRqOGFicmpoU002bHIvUUlh?=
 =?utf-8?B?cWhWczRaSkFhODZDdVpyU3VWSC94Wlc5ektZaHBSSS85ejQ0Z0pXbGdWRnc0?=
 =?utf-8?B?VFc2MUhZMjg0b0RjQTdnU243aDkxSFVlRkdxTUMvQUQ5RzJqaE1hTjNWcERZ?=
 =?utf-8?B?NjhUMnZLRjBmbUFZU2x4K2FUWXJCd0h1aUVEdzB1dmpzL05wMU9iUEdDLy91?=
 =?utf-8?B?aXl5akZkQjFEK1lmUTlmczVGTGswWGNKVVNVSXROR2JoVUtYVnQvQzFrMExv?=
 =?utf-8?B?d3E1SUpLcG1lNzNpbTdvNWJiaFQ5aGV4YndncjU0YnFrSW50d3JsOUFWbnpP?=
 =?utf-8?B?bFl6SmEyVktMc0c1TjdLODMrQzVScFYybStMWnE5c0QvbmFFWmxQZDhDUW1R?=
 =?utf-8?B?Y2pHQjVWSFErN1ZTT2FwOWpyeGgyV0l4RzNWSFZjQ2VpOWI0ejlzSDVSb3E0?=
 =?utf-8?B?Uk5HUEkxdnQ1bnNESSs0VC9Td2Zpc2dsWm5kMVRDL3o1Vm50d2preEVnMDc1?=
 =?utf-8?B?anJqbjJwN2U0SzYydXBoMHFJczQ4WE50SC9HQkVFOE02TTlaZU9hVHdEajFs?=
 =?utf-8?B?cWdaRTlyM2FleCtWdUV2WjZpdXBEWFkrd0VHZ2Q3UlJaYW9ObElXL1VBTFhV?=
 =?utf-8?B?TEtqVUUwemY4QjZydExxMVR5R3dqQkRkc0VVMUFVWG45NUFuaDllb3lYTUdh?=
 =?utf-8?B?anhoZFp3TlhCaG91aHp4YlBJOVlQbC9oT01GNGUrOFJsOTQ4dGRoa3l3WXk1?=
 =?utf-8?B?TGx0YnhCNU9WY3Vyck5JWWh6MURrK0xCeVM0ajVqNlRwOXkxY0RHUitHU25B?=
 =?utf-8?B?dGJpcURTL0o1YmN6U1hLeFJUOHZwblQ2ZTI0YStlZEV1ay95bUhMSTZ0Qjda?=
 =?utf-8?B?TnZWaXN1YWhKOStOTW5TeVFoL3Q0M2p3aTVwQ0J4cjczazdQaVNGdWJxQ2xB?=
 =?utf-8?B?SVNMU2xhaiszK0NmMGxsVHprWHlic0tzRlUzWWdoMW5sblRueTBwSDNnMFZq?=
 =?utf-8?B?eTF0dUVLNFluR2RnOUswMjdUWjY2WWk4YkNzMXlPNXBSbnNoYmp6SGxocWJD?=
 =?utf-8?B?U1lvakdneXA0Z2oxanZQMWY2Qyt0MVNhWTVzZUJvQkxjcFlOL1BudUtTS2Z4?=
 =?utf-8?B?TlJYdmx3SEtZVm90YW00UnlwWFZuMWt2WFFtdzIyMERaWmRiczZFM0NJQWJL?=
 =?utf-8?B?ajFvMlR4cXA2OTZoMHVqRFNMVUtoVzFMVmltZkVZbWpNSmVxU2xCWlVOcDFa?=
 =?utf-8?B?a2pLYWk4VnR3bnY4Y052VHdHWjlWU0VLdi9CQWJDVjlHeHVpQWI0THBVeUFx?=
 =?utf-8?B?NzZOampyTDFQeUUvZWZaWTRweWYyL1lyb3J6NHFvMzB4RUxsaTRUTk9vamtO?=
 =?utf-8?B?RG4xQ3JjN1RzRERDU0Q1TWtSRndSNVE0ZE9qVlk0Kzk2WDdVK25CZWNMSk41?=
 =?utf-8?B?OExZVWRIZDVLL2tKOUVaWUorUUpvS0V6N2VES1IxSklSa0RFanpNM1NCRWVE?=
 =?utf-8?B?SnR5NHhlK3h4dGs1NHJ2dmtuUUYvdGQ3a1pxWi85SVMvVUhQSUtTRndXblAx?=
 =?utf-8?B?dXJ2V2xXc0ZMQ0h0RnlGU1N1Rnk4S3FGa0t0b1puRG82bFBqSlRrQmIvSXJV?=
 =?utf-8?B?cXJUa0htYXNxZlV2cjNqZ21oek5iUmtQV0FNbmRZczB6R2lRSWlqSVpXS3Ar?=
 =?utf-8?B?QzNraGE4bFRHNG16cW1BcVMwQ0I0TlNsL29oYnpHVHNSRjFDTkl5UT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 032f56e8-8def-4a6f-b146-08dec6f109fa
X-MS-Exchange-CrossTenant-AuthSource: EAYPR12MB999132.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 13:06:11.2995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JHPNkMBLL8ETA5X2CrdMcPPYgU5BNsn6oR0XTJXBtkSNCv/KTq81MK2GiXE9zQAeLL/y9UrhLs7cBJ+OE5bHwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4294
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FB7B66993E



On 6/10/2026 2:49 PM, Matthew Auld wrote:
> On 01/06/2026 11:51, Arunpravin Paneer Selvam wrote:
>>
>>
>> On 5/29/2026 11:11 PM, Matthew Auld wrote:
>>> Hi,
>>>
>>> On 27/05/2026 12:29, Arunpravin Paneer Selvam wrote:
>>>> The current buddy allocator maintains separate clear_tree[] and
>>>> dirty_tree[] rbtrees per order, preventing coalescing between cleared
>>>> and dirty buddies. Under mixed workloads, this creates a merge 
>>>> barrier:
>>>> adjacent buddies frequently end up split across trees, forcing 
>>>> reliance
>>>> on __force_merge() during allocation.
>>>>
>>>> __force_merge() performs an O(N x max_order) scan under the VRAM 
>>>> manager
>>>> lock, leading to allocation stalls and failures for large contiguous
>>>> requests even when sufficient total free memory is available.
>>>
>>> So is this contig with non power-of-two sizes?
>> Both power-of-two and non-power-of-two contiguous requests are 
>> affected - in either case, the required higher-order block can't form 
>> when its lower-order buddies are separated by clear/dirty state 
>> across the dual trees. But the core issue we are seeing is VRAM 
>> fragmentation caused by massive small allocations (e.g., thousands of 
>> 4 KiB–8 KiB buffers) that end up split across clear and dirty trees, 
>> preventing buddy coalescing. This leads to allocation failures and 
>> OOM in later workloads even when sufficient total free VRAM is 
>> available.
>>>
>>> Do we know if we could force_merge everything in one go or somehow 
>>> be more aggressive and do more than needed now, at the first sign of 
>>> contention here, instead of doing it piecemeal? Downside would be 
>>> losing more of the clear tracking, when this happens, but more re- 
>>> merging.
>>>
>>> Could we have another per-order list, of all blocks that we failed 
>>> to merge, when we did the free step? When doing the force merge 
>>> step, we maybe don't need to search blindly and can focus instead on 
>>> the stuff tracked in those lists? Maybe it doesn't need to be a 
>>> list, but could be another rb-tree?
>>>
>>> We know the size of the total allocation, if we trigger force_merge, 
>>> could we try to merge enough in one go for the entire allocation, 
>>> instead of restarting the entire thing on the next iteration? Would 
>>> that help at all?
>>>
>>> But I guess these are more for the stalling side, and won't help 
>>> much with the contig angle?
>> The memory is highly fragmented into mostly 4 KiB chunks and small 
>> scattered blocks across the dual trees, so although total free memory 
>> exists, it is split into low-order fragments. The workload then 
>> requests very large contiguous allocations (tens of GBs, e.g., ~64 
>> GiB), which fail with OOM because the allocator cannot form 
>> sufficiently large high- order blocks from the fragmented space. We 
>> could go with more aggressive merging or merge-in-one-go approaches, 
>> but this might waste more cleared memory. I think fundamentally the 
>> buddy allocator should be allowed to merge unconditionally - the 
>> single-tree approach with unconditional coalescing would improve the 
>> fragmentation and benefit contiguous allocations along with 
>> addressing the stalling and latency issues.
>>>
>>> For the extent idea, is there any merit in maybe doing this for all 
>>> contig blobs, and not just cleared stuff? Or is the workload you are 
>>> seeing only benefit users that want cleared stuff? Wondering if this 
>>> would benefit all users that want contig? Like if we hypothetically 
>>> kept clear and dirty separate, like we do now, but with an improved 
>>> force_merge, and then have extent tracking for all contig blobs and 
>>> replace the try_harder stuff? When you do a contig alloc, the 
>>> individual clear/dirty is still all there within the range, so you 
>>> can skip re-clearing in some cases. I guess downside is overall more 
>>> fuzzy contig + clear/free path, but I guess you would never get 
>>> allocation failures, when there is sufficient contig space?
>> Yes, extending extent tracking to all contig allocations has merit, 
>> but the core problem remains - with the dual-tree design, we still 
>> need force_merge to undo the clear/dirty split before those extents 
>> can form. In cases like heavy small-allocation workloads (thousands 
>> of 4 KiB buffers) running first, the memory ends up massively 
>> fragmented across both trees. When a very large contiguous allocation 
>> (e.g., ~64 GiB) comes in later, the allocator fails with OOM even 
>> though sufficient total free memory exists, because the extent 
>> tracker can't find a contiguous range that was never allowed to merge 
>> in the first place. I think the dirty/clear split is fundamentally 
>> the problem - allowing the buddy allocator to merge unconditionally 
>> removes this barrier, and the clear tracker can then be layered on 
>> top as an optimization without blocking coalescing.
>>>
>>>>
>>>> Solution
>>>>
>>>> Replace the dual-tree design with:
>>>> - A single free_tree[order] rbtree for dirty and mixed free blocks
>>>>    (fully cleared free blocks float outside this tree)
>>>> - A lightweight out-of-band clear tracker (gpu_clear_tracker)
>>>>
>>>> Fully cleared free blocks are tracked outside the buddy trees using an
>>>> augmented interval rbtree, enabling O(log E) lookup of the largest
>>>> cleared extents.
>>>>
>>>> Buddy coalescing is now unconditional in __gpu_buddy_free(), 
>>>> regardless
>>>> of clear/dirty state. This removes the merge barrier and eliminates 
>>>> the
>>>> need for __force_merge().
>>>>
>>>> Benefits
>>>>
>>>> - Correct high-order allocations after mixed clear/dirty workloads
>>>> - Elimination of O(N x max_order) merge cost from the allocation path
>>>> - O(log E) cleared-extent lookup replacing O(N) scans
>>>> - Predictable allocation latency under fragmentation
>>>> - Reduced complexity with a single tree per order
>>>
>>> Since there is no separate tracking for dirty stuff, is the non- 
>>> cleared alloc path a bit more "fuzzy" now, with it potentially 
>>> stealing cleared memory, or is it the same behaviour still?
>> Right, on v4, the dirty and mixed (partially cleared) blocks are 
>> allocated for the non-cleared alloc path, which can end up stealing 
>> cleared memory. On v5, I plan to address this with a three-tier dirty 
>> allocation fallback: dirty → mixed → clear, driven by rbtree augment 
>> bits (subtree_has_dirty, subtree_has_mixed), each pass O(log N). The 
>> split-descent also applies the same preference at every level when 
>> carving a higher-order block, so cleared memory is preserved as much 
>> as possible and only used as a last resort.
>> Thoughts ?
>
> No objections from me. Do you want me to still look at v4 in depth, or 
> wait for v5? I only really looked at this from high level.
I will send the v5. Please review the next version.

Thanks,
Arun.
>
>>>
>>> For drivers that don't use free tracking, is there some benefit? Are 
>>> there any downsides there? I assume that clear tracker is always empty.
>> Correct, for drivers that don't clear memory, the clear tracker is 
>> always empty and they simply allocate from the free_tree[]. Benefits:
>>
>> Single tree per order instead of dual trees (fewer rbtree operations)
>> No force_merge path at all (unconditional coalescing at free time)
>> Simpler code path overall
>>
>> No real downsides - the clear tracker adds zero overhead when empty, 
>> and the augment bits would simply show all blocks as dirty, so the 
>> walk degenerates to a normal rbtree lookup with no extra cost.
>>
>> Regards,
>> Arun.
>>
>>
>

