Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eWG6DE2hT2pslQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 15:25:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C107318C0
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 15:25:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Vzc+wHVN;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDB610E6E0;
	Thu,  9 Jul 2026 13:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012071.outbound.protection.outlook.com [52.101.53.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A8310E067;
 Thu,  9 Jul 2026 13:25:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lx4f3R0lTjYrkpAhOVQfd9BqsisUrQkZr3sooGVQtXf6UkaRQ5EDJi4QxIb5YI2TgBX8YaEIvX1xcLBgrtoAKgNGtCWbvJDovtdKh+YABUlP5FPBTrEUFqWbEA/A+7b7LHonQ8O/vKrBK4i+eeC2qOPc8CJ/sJJffkDWcjc1yuU82AQ/QDBIGf0nYnM55EKw5jHb0qaTpA5ymo7BHG8qSi58gXTnH3UzYDF67cdxLvHUq/GVCWugykxc1xGSB7O0HmBFzjRNS2nKTDb1Sohy53nPmOkHcskXtF6IV+9PmFYeSwcZrzMyeknlAB1UKJ32BHxVlqu8UNf7YkfNjpbJLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/5mbhNJY2R9wCWXsaNZtVfd9KVVyDCznpKfy0iPt0M=;
 b=VgX4i76q/nilX9VK5053skI/u4m3+xzMheaey8AJsdPMdFxU8fPm5HS7sUkqQeZmiKdl1hpgxdoVZuH4ck9xDgN6dAJfClD8TMdYJAFv57b3LW1sbqItoZJ1pLrte7R5UmXcWgfnGzDGZ3wEFFhYeZPyRgapa+jvh99J2ECje+NIq7npQUH9uM8Qh9kbFNO/3MWM6DZmQSL1ymSWn+Xcu4WYtgOBt4AiC8BNU80Cmg4L1ZcBfy1VJZNcq4NxJWeXkerfzucEsbamurdv0Ql/b7vaGxo747Mxc5KrW3p2aqNrWqOjZcUDenf56eCh3OeQMmQUQLVtWOh6NG9doMY8kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b/5mbhNJY2R9wCWXsaNZtVfd9KVVyDCznpKfy0iPt0M=;
 b=Vzc+wHVNJ1L8hIY8ZF80eZFGKgBc0k+jNNxLNDdmoikuzpmpJbepuk4oLtM7hNPyewsbnqwzO7VZRYdLQN0pIvOVet7eiXw5hk0uHi/l5qF15eRnajCIpzLcHQ3K8Wm8jhKoLq4C8KmLZc0ZJzxzRVNKbrkwu2IMzxi9SAIOqmc=
Received: from CH0PR12MB5026.namprd12.prod.outlook.com (2603:10b6:610:e1::14)
 by CY8PR12MB7561.namprd12.prod.outlook.com (2603:10b6:930:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.16; Thu, 9 Jul
 2026 13:25:18 +0000
Received: from CH0PR12MB5026.namprd12.prod.outlook.com
 ([fe80::a495:f203:dd7a:3e25]) by CH0PR12MB5026.namprd12.prod.outlook.com
 ([fe80::a495:f203:dd7a:3e25%4]) with mapi id 15.21.0159.016; Thu, 9 Jul 2026
 13:25:17 +0000
Message-ID: <2b749a44-d8e1-4faa-a249-3859e51c6056@amd.com>
Date: Thu, 9 Jul 2026 18:55:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] gpu/buddy: bail out of try_harder when alignment
 cannot be honoured
To: John Olender <john.olender@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com, =?UTF-8?Q?Timur_Krist=C3=B3f?=
 <timur.kristof@gmail.com>, stable@vger.kernel.org
References: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
 <a4657daa-c58e-4441-ad81-c3e770bc5a94@intel.com>
 <edcfd337-2cba-49da-a77e-3a2f8aa67e4c@gmail.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <edcfd337-2cba-49da-a77e-3a2f8aa67e4c@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0245.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:223::8) To CH0PR12MB5026.namprd12.prod.outlook.com
 (2603:10b6:610:e1::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR12MB5026:EE_|CY8PR12MB7561:EE_
X-MS-Office365-Filtering-Correlation-Id: c8d4e1ef-f0bc-4298-2cd9-08deddbd8442
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|4143699003|56012099006|11063799006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 0UGt6rvtkGBffiTIOi/s0Az+Q3KyGMgjmOramdbrzgSmC8jvPgfV2imuoxEXrJ7Nr+EPC+DaTn+OMnYbjKkwpLAts5B+eTp75mh3FWrPLq8umngy+TfC6Gwxc1qy7dnj6rQc6Pxzj9G8HSOig+s3be5R7SgAinRAMfvx/lAkQKSBpFlIENV0dHuQUuHOgodP8W/DjtblEVhkK8JCkD5wcYT3bAOZ2200yTJWnKfQh43Ixn/dCMOA/dsUHjaH7nFFXM6ohcu4Og6ZShxN5KplKwXgtXX9XnzSG35KayRfcCwcadLM/po31UDyjYnJaNh+Z2WvrsXDAzy8DR9hmV+MPq+OwowTVxKoEI2qEXPubDfKnzVFqeWDhTsoeBqiEfJN5u7hhlh3WyZzaRSAluK9zXPalqZc6iSX0rTYD5RdseMMSrpTysAkoozPwSRlC38lprQbarouEZqQAa9eF9mugvbASsA32LlXXbzfeksq+Ilw2uv5yIj3lAPQzcGfTXiuRKtkx7NH+IZcX8kCsWdJ7LetjduX3kcoK7VDkiavx8hnM0hXVprv8iYzJm+P27JXTR+1BiupLU/jFHOMaEf5uaDrNfi7NCTfeLzcJCUDbSUoeUe/TTW54smpCwY6ytg5UfY2bPgI9/P5fl3ynmsqDMic4YAmJ3rmILLYzJczbjk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR12MB5026.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(4143699003)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3E3Y2QrcDk2K1kwSVdkQzBZVG1OYVVuZmxadVhNT09DQS9hZWVvRSsvL3FR?=
 =?utf-8?B?UnR5MFVBemdxQWtsR1VaUHdaVXZPYytyVzlQL0lyNHJpOHd5cU42VjFtQUZn?=
 =?utf-8?B?UFlUOGNIWG1QOUZ6aDQ2VExiYnNWc1JGQ1ErTXhhbnZwam1XZTFLa0dJS2o4?=
 =?utf-8?B?OHJQVzFFWmZsMlJibTlwU0hFWllhWDRqU0JIVWhKSEhBb0NoOGRKOGRCdi8y?=
 =?utf-8?B?UFNrSTBMY3ZkdUVtQTBuQXk4cUlzcVoxTm9BMElRT2NrTTIvNk93TlUrR0ZX?=
 =?utf-8?B?enFMYTRYcVQ1aHp0NXRITVpUS1ZzNTllbis5dUtPQnY1dW04M3dEaGhsV1pw?=
 =?utf-8?B?S0pFNm44TktLeUZoekk0R3NCNk1sTFBjUWZzZThOQzNMbngwS2wzTVlOc2Rt?=
 =?utf-8?B?ZjZZdWsvcUh2K25hTHN4V2NzeS9Db0lEOHpKQS8rVnV6ZG9BbzRHTFQ0UmE4?=
 =?utf-8?B?UURlWHIydFl6VjViMUQxVGlPMWZuSjdTMTZjSWN4dmNraklnV3RwWmZYYnAy?=
 =?utf-8?B?Wm5YNktEeXdCMDRnVGVaSHlqK1hkSHFBc2FoTitVK0c0OGZzbXJzNEVoRnA1?=
 =?utf-8?B?bkFGc1RJMUpnT2YvQm4vVCtRNHBXY0lLZkEzL2dkTzM2SWxIQVk5eXJOSnds?=
 =?utf-8?B?ZDgyU3VTbzJJdmwrcjBSNjlaeno1enVBUHVkMDJqT09YSDVIYUE2SWRqaE0r?=
 =?utf-8?B?M3NCMy9TWEU2NnNlMnpoR0loZURBbXNyTVI5a29rMThxelJIcG9KQ0dhdkV4?=
 =?utf-8?B?OTR1OE9UVFJMY28xc2VQSi83ekpSRmIwTmUxZ0pKL1V3amRSelh6TDZ1bTFv?=
 =?utf-8?B?NndISzNjZERsekQ5Y2lnM0NSMXJDV0JvbzMrV2VpUGRhZTZKbzQ1TFZBcWJG?=
 =?utf-8?B?ZFdibGhaMFFlWVd2UGJwdURGWm43YitJNHlHOENycmZGckRzTVpHZXUwT0Jl?=
 =?utf-8?B?UkVRdEEwcFdZYnFhN0M0R085SzZiOENKWFMvSll3YlhvYnRWUnRqcDVxckoz?=
 =?utf-8?B?OTdoV0Z6NURyU2QvVVRQKzgrbnRSUEI0cDZ0MjdKUkJ5UUFzY25pTzlHeEZV?=
 =?utf-8?B?OXVvVENYVlhHRThrV1ozYXJ3QnowQzVBQVJ1UjFTTy9Ub3pUdjVMSGxxKzlk?=
 =?utf-8?B?empSWVVUcC9zUEdzMUdLYXB4VlF1RXFKRlhpUUQzd3E0U0FFcDBtbzAwK2tK?=
 =?utf-8?B?Z0lnd3AxeG93VnIyTWtQck93OVhDWVZBNXpyMU45QnFzL2RBcSs4ekk2VU81?=
 =?utf-8?B?VDQ1bjZUWkZWM3BBbm1GNHpWZGhXYzZLbEh4L0Myc0dZRDB1NE9lRTdvemFN?=
 =?utf-8?B?ZlBFQ3Q1RC9jL0xnbnN5aGkzenZ5eDdJU3hxd25LYnJZdklYMHpkVHczM1JC?=
 =?utf-8?B?R1FWampWb09pWHE4YndSR3BLdm5TL3p3T3BPRTRqQzR3L0lSKzdCVE1DUTlB?=
 =?utf-8?B?djQ4MDJpdVNrVnB3OWdRTVJ0eEp6bkUrRTZJQjFBZ2lUVzBhQmtBTk11SWR0?=
 =?utf-8?B?VTJhUElUaG1HOXo0YVVkbmxpVkZjTkx3T1dJV2tVckZKWkdIR2VxdmNQeTJK?=
 =?utf-8?B?T090TU9vYlowRU9YcGtLdEpNbmJwV1dDZ0hzWUQvWG1uOVNGblk0Uy91RHEv?=
 =?utf-8?B?MmcwSHBQZE1SSlRUbzFuVFFJQ0xtdmZYUXZ1RTZJM1draHFldnlTeTQzN2Jk?=
 =?utf-8?B?ZGQyUkFnRUMrR200WlJFTE0wQng2Z20zdm1NMkxSMHBZelR5QkJQZG1Kc0tN?=
 =?utf-8?B?Wml3R3dwdE5OdmZ5bEU1TzFocGZmd1VIcThJV2lIZFlsb2JKd0xob0ptazVL?=
 =?utf-8?B?YWZ1N2tzd2E5UzFwcmFwa05EYkhndW5EcDBBelBjNGhVeStMaGtsOGNsTFlP?=
 =?utf-8?B?VHdjbDlaODJpVm44a0QzQVNCQVFIRXptTTA5aTMzWjN4WGhoRGNmRmF0TEt2?=
 =?utf-8?B?TCtCZFBTc0hIQi9OaEhnMXk2U29xYll5VXM5Y2l1ZkhjZDFrT2xxVGdPd2px?=
 =?utf-8?B?RThiQ2diSEhkWThCRmxoY3lDSFFQa0gvSEJ6U1UxN0ZMVnkvQjFUMklyMTZq?=
 =?utf-8?B?TlFnem1UU0JFem5zMUFGSUxxYmEweFpDcmZ6cEV1MHlNMmdPVldNOER3RUlh?=
 =?utf-8?B?V0U2amZLbDNXWTlUS3RuNkRlNUkzZjl5TjY2cUVaZnJFMXdJbzVYSlhUZitF?=
 =?utf-8?B?eUV4dTN3VUEzL2NmaHg4THBhUnRoQkVSUlF1emFlakpSbHNXUE5hQmxsKzBX?=
 =?utf-8?B?SEhOVndPQURoeityYm84MWFHWXppK2NhN1BuWHdUOFFEY0pZR09zZm9tQW5k?=
 =?utf-8?B?Zmx3NFVuTWk4NENab1Bva1FTQlM2Vmt0bWZWbS9qVUZNRGpDbURBdz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8d4e1ef-f0bc-4298-2cd9-08deddbd8442
X-MS-Exchange-CrossTenant-AuthSource: CH0PR12MB5026.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 13:25:17.5141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ce0/jJeuiVKEMX/CgrN1EOoyEoJvnX8/epXplaGiXkSdRZEHqEyfY1Z48QN8HGrhTS3UbooggqkWvVLV96IpHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7561
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
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,amd.com,lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:from_mime,amd.com:email,amd.com:mid,amd.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C0C107318C0



On 7/3/2026 6:05 AM, John Olender wrote:
> On 7/2/26 6:48 AM, Matthew Auld wrote:
>> On 29/06/2026 08:43, Arunpravin Paneer Selvam wrote:
>>> The try_harder contiguous fallback could return a range whose start
>>> offset did not match the caller's min_block_size. When a candidate's
>>> start is misaligned, realign it: free the misaligned run and reallocate
>>> exactly @size at the next lower min_block_size boundary. This keeps the
>>> returned size unchanged with no surplus to trim, and rejects the request
>>> only when no aligned candidate fits.
>>>
>>> v2: align misaligned candidates down to min_block_size instead of
>>>       bailing out, for both the RHS and LHS paths (Matthew).
>>>
>>> Suggested-by: Christian König <christian.koenig@amd.com>
>>> Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Christian König <christian.koenig@amd.com>
>>> Cc: Timur Kristóf <timur.kristof@gmail.com>
>>> Cc: John Olender <john.olender@gmail.com>
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Merged upstream into drm-misc-fixes.

Regards,
Arun.
>>
> I haven't hit any issues with this revision during testing.
>
> Thanks,
> John
>
>>> ---
>>>    drivers/gpu/buddy.c | 63 +++++++++++++++++++++++++++++++--------------
>>>    1 file changed, 44 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
>>> index dc81fe0301ce..3c73ae87f3c5 100644
>>> --- a/drivers/gpu/buddy.c
>>> +++ b/drivers/gpu/buddy.c
>>> @@ -1118,22 +1118,30 @@ static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
>>>                     blocks, total_allocated_on_err);
>>>    }
>>>    +static int __alloc_contig_aligned_retry(struct gpu_buddy *mm,
>>> +                    u64 unaligned_offset,
>>> +                    u64 size,
>>> +                    u64 min_block_size,
>>> +                    struct list_head *blocks)
>>> +{
>>> +    u64 aligned_offset = round_down(unaligned_offset, min_block_size);
>>> +
>>> +    return __gpu_buddy_alloc_range(mm, aligned_offset, size, NULL, blocks);
>>> +}
>>> +
>>>    static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>>>                         u64 size,
>>>                         u64 min_block_size,
>>>                         struct list_head *blocks)
>>>    {
>>> -    u64 rhs_offset, lhs_offset, lhs_size, filled;
>>> +    u64 rhs_offset, lhs_offset, filled;
>>>        struct gpu_buddy_block *block;
>>>        unsigned int tree, order;
>>> -    LIST_HEAD(blocks_lhs);
>>> -    unsigned long pages;
>>>        u64 modify_size;
>>>        int err;
>>>          modify_size = rounddown_pow_of_two(size);
>>> -    pages = modify_size >> ilog2(mm->chunk_size);
>>> -    order = fls(pages) - 1;
>>> +    order = ilog2(modify_size) - ilog2(mm->chunk_size);
>>>        if (order == 0)
>>>            return -ENOSPC;
>>>    @@ -1149,31 +1157,48 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>>>            while (iter) {
>>>                block = rbtree_get_free_block(iter);
>>>    -            /* Allocate blocks traversing RHS */
>>>                rhs_offset = gpu_buddy_block_offset(block);
>>> +
>>> +            /* Allocate blocks traversing RHS */
>>>                err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
>>>                                   &filled, blocks);
>>> -            if (!err || err != -ENOSPC)
>>> +            if (err && err != -ENOSPC)
>>>                    return err;
>>> +            if (!err && IS_ALIGNED(rhs_offset, min_block_size))
>>> +                return 0;
>>> +            if (!err) {
>>> +                /* Allocate the unaligned RHS offset using round_down */
>>> +                gpu_buddy_free_list_internal(mm, blocks);
>>> +                err = __alloc_contig_aligned_retry(mm, rhs_offset,
>>> +                                   size,
>>> +                                   min_block_size,
>>> +                                   blocks);
>>> +                if (!err)
>>> +                    return 0;
>>> +                if (err != -ENOSPC) {
>>> +                    gpu_buddy_free_list_internal(mm, blocks);
>>> +                    return err;
>>> +                }
>>> +                goto next;
>>> +            }
>>>    -            lhs_size = max((size - filled), min_block_size);
>>> -            if (!IS_ALIGNED(lhs_size, min_block_size))
>>> -                lhs_size = round_up(lhs_size, min_block_size);
>>> +            if (size - filled > rhs_offset)
>>> +                goto next;
>>>    -            /* Allocate blocks traversing LHS */
>>> -            lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
>>> -            err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
>>> -                               NULL, &blocks_lhs);
>>> -            if (!err) {
>>> -                list_splice(&blocks_lhs, blocks);
>>> +            lhs_offset = rhs_offset - (size - filled);
>>> +
>>> +            /* Allocate the unaligned LHS offset using round_down */
>>> +            gpu_buddy_free_list_internal(mm, blocks);
>>> +            err = __alloc_contig_aligned_retry(mm, lhs_offset, size,
>>> +                               min_block_size, blocks);
>>> +            if (!err)
>>>                    return 0;
>>> -            } else if (err != -ENOSPC) {
>>> +            if (err != -ENOSPC) {
>>>                    gpu_buddy_free_list_internal(mm, blocks);
>>>                    return err;
>>>                }
>>> -            /* Free blocks for the next iteration */
>>> +next:
>>>                gpu_buddy_free_list_internal(mm, blocks);
>>> -
>>>                iter = rb_prev(iter);
>>>            }
>>>        }
>>>
>>> base-commit: 6648301c5bb2ef23f0fb15bcb01d21ff66f36799

