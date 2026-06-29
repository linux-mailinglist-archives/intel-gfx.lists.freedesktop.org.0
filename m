Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T89ZOAgcQmqG0QkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 09:17:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708F96D6E16
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 09:17:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=CZgU6lYS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929AB10E726;
	Mon, 29 Jun 2026 07:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010001.outbound.protection.outlook.com
 [40.93.198.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7833410E71F;
 Mon, 29 Jun 2026 07:17:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dAIJH77FUedHUCFENHteeKzAS5MGydDedJirRvvl0nCQK+jN/CFjgLd23OXKdFRGthXk3gIbtiCGE2Gcw5uVy98FQOww5lD1w93gR8BgXOXNiyrXQMjPsh9YqKnl1G8GTDzanlcK7S33C0f/nV5lyt1e+SUKc0u6uIKG7Dyb/H+tp9y6HVhFSFm+zyVH6RF8zvYj+BpUUB8v5SqSKdBL4Z5Fmc+FbGlSqR30SWghU6Igh3c6cmLEAYBzi3VYfT/7/78GBvNWoY3JWyn2HWz9mIM14jlsjUX4cuYwl1XNWXap0e8ddVrD91Soi8hvBS+Y/nVxWjwVci+PEFMc7j4L0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8Ue8ruBUM3So0yR+Ftgl8cKq6bqCTwNlWBnLd6sjRY=;
 b=b5YOqTu49CuGlYaerhx5Y7HHzkXOmq6BpFghi3OeNPL/8MbrpO17XWiEfLqluZP0e08b9YgOx4Kn30D53dDr9bHNPmCfSx2j326dckwwIDNgNvk9+bwWq9dyEDHlEd863vhQKTnSv1ihnNgwqsVLtJYRsofS52gurljAyjEBTd6vIhzg5jXEJt1UwPBkNUVvYNI1y+DrAfU9Hg6R6NOD9YYFNtmosaPODwT0+1sIv7+FIP4sWYZ11G2wz7DBtnNINQ0NbI8t8W7IYE8JkGPR4v2sIqhgnsU75Gmb1UvvUKqLeG5gjGcWf6OIsNFmfcubMeS/A5txlmDrbMxt+nO4kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8Ue8ruBUM3So0yR+Ftgl8cKq6bqCTwNlWBnLd6sjRY=;
 b=CZgU6lYSKbXR0NWc8/xlopmBw9AOheJrB5kg0Wa9lGUEVxlOBtSTovVX1GnxE1/AkMKtalmLUdjlUjkGGxz2DUSD6VEbaBHKiCM0u/KV2tIYP4d7aob2N/z9QCyW0W1sk6XB8lu+RIKnTy10I6s4irvjCNV1qkrn5hZ8NaWzcFc=
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11) by SJ2PR12MB8956.namprd12.prod.outlook.com
 (2603:10b6:a03:53a::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Mon, 29 Jun
 2026 07:17:21 +0000
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8]) by EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8%4]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 07:17:19 +0000
Message-ID: <c930b53d-6cb2-4d0c-9d3d-f895377649a8@amd.com>
Date: Mon, 29 Jun 2026 12:47:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gpu/buddy: bail out of try_harder when alignment cannot
 be honoured
To: Matthew Auld <matthew.auld@intel.com>, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com, =?UTF-8?Q?Timur_Krist=C3=B3f?=
 <timur.kristof@gmail.com>, John Olender <john.olender@gmail.com>,
 stable@vger.kernel.org
References: <20260618124755.2751205-1-Arunpravin.PaneerSelvam@amd.com>
 <4c7300dc-ab5e-464f-9704-d8da378ee1af@intel.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <4c7300dc-ab5e-464f-9704-d8da378ee1af@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0244.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::10) To EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: EAYPR12MB999132:EE_|SJ2PR12MB8956:EE_
X-MS-Office365-Filtering-Correlation-Id: 920b7734-c32d-41c8-272b-08ded5ae7497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|6133799003|4143699003|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: wUq/JbFb6IIZIEmK0+dQC1g8zxYTlmpt04UWgHwvlreCxOD1sKgtx7n/l9/1XVOjmibB2M7d4OHFin77eXuKfCIJQKfgj5/uuU8zx1TRL4ds3ib7VZc2W49tnE9vsTnCGn2tB2R/Iq0EW2nO7PaOahn1g6meTjleU4+6La/pXhRWcxWyYLtyrNZM++nFrkTH/rdOxiKZxzY7NZePH1EuTsiM3OM++5yZTF/zZ20OiAJ7Ak+XO17ILFcD+GykRRGvzHandc1O9n1iM7JZm4IkAnjDxLGE9tmv5Y0Er41ppCm3QMZkNvOo9AQvA9k3pn9OfdLr4o9jIhJg5kXJSAX80Y5HsjHmtdAuzSmRVhLew2d0emM7oUjXgzThUdsWVP8C20YHCKrtjWIjlMT7v40w5nv3+FsW51rOyoTma5te+DfVkJdgzX4Z8XtsKEmR9xg2dWs/K2ALiDc4q0+oT852fjbViTNQb3Z7O6JQrWTBWPiaKmZUpRpBFHc/9b6qYNGbvTgBIfKR4z98MNhDuNMnvts/a5+KwWxglPzcslTfPO8kKRniTO1iqomnpQAreeHD8NMP0qtgauSuNUfeLec9mFC4zPncOTTVFaURV/hktztZlXmFHNZ4hke8GaHgtFlSzeq07k8HUlpEjteoJqom75V7jlsnYuP7CuAX0Jk5NSY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:EAYPR12MB999132.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(6133799003)(4143699003)(22082099003)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qjl0RTVlMzZpL2JFbytnWlBrZFlYSTQ0azRpK0dzVVVNZmhRTnk1dUZPQjdk?=
 =?utf-8?B?bWsydENzZTBabHpOMWRsZEJ6SmJCelA1ejRkVGkrbWV1cXRlVTZTMllwUGlp?=
 =?utf-8?B?dGNmSUd0Nk5XODgxeVM5Y2RpZStVZ2UyVHEySzFsVW1jUlZvRmlLMWVUeTlR?=
 =?utf-8?B?RG9BUG44ODc3aVBNbnlvY1lHSE83UENHSDlPT29NNW9COEZiTTNnZk9yWHBa?=
 =?utf-8?B?SDNIaURXeUNqUVErZ0kyV0RKeTBVUjZsSEFaY204dm85amE3RVV5TVpLdVBz?=
 =?utf-8?B?d21mMTlqMUZET2ErZk5QZENyTG96QUgyOGl4RFNYZUVFYWJzK3BhdDAwemFa?=
 =?utf-8?B?TjIzVHlIY0FSaXJxcDBlWVhhalo2clZMcDFIT1p6ZTcwNnpBVE0xamo3WUtS?=
 =?utf-8?B?TldQYnFxeHBxWFZOSnRMN3IyWno5NEg5NUtDa05XL01PUm05RGk2aERkaTNT?=
 =?utf-8?B?SjV0aTZyQVdyY1BWSTI4Q2JkajZQWTFtR1M4VWVQNW5YKzl1M1l6YjhaWWdi?=
 =?utf-8?B?Sm9rRmhDTTRMYnB0SUJiTTBBUXVoM0ZzTUowQjEzamJmTzNGOVBLcEYyS1hD?=
 =?utf-8?B?ald6K2loM1F5N2F0c0YrZEJQZWY3YU9pamNaVDdzMTNxbzJ3TUVuQ0FwdEFK?=
 =?utf-8?B?VWtYdm1IVU9mV3MvMW5ualhCT3hCYUxNeTl4eXpLV2I4WnZhaHN0TFZyVFNw?=
 =?utf-8?B?Umx0WlNJbGRvblEyTjJMSlJtZVpEdXRBVXBFamt4WjR3QUkzeUozL2g0bm9z?=
 =?utf-8?B?SEMzdUxMbXEvMmt2VGRyTUNER3pnUzhSSWlzYkpmNTFEbGViV01yYTg4ekRi?=
 =?utf-8?B?TmdlRkc4bkxUV1VEWkt6RUlhVCtqQlZDK0FxaFJzaUFWMG5XZndVMEVHOXFk?=
 =?utf-8?B?TGJFNjMvRnRUVGdGVkpZcThWajZMOVdCVDZ0TzNTSFV4U0R6U2J3U1I1YkEz?=
 =?utf-8?B?WStRcG5JYVRnNXFoS0w2R0lCWWhNSnJhSjRkWVdXOFBiTE9yZGNYVnkvOXZl?=
 =?utf-8?B?dVFTVzVwNUhtOGU4aGRzU3lvemVaSUNZUFNnODVuOUNhT2F0NHBMcUhIWGVV?=
 =?utf-8?B?SE1kNkJ3ZXJrQWJLVXRXcitKaFhKdFd3MEk4eERQN0xNMGI1YVRsRkMzTmFR?=
 =?utf-8?B?aEw5K1F0ckREY0liTlNjRlVlYytScFdySXNjSG1ybjlhTmgzRVRFM1JuQ0to?=
 =?utf-8?B?TnRhQ2R2bTVpN2c3WDROTEltU3ZVR2c4V1VkYVVDRE84T2NMUzQ2NWJGQTFK?=
 =?utf-8?B?dnhVSXU3R2tNaGJuSURKSFUrQUZkanhNejZsQittRGRSejd2dEF5TTUwYUlp?=
 =?utf-8?B?SHBudy9GbGxlNUZUL3pFUFd2NGhFa1MxQ0tUR1V2TzhVb2N3Sis3TUFuV081?=
 =?utf-8?B?VzVyT0FIaG9XNndDemg3QWdONEdva1VVYkRvTm5HZWQ2d1VmMkxOQnBiSHpq?=
 =?utf-8?B?bU1RbFZwbUZrVkVobGd4R2ZpRUZDcHErUnNVOU01VU50OW1qTzhPVFVzOGpp?=
 =?utf-8?B?OGNsaVhwL3N5Y1RrM2RwTmdVWWhNT285eEZyYnBXS1JjUUxuQTlvbndtSHJq?=
 =?utf-8?B?RFp0WkhEcWpHcmp1TVcydm5XK3loL0s3WGtwSCtoYWhvTCs2MnR3dVplQ2p0?=
 =?utf-8?B?dERtN285UFpLYXpVeHByVXF4ZjZTNVBIc1VKVW1mUWVHTi9SblFLaEVMZ3M0?=
 =?utf-8?B?V1lUMmNhVVhpQ2laSXFTcWRubXd5R1pDamtiOEtmVXJ0M1UyUXpFTW1ueDRC?=
 =?utf-8?B?a2NOamtONkNEL2tjRDhQVStENW5ZY3NYUm9GcGdqb2xWYm8zOW1rd0ZNaHZ1?=
 =?utf-8?B?c3lBeWg2YXVhcjVSN0tRczE4TjRWaVE4TEM4bTdHWFZpU25wK0U4MUVIV2di?=
 =?utf-8?B?MU1yWFNOR2RXWHkyV2JpS3lIQytCSDA3SFJVNGxHeU9QQ1NOTkdpdlVPbFVU?=
 =?utf-8?B?U1FkMHZoUkpsOFBPd1pOd2xhSDB5MEkrZWpqNTZqRTdONERuUWpyMGJ1L2kv?=
 =?utf-8?B?UFI0b3hPczFpTm9ibUtITGl5TU0vaVJ1RkZ6S0pDYnlhcFdMY016ZDJxVVl1?=
 =?utf-8?B?dXVVU2tsMks3Tk8yUTdKNFdkaXUyR3pnWFFPa1dxeWV0d3JOTEYxSFZzUzB2?=
 =?utf-8?B?SWNDYTViT0o5QjNxVWZzU1FwVXZCQzZheEI1NmpDWmF1VVVjcTN6NjlWaFZz?=
 =?utf-8?B?MWR2dEEyN3NyNmprcURBVFpLb0ovZnBFTlozTTFPS1FLN05aSEQ5emY3NWVT?=
 =?utf-8?B?cEJKbGQ2ZlEzN3RzWVZ2dG9zWEZhKzdFb2pXY1BBb1M4dld2SkZuQ2R6cEtP?=
 =?utf-8?B?a0RxSklvNGZKWGdMNVczTVdKYytGM3RIY21rYTh5akJES2NwNS9udz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 920b7734-c32d-41c8-272b-08ded5ae7497
X-MS-Exchange-CrossTenant-AuthSource: EAYPR12MB999132.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 07:17:19.7412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NfcoEhYbSogxb+TdjUBEnQwETsWchXFangtRqu5fkUct+EBraYeTVmzPnr/W7r9BhZOSle7J7Xuhu8+Sx+4B+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8956
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 708F96D6E16



On 6/19/2026 6:15 PM, Matthew Auld wrote:
> On 18/06/2026 13:47, Arunpravin Paneer Selvam wrote:
>> The try_harder contiguous fallback could return a range whose start
>> offset did not match the caller's min_block_size. Check each candidate
>> against the requested alignment and reject the allocation when no
>> candidate satisfies it, instead of handing back a misaligned range.
>>
>> Suggested-by: Christian König <christian.koenig@amd.com>
>> Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Christian König <christian.koenig@amd.com>
>> Cc: Timur Kristóf <timur.kristof@gmail.com>
>> Cc: John Olender <john.olender@gmail.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Arunpravin Paneer Selvam 
>> <Arunpravin.PaneerSelvam@amd.com>
>> ---
>>   drivers/gpu/buddy.c | 33 +++++++++++++++++++++------------
>>   1 file changed, 21 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
>> index dc81fe0301ce..28ed3250ac57 100644
>> --- a/drivers/gpu/buddy.c
>> +++ b/drivers/gpu/buddy.c
>> @@ -1127,13 +1127,11 @@ static int __alloc_contig_try_harder(struct 
>> gpu_buddy *mm,
>>       struct gpu_buddy_block *block;
>>       unsigned int tree, order;
>>       LIST_HEAD(blocks_lhs);
>> -    unsigned long pages;
>>       u64 modify_size;
>>       int err;
>>         modify_size = rounddown_pow_of_two(size);
>> -    pages = modify_size >> ilog2(mm->chunk_size);
>> -    order = fls(pages) - 1;
>> +    order = ilog2(modify_size) - ilog2(mm->chunk_size);
>>       if (order == 0)
>>           return -ENOSPC;
>>   @@ -1149,31 +1147,42 @@ static int __alloc_contig_try_harder(struct 
>> gpu_buddy *mm,
>>           while (iter) {
>>               block = rbtree_get_free_block(iter);
>>   -            /* Allocate blocks traversing RHS */
>>               rhs_offset = gpu_buddy_block_offset(block);
>> +
>> +            /* Allocate blocks traversing RHS */
>>               err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
>>                                  &filled, blocks);
>> -            if (!err || err != -ENOSPC)
>> +            if (err && err != -ENOSPC)
>>                   return err;
>> +            if (!err && IS_ALIGNED(rhs_offset, min_block_size))
>> +                return 0;
>> +            if (!err)
>
> Should we do some kind of rhs = round_down(rhs, min_block_size) at the 
> start? Just wondering if we can get something misaligned here, that 
> should have succeeded if we just applied the round_down first, in some 
> edge case?
  Done - when the whole size fits at rhs_offset but the start is 
misaligned, we drop it and realign to the min_block_size boundary below 
instead of bailing.
>
>> +                goto next;
>>   -            lhs_size = max((size - filled), min_block_size);
>> -            if (!IS_ALIGNED(lhs_size, min_block_size))
>> -                lhs_size = round_up(lhs_size, min_block_size);
>> +            lhs_size = round_up(max((size - filled), min_block_size),
>> +                        min_block_size);
>
> Can this be simplified as: round_up(size - filled, min_block_size) ?
Dropped round_up/lhs_size entirely, we realign and allocate exactly 
size, so the max/round_up is gone.
>
>> +
>> +            if (lhs_size > rhs_offset)
>
> What is the idea with this check?
We reach here only on a partial RHS fill, so the leftover size - filled 
must be taken from the space left of rhs_offset;
if that leftover exceeds rhs_offset there isn't room, so we skip.
It also prevents the next line's u64 rhs_offset - (size - filled) from 
underflowing.

>
>> +                goto next;
>>                 /* Allocate blocks traversing LHS */
>> -            lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
>> +            lhs_offset = rhs_offset - lhs_size;
>> +
>> +            if (!IS_ALIGNED(lhs_offset, min_block_size))
>> +                goto next;
>
> Would it make sense to just align the lhs down, if misaligned, instead 
> of baling? If the final size we get back is slightly too large, we can 
> just apply a trim at the end?
Done -  we realign lhs_offset (round_down) and request exactly size, so 
there is no surplus to trim.
Please review the v2.

Regards,
Arun.
>
>> +
>>               err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
>>                                  NULL, &blocks_lhs);
>>               if (!err) {
>>                   list_splice(&blocks_lhs, blocks);
>>                   return 0;
>> -            } else if (err != -ENOSPC) {
>> +            }
>> +            if (err != -ENOSPC) {
>>                   gpu_buddy_free_list_internal(mm, blocks);
>>                   return err;
>>               }
>> -            /* Free blocks for the next iteration */
>> +next:
>>               gpu_buddy_free_list_internal(mm, blocks);
>> -
>>               iter = rb_prev(iter);
>>           }
>>       }
>>
>> base-commit: b9e2d5cdaab05c997be3a69d9b372d7676683e1b
>

