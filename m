Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ARkJHOhfQmrq5gkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 14:07:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D406D9CD8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 14:07:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=YMugud23;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA0910E848;
	Mon, 29 Jun 2026 12:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011071.outbound.protection.outlook.com [52.101.62.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4712610E840;
 Mon, 29 Jun 2026 12:06:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=up4eeJpWfi0O4Za4AfASftQhozCBmgTfDBwMTc8meAPhQdgQf2A+kqBtmAXvFxZ6eMF8qgjE/rBcOQQUrNttmNngmnSBG4Vk4ZCZnZk4Y3CYBopQvSgulO3oNtjUplNpzwrXhnqB4PoGqAbTeDnzE5ozP+cvlLcrvgNpxpsriYUmWLoTDiL0cvHSACOHi3INb7mZOnhxhqmfM+kdBxoRurI+JUkPllFDUwU87OSYUQVmM1QaYUjiNqXsQRpEdRd0QEVUzRx+mjcR8hWo6xqOUEm3GA2eMyQpSTr5jTOz1aVaBSHVsB2BEtc1SI9743nqEuvBSdIUiEiJ1x1H9YmhTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGgd92U7l0DHamSiNSqwJD2PvJZFIqBHnbdm7qqoIFU=;
 b=Tyqg5ahCnA5mTXruyeXO6j6vl36H6sj0XcxKikCpj/UC1RmtqYAGxG+BpiwtKVZK3zDs5U2K2xpE3evPib72hCvZ4KNstrpmR8QVqVD3JMyo8NhpuqFivIz8ltdgUt7QA3rmWLOfuI/Rder6Jy0xsQRKMAWcr9WYBCeY/7UIw2CfHjHNWYW3kwBFsdHwI3033Qk0V2LadCU4EbXS5J42Sa8Uusp50KLP9MDyVi7C88ueRUNHLoAIguPtV2KMWGDN5ilj+BzFr4eNor/jInjC/c4w/3Z6VfPouHDs80pQ2qlDTIenJRYhi7rlTp1zMC+XIf6lJhstYM2HL9QCn4hzyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eGgd92U7l0DHamSiNSqwJD2PvJZFIqBHnbdm7qqoIFU=;
 b=YMugud23/+Dxa/nVQcYlXiFeSzdxBs7LLeQMHFoshyLPB9BJ1WdazzOxD8okVoIAVhJb50kiN6qJ4KZ7ZdqjtCoFtLgzqXkS2u0AJTFKNxTHMuDa2esTFudskcvcHpPvefbdBinZ2Q1Spb851/rIKQwnoRlC2OqDBAepsHlZFsE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7292.namprd12.prod.outlook.com (2603:10b6:930:53::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 12:06:56 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 12:06:55 +0000
Message-ID: <81082f11-8b8a-4420-866e-4e15df3e5b1c@amd.com>
Date: Mon, 29 Jun 2026 14:06:49 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/ttm: add generic drvparam[] alias for
 ttm_place::fpfn/lpfn
To: Tvrtko Ursulin <tursulin@ursulin.net>,
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20260626063658.10237-1-Arunpravin.PaneerSelvam@amd.com>
 <5021eae6-40f8-4079-9b5d-f511537aa460@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5021eae6-40f8-4079-9b5d-f511537aa460@ursulin.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BLAPR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:208:36e::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7292:EE_
X-MS-Office365-Filtering-Correlation-Id: b474f8e3-c0ea-416b-8411-08ded5d6e9c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|23010399003|1800799024|366016|3023799007|18002099003|22082099003|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: T99AD/sCuhuwmuYwS9N7e6fqeqoyYZ4/W7DUdMGZsyw+m5aSSwqbAarWk8u/Ggju5RM0CYdFH/OJ/rJja0vUb55BwOlEJC7UsGDOfFTuqyhSPwFjUMNmGyMMx+PkwNL0CVR2ry3CKbvpY7wNwMgL7LCuOjtnQVwP6fPNv/I04VFcUhtae5iIiELVdl2H1cPQjO/cj00+0dbPOcDj4ZVbtquTbrEE0DLvLCHLQ4tylEsNngtn4MY/qDhT4tr7v8VVpL9MoV6ZdRy8kzpU9bLC0qaa+HuNQaVCD8W8w1S6LNq4lgAL6bALQElVxHZu7BGEAn0rBCcQUuilWdOdQxp4GgHJMr47XVWp4AgWuf4dTI9h7+y/mH0/DN6MmFJyeLOUS1tisxKetB4SxE2/VpQZx8RAFOdj6IpEjlX+aYUr/4f+sOjFV/ypoVJhZbbOzMGQzj5jyCJasjaw9xgp6pBB7J0x+xCOvLxW6gi+O0EHUZ2BBExbUHhFB6zRwCIwABbviWZ4mL83T8VdhYZ9SBmTOV+D5n8Ghnan4U28XRg4ZpeXYWPyiDtoPdbHGGMUO6XwDYqVNGJlrtSP0dWyZPFyBzTjhWgBjAqt2yE7Cmf/cGXXaE2rJKmFwabMRBgKC5ecOe6x2TyoQq2kf2oND7vukZe2azpWxE6ivSllZWGwEO4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(23010399003)(1800799024)(366016)(3023799007)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWo4VW8wazhURWtqY2g0ekZPVTV0SW4zWFNvb2ZqM0lEZFM4NzZ0c0VISmZ4?=
 =?utf-8?B?LzNMc3ovN3A4TkJPbHprNUNLQU5tdXVzQjBDbFJidlZ2dlZnNi9BejJEMmxy?=
 =?utf-8?B?d3RVdmJPOFdwbDJpWlJzSGdSazZPTldsQlhONjFuSlRWc25CT2tFTUdmdDRa?=
 =?utf-8?B?dmd4ZWh3alhESXpOZ3JwL0RyMXZFSk8vUG4ya01hTmJvYVdwdHZpSHNFaGNs?=
 =?utf-8?B?VnhxOUg4eUdCQ1FWZWduZEg5ckd3bjlsZW5LVkM3OWczcS90RVN3U0FMSmpo?=
 =?utf-8?B?bDJYZTI1R2NFazB0aTI3cHZNd2hIVXM1SVg0SHp6c3d6REhXVmxDaFFPQU15?=
 =?utf-8?B?TG1qcFMrT0I1aFQ5UFFWaXJTdXZZMVJLc0pPVW5VeDN1ODFTVXlYWEtDWW9K?=
 =?utf-8?B?RXBzQUxhUGZicFUzMCtzeEpQL2I2UTJHNkpQWUdZaVBlK3hpUGVoaHJPQkpj?=
 =?utf-8?B?NHQ5OHY2TXNvU1FRa0FuVGFyOEZjalN0ay9HcXhxbzJRNE1rVFFEOW1lWDQz?=
 =?utf-8?B?QUN3b3ZzRlpyUjZEQXdneitVa0ZielltV3RhOGs0R2ZTYW1ZWXQybWlmNUlF?=
 =?utf-8?B?Mjh4U1FPOWM3amJJcXZOYWhaQ21lQU1keDBSMVhTaENvWUZZNCtvLzJMZXRs?=
 =?utf-8?B?R0NzMFJhVUFhTVp5N3F5YkdWeG9FQ29NUStQQ1ZqK1MwOGJkc1pKcHRjZnJ4?=
 =?utf-8?B?OUJKQS9WM3Q1WkNiYWtnTXh1U1ZnRXBLS1RQVlYxam1BUkxCVThOa1dic1hB?=
 =?utf-8?B?TFlPZm5pclJZN2tvbEw5U1l5bEthL3NDZHV4dnJYenI3RW5LaithR25LZTVZ?=
 =?utf-8?B?THNHNHJpemZDOWd3RGU3U1FLWWRtbmllQXAyekVKVm5BUjhEdHBmdTBnR0R4?=
 =?utf-8?B?WnZydEVmKzdPZWwwR3p4Y2tiQndxMXd1MlVYQmtRblhzdFlMckQ4R1Juek5a?=
 =?utf-8?B?VXhLV2xEbkpWZ1NhQVdkVVFCUUVRU1RVVDBlaklTSXA5bzBlanVSalJ0QmpD?=
 =?utf-8?B?RkpxUnJ6Z0lLVnZvZksxL1V6VmpWVmFDQi93Z1NhTGFBL2NYUlhvMzBOcGJm?=
 =?utf-8?B?aWsxL2FJVlBjQXRvN0xRUWRQUUVBczd2STRpcTErNDdlTWJyWlhDaXVuVSt3?=
 =?utf-8?B?WkcxZHFFbGJETU9LcHZRREpMc2hJbjVqOVJEYnV4T0Z3Y0pBK3hhaUN2V3k5?=
 =?utf-8?B?K2s1bDJsTzErT3FLaGVic01weG9CdjUxRUVMa2xMRUFWdlQvQXltQ0UyQy9y?=
 =?utf-8?B?T0tqaURkYzkyd1I4cjFLQVpveldBWjVpVFdGbW84YW9nMS9mU2FOV2dIb21Q?=
 =?utf-8?B?cUtiamtHZ1RxaXVCcjdKUnREZzVBZ3J5cEpEY01uV1VESGNFQ0ZWTlVZRmFB?=
 =?utf-8?B?VUVuTk53WGZsenhBSXVpL2taeURmOEtKMHlkelpRaHZCMHFIWDQwb3loUmlD?=
 =?utf-8?B?MjU1Vzc2aFA0TWQ5VXhxU1FkbTVhb3VPaWJSY3ExWStKZXZrbVVXOXRWTE1r?=
 =?utf-8?B?UmNPc0ZnRnZiQkhKUHZIa2NIaUZRdFRsb3Y4TWc2Z2l4OHNUVXdvdVMrTUhp?=
 =?utf-8?B?UitRR2RuaFh5TjJzc1BVSXVuMXJQNE95MUcyRUFPNUJpekdoa2lpdmJsY3FV?=
 =?utf-8?B?MmF4UXBFREE1UXFEOEc5b3dDa1NVTktaQWlXVGhPN1NNY3JrYTV1SFpaUWEx?=
 =?utf-8?B?dHlJdHd2Zjl0UThST1FTbGxwdXp1SE00V3VwT1NScXVZTUdlUlFPOTc1Y3N1?=
 =?utf-8?B?YWxVcmlJVnhFSkQ0aDJsMTNPNkNTaldOOWcrVG5LS0pYUWJyZUliWlBQQ3FW?=
 =?utf-8?B?VFVORmg1YlB1eWZMck1wcmV2OHNqV25wWk9iWGdTU1dHQzd4RlVDeDAweldr?=
 =?utf-8?B?OE9lbkFaMytlcXQyeGtuV21SL2RUZENWRjJKT1VycWpGeDQ2dU9PKy9hbWtu?=
 =?utf-8?B?WEZzV1VmcjA3SnhrUTN6eGhNSjZOZlcwUUtXU1ZRa3ZldDJoaUVmUjZPcFRF?=
 =?utf-8?B?K1pjL0dBSUlQZ0VDUG40UVF1TTk1K2pUVDRsR0F0UTBzS1RzVHdycyt4VUsx?=
 =?utf-8?B?SUJ1QzlTR0xDZ2d0bUk2L2R0T20rZU9rRW0zeGJxb2JSN0FNMlc2NDhJZnV3?=
 =?utf-8?B?cDNrNGVlZmczdnJNa2RDUVFIY2xhOGk0cmszQ1ZHeDNna2tBcU0wcnlYVzZ6?=
 =?utf-8?B?dTlhdjZtQ3YwL3Fyd2VGSVZCc0RWT3I2VmFrUkFISVJMY0ZtT3FoRDZXY2tI?=
 =?utf-8?B?WkxEOVhGUmdKTVVwa3NTcWxoWXZZRW5OZ0U1aldYQnFXcnJBR1hJNUlOSGpC?=
 =?utf-8?Q?qFdygtqxGyrPfH541P?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b474f8e3-c0ea-416b-8411-08ded5d6e9c9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 12:06:55.7277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HQV1aX1vjVzmYkU9uFHALq344wAxq9GOZwLxgBYrjMw+mZMszUW9lXgzf8AZp1tO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7292
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16D406D9CD8

On 6/26/26 12:57, Tvrtko Ursulin wrote:
> 
> On 26/06/2026 07:36, Arunpravin Paneer Selvam wrote:
>> The fpfn/lpfn fields in struct ttm_place are named after page frame
>> numbers, but they are really just placement parameters interpreted by
>> the backend resource manager. Wrap them in a union with a generic
>> drvparam[2] array so backends can access the same storage without the
>> PFN-specific naming.
>>
>> drvparam[0]/drvparam[1] alias fpfn/lpfn, so existing users and the
>> VRAM range manager are unchanged. This decouples the API from
>> PFN/range-specific semantics so that these fields can be used more
>> flexibly in the future (e.g. mask-based or segment-aware placement
>> constraints). No functional change.
>>
>> v2: Use a union exposing a generic drvparam[2] array instead of
>>      renaming fpfn/lpfn to param1/param2, keeping existing users
>>      unchanged (Tvrtko Ursulin)
>>
>> Suggested-by: Christian König <christian.koenig@amd.com>
>> Assisted-by: Claude:claude-opus-4-8
>> Cc: Christian König <christian.koenig@amd.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
>> ---
>>   include/drm/ttm/ttm_placement.h | 12 ++++++++++--
>>   1 file changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_placement.h
>> index ab2639e42c54..7db2073f3236 100644
>> --- a/include/drm/ttm/ttm_placement.h
>> +++ b/include/drm/ttm/ttm_placement.h
>> @@ -75,14 +75,22 @@
>>    *
>>    * @fpfn:    first valid page frame number to put the object
>>    * @lpfn:    last valid page frame number to put the object
>> + * @drvparam:    generic driver/backend placement parameters; the
>> + *        interpretation is defined by the backend resource manager.
>> + *        drvparam[0] and drvparam[1] alias @fpfn and @lpfn.
>>    * @mem_type:    One of TTM_PL_* where the resource should be allocated from.
>>    * @flags:    memory domain and caching flags for the object
>>    *
>>    * Structure indicating a possible place to put an object.
>>    */
>>   struct ttm_place {
>> -    uint64_t    fpfn;
>> -    uint64_t    lpfn;
>> +    union {
>> +        struct {
>> +            uint64_t    fpfn;
>> +            uint64_t    lpfn;
>> +        };
>> +        uint64_t    drvparam[2];
>> +    };
>>       uint32_t    mem_type;
>>       uint32_t    flags;
>>   };
>>
>> base-commit: cdeb2ccd993ed8647adbbda2c3b103aa717fd6f7
> 
> LGTM but then again I suggested it (hint hint) so I may be biased :)
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Looks good to me as well, Reviewed-by: Christian König <christian.koenig@amd.com>.

I think this way we can also merge it with the AMDGPU patches who needs this through amd-staging-drm-next.

Let's sync up with Alex on the next weekly call, I think we should start creating an internal branch for the new feature if that hasn't be done yet.

Thanks,
Christian.

> 
> Regards,
> 
> Tvrtko
> 

