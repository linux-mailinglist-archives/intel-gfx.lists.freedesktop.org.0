Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ntBRDdi6Q2rxfwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 14:47:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 889706E4637
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 14:47:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=CrQbTc21;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED1610EC7D;
	Tue, 30 Jun 2026 12:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013009.outbound.protection.outlook.com
 [40.107.201.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7800F10EC7D;
 Tue, 30 Jun 2026 12:47:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sJuJulmCLI+oJqKWTaPVLTRmsvPTYKr0OemE/8UaXc1gi+XxMQJLO1AGnVauxosCkEJ44u4hF+xRY89v+XX2ZHeOZ7yJiyoL3KEvPUj6g/eVr1AG4JB/anSMuaaunw1FAiuB2XjO4GAC/YyAkg4/PvyCUi4b/0Vh+3w1LDSgP4+Y1a+8k/5n4p7+4XLAvreBIGMq8UYXxZedGrfxD8PigOjEv8tUHb3ksKtfOvgKtglnTNJDwMPxuD+4bTCdFownjnb8Ti0vnAge15rXnfIvOscNP1rm2o0ZQb627tMPpBk9xGz1w50ydsTyrjkCNt5RT0DDFcuyz/A5cU04sI4Uag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebXwMp6TH8hzY8lnwU6uEoTY2QTgjcjuecdljDmFthg=;
 b=FsU+YrltHUR3Ttoe+di3mziyqyitDxvhe5UbhOIRG7K7JFwfk0Ps5gM3s3WoGpzDgQs7iHSCSBqRfLJxl4QuHg9HbQwRahoRuuIlp5yBQyCHrKikYBZBBKY5VOeIErJOJHi2hNJkJGcca1IgEWbUkSvYD2+8augMVIF6GtC9VU7kxmAWX14G5qC2isjuO4kefCgziii0iiLSRIhO/DBJMHTVgk2kQpXhwoiFkX8AYyln8e28RBM5sYlyoZXZfqzOBObodhG37SElu9S3blNlr+BsfA1sowdtbbHlROWRNd2TViSBzbEUqiQUZfjZDmLOuY8sxOTK3EieSZo/KCS3dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ebXwMp6TH8hzY8lnwU6uEoTY2QTgjcjuecdljDmFthg=;
 b=CrQbTc21WeXMMpfe0Gp74rsaL6BJ7jCp1ZjSvtD0Mlf9U3K1+dB1L1gAXoZvf+BSXIQFCB/m8Bs7zFJsBAHO/o0gvq6MbC8PYFr/bd/e7X2mNOHqQc1TIH6uDMv+1C3YgdPa3MnKaKj3rCQ1TEgZrW8QO+Rm1dzTFniGkRcxQ2Y=
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11) by DS2PR12MB9775.namprd12.prod.outlook.com
 (2603:10b6:8:2bb::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 12:47:14 +0000
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8]) by EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8%4]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 12:47:14 +0000
Message-ID: <60c6155a-2f0e-4dbc-aa13-58b7d36cd264@amd.com>
Date: Tue, 30 Jun 2026 18:17:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/ttm: add generic drvparam[] alias for
 ttm_place::fpfn/lpfn
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20260626063658.10237-1-Arunpravin.PaneerSelvam@amd.com>
 <5021eae6-40f8-4079-9b5d-f511537aa460@ursulin.net>
 <81082f11-8b8a-4420-866e-4e15df3e5b1c@amd.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <81082f11-8b8a-4420-866e-4e15df3e5b1c@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN4P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:26a::17) To EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: EAYPR12MB999132:EE_|DS2PR12MB9775:EE_
X-MS-Office365-Filtering-Correlation-Id: b1c9d159-5a53-44e3-9d51-08ded6a5b51e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|23010399003|376014|1800799024|366016|22082099003|18002099003|11063799006|56012099006|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: UPpTjF0sigzcq31OsqVoiyz6mHIzlKvO9R/WAtDlosw5Zz4tdiyPSNiEjhQO3QY6tBrG4WMm5RZkB2L0iA7IQAofMvhDLJjWShkRIT+sGVgfXX9XFX9vJRs0NjyFYSO4HBPE2hQpLwPkCxEKL98gSXmRx2Kq7hwQQbzabxLI+D2umwlWZcgKJnakSio1+pdsmXfPG53dbElefIqW2a/vZ6VD7Sn5GEBqXFWw/PhYes+caIDLsQeqyaTasx4SQiQOa064rTn5FK7rd7Z94MxGu3UIdovK+YqdcEFzHp+S10ASB14BC+CPpxH6v9wzBXy94kTG9rNgMQIo984SPikQf1lHEkQElr7StMANNENefV0AlmNm6zYyXjwEJBaVpgDE6QZslDTBCN+cVnQJ0lc/qaMQoWRehGpmDivcWo2O49jatlgyQaLMLe7YcInDWabkHppZnFHrir197vqlavXlicO7rkoP8JQknnprKNY3s8PWXoz76V1tEagPw/Ud8mMlJ8sP2bVsl7Xt86fm32J9neQ3GcbqNoZ3J+YeowpzLd5+SfzpjZc0N5E3TwO4uranTIIoRt3L8x/6ygD8KziwuxwxOy9mOnaQBOQUI4VvcJ7Mj2nJjT/nAAytKu004OTD5IQa69t2Dts+o8zz0z9LHnkCLBKvVUmoggiVfQoXOwk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:EAYPR12MB999132.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(23010399003)(376014)(1800799024)(366016)(22082099003)(18002099003)(11063799006)(56012099006)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjV3UU1qY1ExSEFqSkNMRGd4Zytsb3oxTnJOWUdmNzIraFBYRkhHY2hrZHIy?=
 =?utf-8?B?QlVnY2prTFZ3dGpCN0lURmFRa0d0M1ZhbVJ5eU9XZFlIWHdNbmFHL0pEbFZ5?=
 =?utf-8?B?UHhGMStoWVZVZ1MxUFVGV2hka3dsVVErNldqOUNZeWJranNXOEhpRnJmNGZ2?=
 =?utf-8?B?UHhUUzI3MWVUMWEvYncrS2QyTHRWNUk0MkZLQW5ReHYzUHlLdWFuOE5kL3Qx?=
 =?utf-8?B?SzZ0UmhTNTluYmVsNGNGM3BoQjZZQ1JXV09WZnpEVXR4cjlDaWliK2lyREVr?=
 =?utf-8?B?SHBxSmpkNis4bE5rbDJxMWVzMVc0T2dqcmd6ZENhVlgxYUhlRnI1c3NkVlNv?=
 =?utf-8?B?NTFVRUZIdVZuY2lnOGxzODNsZTd4MkQ4WmJlNEVzYUJZOEVhY2JYZENjcW1N?=
 =?utf-8?B?bkhsM1VKakllWllHakZNa3U3am1vNFVHNWswME5XZC9jY1l3VzRQT0xaOHQv?=
 =?utf-8?B?cmdlZXBQRFRETzN2QnlLUkRtbm9WaXg3TFVjNEpIa1I3OHRSQms5bUlCM1VI?=
 =?utf-8?B?ejdobmJZZjRINzhFV3BzODFNd29Yb3c3ekl2RmVpdk9Nd2dONWk2ZTlhcitJ?=
 =?utf-8?B?THVNRTRHNEZnUS9nbVpMelhDOFl0WFd5aCtOSXNYYmkrNklxSVJucmxhSklF?=
 =?utf-8?B?emh1SWQ1YXNpamhGNlNyN05POE85WVNmbGducGxocUtVY3dnR1lFUG5jZHpi?=
 =?utf-8?B?cHFqSHBGTkZ6VDVRZ2locmJMcWZSbzVQdmtNcVNyelFQWlBFUm9TSjFodmJ3?=
 =?utf-8?B?QmpCTU5Kbk9EanR1NW5RRmpwb0dwSkJVRHUwTFRiTE8zV2lyckxsbFZGQXFr?=
 =?utf-8?B?NUlCS2xsNDBKVXZyNXY3cG1hSzk2S1BmOXhKSzhTR01YRlZtM0pKL2xmYnRX?=
 =?utf-8?B?Z2IrVUdkZjBwOWc5aG4wc0NEY0M1SVdOTkh5dXZ6WDlaZEVVUUhZUURqV25y?=
 =?utf-8?B?SjJGcWhNUFVOZzJKWmpDZGk0WTZEYlNFYUJHNWZlQXRaMmF5dmJjOXF3SnNI?=
 =?utf-8?B?MHRBRklZMEg3Qy8vRkh3TW9zMGJlOGJtK1d3VVAxTkdJQjhvbHUweDRCWUxM?=
 =?utf-8?B?ejZvMVJFay9WbHBFblF6OFF2ZWhIMFhTUjVwdmF4RkFObWxZTSs0ZXRtRURI?=
 =?utf-8?B?cXBrcDk1T2RXV2tMQTREK0tDbWRGbDNuL2hCWlUwWUxSQUtDSzhEYXMyM0Q1?=
 =?utf-8?B?V1NvK2NwTGJCSW1uZkZWaVFkdXJnT1JPLzR6ditLVmJ3cXp0elNreXY1a0dh?=
 =?utf-8?B?MGtWcTBFY1B2Q21iRU1zVXlKNTlIRmsvTWNDcmxoRDdTZ1V3VjBGak9CNzAw?=
 =?utf-8?B?aWlvaFRCRHRnY0YyYnVzekYycUYrOE1xSmd6b29vZ2l6bWVHc2dMMkovRUN3?=
 =?utf-8?B?cy8vQzdLT25VNlJBSDJYdlZiQUhBYllRSDNWR2ZNUWJqSjJWdmVVQlFabWNr?=
 =?utf-8?B?d1MvQkFPN005eEFaUmczbkJPb3V3aTNzdzlpL05qbWZEekNySDRKTG01eG43?=
 =?utf-8?B?Qm50Qy9xK2VsOTdneWxFd2NtR1B3aEFDalZtWmFtRzcxVGprMVh5ODdTVlBj?=
 =?utf-8?B?NTEzZVdrY2UvRTMrc0dLR0s3L3l1UHBGSlcwMVVXb21TNDRRdE9rS2NlUEdW?=
 =?utf-8?B?L2FERVd2bzQxZkM5OHEyZy8rVm1sZ2ZhUVRJZjMyTHhrUkJyYThVclVkU1JZ?=
 =?utf-8?B?RkMyQTNxUGg3cnNqRllNcTZKSjVHN1RHR1gzc2tpcXArbjAraE5Vb25vbE5x?=
 =?utf-8?B?MTdHQ1ZhR0xzZDBVTWF2Yk4yc2gwMFVyVWtFZFJ4bmcrcXUzanhpTDV2TTMv?=
 =?utf-8?B?d1lhRUQ5Yk15VnFJeHJDa1I0OVJiTmROYVVoaGNlWFNWbElTUFJEbnpSZzd6?=
 =?utf-8?B?U0ZwMUtYSFVnUVVVWUZnUXIwbEZHUzVXSjlXYU50cC96N0FlNUF0T1F0anls?=
 =?utf-8?B?WGh2WEkxNTBtSWxqdGRHZWovazJhN290dzIzaHhwbDZwV2t0eDVNMHBXRjZO?=
 =?utf-8?B?SkU5VDFJOG0yVjRlbGxYbnJNSkxmRE8vQjNmdWlvWjNDRXZTbnk0NFhYcFVs?=
 =?utf-8?B?TnQvZUw0NEZvRDJIMlhlYXdGRVR2NEpOVUwxUS9XMUtKcEIwV2cvTEt3Q3lJ?=
 =?utf-8?B?Y3RMdUhpYVdhcnV5T1dsQ1RxTkc5REhYYzVOK2xkbXloQkEycGlKQ1FVR0c5?=
 =?utf-8?B?ZzRjOUpYMFhESHhjbWVuSStkY3RzeUdtRUNXY21yR2JMcHVKVk1MRy8vbXVi?=
 =?utf-8?B?dENLYnBXTjFWdk5rRlBIRzVVajAybDM1Q0E0Mk5lbTlWQ1lHTDRSWUp3S21M?=
 =?utf-8?B?M3AyZSt3ZDJpTXczQVJjNkRWcVVsaCtybW0xdUVTZzBES3BSOUhPUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c9d159-5a53-44e3-9d51-08ded6a5b51e
X-MS-Exchange-CrossTenant-AuthSource: EAYPR12MB999132.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 12:47:14.1409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: geJzDdZ1O2XrDOGQdLWWTt5WrbJ8VXxXvGgz9MVErsn8OCRKjU+edM/psAvGkBcwQLMUVWpG7aju2vvOKATkOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR12MB9775
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email,amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime,igalia.com:email];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 889706E4637



On 6/29/2026 5:36 PM, Christian König wrote:
> On 6/26/26 12:57, Tvrtko Ursulin wrote:
>> On 26/06/2026 07:36, Arunpravin Paneer Selvam wrote:
>>> The fpfn/lpfn fields in struct ttm_place are named after page frame
>>> numbers, but they are really just placement parameters interpreted by
>>> the backend resource manager. Wrap them in a union with a generic
>>> drvparam[2] array so backends can access the same storage without the
>>> PFN-specific naming.
>>>
>>> drvparam[0]/drvparam[1] alias fpfn/lpfn, so existing users and the
>>> VRAM range manager are unchanged. This decouples the API from
>>> PFN/range-specific semantics so that these fields can be used more
>>> flexibly in the future (e.g. mask-based or segment-aware placement
>>> constraints). No functional change.
>>>
>>> v2: Use a union exposing a generic drvparam[2] array instead of
>>>       renaming fpfn/lpfn to param1/param2, keeping existing users
>>>       unchanged (Tvrtko Ursulin)
>>>
>>> Suggested-by: Christian König <christian.koenig@amd.com>
>>> Assisted-by: Claude:claude-opus-4-8
>>> Cc: Christian König <christian.koenig@amd.com>
>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Matthew Brost <matthew.brost@intel.com>
>>> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
>>> ---
>>>    include/drm/ttm/ttm_placement.h | 12 ++++++++++--
>>>    1 file changed, 10 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_placement.h
>>> index ab2639e42c54..7db2073f3236 100644
>>> --- a/include/drm/ttm/ttm_placement.h
>>> +++ b/include/drm/ttm/ttm_placement.h
>>> @@ -75,14 +75,22 @@
>>>     *
>>>     * @fpfn:    first valid page frame number to put the object
>>>     * @lpfn:    last valid page frame number to put the object
>>> + * @drvparam:    generic driver/backend placement parameters; the
>>> + *        interpretation is defined by the backend resource manager.
>>> + *        drvparam[0] and drvparam[1] alias @fpfn and @lpfn.
>>>     * @mem_type:    One of TTM_PL_* where the resource should be allocated from.
>>>     * @flags:    memory domain and caching flags for the object
>>>     *
>>>     * Structure indicating a possible place to put an object.
>>>     */
>>>    struct ttm_place {
>>> -    uint64_t    fpfn;
>>> -    uint64_t    lpfn;
>>> +    union {
>>> +        struct {
>>> +            uint64_t    fpfn;
>>> +            uint64_t    lpfn;
>>> +        };
>>> +        uint64_t    drvparam[2];
>>> +    };
>>>        uint32_t    mem_type;
>>>        uint32_t    flags;
>>>    };
>>>
>>> base-commit: cdeb2ccd993ed8647adbbda2c3b103aa717fd6f7
>> LGTM but then again I suggested it (hint hint) so I may be biased :)
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Looks good to me as well, Reviewed-by: Christian König <christian.koenig@amd.com>.
>
> I think this way we can also merge it with the AMDGPU patches who needs this through amd-staging-drm-next.
>
> Let's sync up with Alex on the next weekly call, I think we should start creating an internal branch for the new feature if that hasn't be done yet.
Sure Christian.

Thanks,
Arun.
>
> Thanks,
> Christian.
>
>> Regards,
>>
>> Tvrtko
>>

