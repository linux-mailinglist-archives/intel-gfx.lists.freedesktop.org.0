Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z+eXCpgpPGrmkggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 21:01:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C521D6C0D95
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 21:01:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=UvEauSZ4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3482810F01D;
	Wed, 24 Jun 2026 19:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010056.outbound.protection.outlook.com [52.101.56.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CDC10E106;
 Wed, 24 Jun 2026 19:01:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Agpv+tK35D6yVCx1AMssMRAGiy9lGf0d7m8WHUJEUHK4HhcZlVoa/1Seg4mtcmxEBib8dsovnv+Qy0lMOZMyoFfX4lyYJCtv6jheEAK9huNbLZqWfPVmaiIt5W71MfK9PAa3Q0CLuzigVY1zuwewuSeEwUXaIzlQUresSvKo+gbtBYT/EbPYVGi2F9Uf/r4u5b6q9tVH9IajNIMu9F3Z7CUUHzuZcEKdgnMHkm5gFmBbEMafDhmgOfttsrXIJ8AeFvBnW5w5lbfJNkILqs/akXf3k/CYjU9D5ijRlVmot4iZheuS1OQUSyQeG/iX8o5ykdPckImCsxX8u99FuobgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+tNrfO1BBA8j1Dq/0GIl+or9IXdBYoeXdoeWeh/pIk=;
 b=OXX86wYhp9G38eZpuMGH1y/GR+KtNyGosyYnlDC98aBFiayuKxnfTpdGypHx0DW9vahrovnJp2NcQmShxUPpS/HHW3arUzCAc70xgOboSrgBmIblH/4wYhiqSVasF5PtM3TG6021xkDEg7lNkrgzv/+if6FiXfw8FufkuBOMBkzmXawa2L9p+CZBXbBOpGzgB2hfqXatCuOyY4hIFb8ogqC9dmrdfRVNQ1sJAGCz+4fifxf82BsTDxt5IvRLkxBYRRFW5ebdcF6xh9FhAUVUXVqZF+GS9xif34G2hw+K4keHpFE/vlEwj4OZmNMj7ld9aGNi3EnGVmgSHU8EDCqcfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+tNrfO1BBA8j1Dq/0GIl+or9IXdBYoeXdoeWeh/pIk=;
 b=UvEauSZ4v41XfDxylJxcIXmmyhqUohxOZ2b+QhwoQ07337Nm06e6ga93OLSEvfImFVtDmcEXYOi7Q8oHsmBxNKOX/jNV/8VHviebiTSb3xSBI4wlHFxUt9KKvYbrECsqRf1pvFmkDkqv9Kyk83p2jIdxLdnfwR4bD887DvH5I4Q=
Received: from SJ0PR12MB7007.namprd12.prod.outlook.com (2603:10b6:a03:486::8)
 by MW4PR12MB6683.namprd12.prod.outlook.com (2603:10b6:303:1e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Wed, 24 Jun
 2026 19:01:30 +0000
Received: from SJ0PR12MB7007.namprd12.prod.outlook.com
 ([fe80::6f95:c4a2:894d:9e8a]) by SJ0PR12MB7007.namprd12.prod.outlook.com
 ([fe80::6f95:c4a2:894d:9e8a%5]) with mapi id 15.21.0139.018; Wed, 24 Jun 2026
 19:01:30 +0000
Message-ID: <09d1d978-0519-466b-8c81-fc045c415209@amd.com>
Date: Wed, 24 Jun 2026 15:01:20 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/atomic: only add states of active or transient
 active colorops
To: John Harrison <John.Harrison@Igalia.com>, Melissa Wen <mwen@igalia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Alex Hung <alex.hung@amd.com>,
 airlied@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 simona@ffwll.ch, tzimmermann@suse.de
Cc: Simon Ser <contact@emersion.fr>, Uma Shankar <uma.shankar@intel.com>,
 Xaver Hugl <xaver.hugl@kde.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Rodrigo Siqueira <siqueira@igalia.com>, amd-gfx@lists.freedesktop.org,
 kernel-dev@igalia.com, Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar
 <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20260526142940.504911-1-mwen@igalia.com>
 <20260526142940.504911-2-mwen@igalia.com>
 <e8aaf4da-8fb6-4d6a-95d6-563ac0562b49@amd.com>
 <4452e675c4853faf665b520a8932a960946206bb@intel.com>
 <f9e5f9ed-ed15-40ae-9330-44f8c42f5f98@intel.com>
 <cb0599d2-9dd5-4e93-b21e-b843f4a79182@igalia.com>
 <0a0a4d13-9821-4a74-82f5-5309a1e168ca@Igalia.com>
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <0a0a4d13-9821-4a74-82f5-5309a1e168ca@Igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YQZPR01CA0009.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:85::22) To SJ0PR12MB7007.namprd12.prod.outlook.com
 (2603:10b6:a03:486::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB7007:EE_|MW4PR12MB6683:EE_
X-MS-Office365-Filtering-Correlation-Id: d05341fa-5fe9-4a78-668e-08ded223004c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|23010399003|18002099003|22082099003|921020|56012099006|11063799006|6133799003|4143699003;
X-Microsoft-Antispam-Message-Info: QA4GH8A9txl9Ke+pwXr0ZxrRoJ/biD+uEaErtwVC/ApKYFWDHlTmh35YgBqOaHgXC80Ar9pdIby3pwI9xOWEUcLN7KRflqW/VeA5Fcj9Dv+ednCt7Q/+3tXUIf7c5TUn2JMNhDB0HArqPLcPrOjgDCLr7cEi5hVYaJzCYrbiAPfSsiEvhy2zk3a82gYVGZXAX3X3n5JcC04E8MrlFwfgBunGWH2hhO0/cABGTt+nwDHgO5TL9tXNm27S/0p12ss+JSHUn2O5wpWML0iGYS5osA7QdeJC4ZkbS99+04KrTNXk5VISqMzEPatvquAaaFqGDg3jstkni3PEkNhSZ6GFJnnGTvE91l9BaI/66E6xA73J2uJEbs1cVtYOh+b3CFDnCVZ0XZtkpSkYLG2oJF3nu/21VfzoHjSwPdBQKzMzm8rE7kAzI+3EC8iq6Wnh0s7HH0tsspkr8/YMOFbFQkHl7bn6IrdaQAyNj/Xpi6RhDnsYbu41XsLlBleJRyfysNKiW71BfJ3jRwVI+EZ9s0xh5vIAYf0G/q2TMgYX61geem97rklWbZ5Tdl1Cs6z87klbkPiT/YTG0e+hQGI6z3xU6FDPM0f+blmiP2FiyNc3lZEXlr72mmhjj8Fz6/JFMNYPEW6xMGW+3YQM+b4nm83PUTRuGUtiaJr/e2R/3eBx+KQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR12MB7007.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(23010399003)(18002099003)(22082099003)(921020)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEk1by9XMm81ZEJodWxsTlZGMHhmK2M0ZFJHeTRvQXpIZEVpQ3dnWFpzSXlN?=
 =?utf-8?B?SVpuVXpIS2hLS3oraFU3UjVSVXVRdU5lQlVta3BKVFQvZmhnb3dtdFk3c0Yw?=
 =?utf-8?B?SWRUZGlGdzVPckd0d3VHb2diVGlGaDBZdjBPd1FMc2tKYlo3RWZpWHJCd1Fo?=
 =?utf-8?B?aGtXSEJmckRGN2lBbzhCenk2NzhuVm1YTkRHR0tyK1lnYVVEUytoZ2s0Z3Zo?=
 =?utf-8?B?LzFvNk5kZFZETHQ4VTEwUzVZQ3JlOVd5ZUlEaDVnYmtDYUpuR0tBNTZ1ZHl5?=
 =?utf-8?B?d056Y0k2a2JXWml5ZFEvSUJBYW0zb0JMVitHREJhMVdhK1RaQnBKUzczZFQz?=
 =?utf-8?B?ZDdHUzVTclhVODlISWFVNlJaVjMveHdvSHFmUG1Lb1JnNDJrTjliMXkyQUlW?=
 =?utf-8?B?N2pjcXhwNlNWOTEwQmw2YnR1Z0tSY01WeFhrUUFRV0tLRVRGVU9qamlJMG1i?=
 =?utf-8?B?cjh2NitOVDNZWGpVYjhKVU1qZEJLSWlITkFEcnRvYTY1WmhFY3hISUlvWlR0?=
 =?utf-8?B?a0wrTEswVy81ajFJSjJiKzF5ZlNXNG1lczhtSDIzZFhyZ0UrckFuZFMvMzZw?=
 =?utf-8?B?RS9yOTBQVTFHa3laYW1udkplS0V6cURuVEE4djBhUmE5a1hBSkhlRFlyamNZ?=
 =?utf-8?B?dEVmcWk5NjE4Tzd6OUtoeGRDc3RwQnAxL0I0VmNWaFR5SFBWUDR6WFJPOEVk?=
 =?utf-8?B?U2tFeVNrOWRNeVByZk10U3h2OFV5ajJtNnB4NlM5WEYxVjU4ZnhBUmNJVkFM?=
 =?utf-8?B?WWVPa3VwRjlkZ2N0WEdOMHVvTENHTjZhWi9VRGpCM2RON1RLVFN2Z3NyQ0ph?=
 =?utf-8?B?allHOUp1YzQ1WDZ3U1JxWWlZK045YnAyakJabWRUc1lQazVnTGMwcW5Sc3M2?=
 =?utf-8?B?RTFld3lDZmgwZ1JzTUIyc2xpK09DZWxGZ2pkcFlJamtRcmkyWFp4NS9VQ2Vo?=
 =?utf-8?B?MjJ4WitxVFd2c3BnblBRa09oMzZ6Z2Z0Y0RPRnhXUzA1Vk5WL2hDWHFFd2Iw?=
 =?utf-8?B?RU9kanI3OG1zTHI4Q0xLZ1VBZlcyakxHSFJYazVwVm1WOWs0bHNUWHhLOGwr?=
 =?utf-8?B?REZOcDNsWTR3T2VjcStoSkJvaDEyYkhvRVlKMTh6dTBzZnQ2MFMwc1EzZVgr?=
 =?utf-8?B?N1RXNWlaOTR1Yzhvd0IrclZVTWw4bGV2RGVCV2wwaTNBaDhMYURoYjJ3RmZU?=
 =?utf-8?B?UGh0bGxlbmNpT1J4T0pLYjRXYzJKbDUxMW9ySjN0L3pSMUZGYkVHcVB6SDhs?=
 =?utf-8?B?QnpscmlSbVVPRW1MVW10SkRmOHlWZE5YOS91bzlVY2p0TXNWUndOT3M1cCtq?=
 =?utf-8?B?MVFDemJ1VzVpMjNhbHprVUNxeU9oeDIwa05SZFpqd0ZMckJUNFhuYk16N3hv?=
 =?utf-8?B?empHd2Q4b0xmNGoxQ0d6b2NnSmFYMkRWQldsWHhRT1FQTVpnaEorZVdwRHI0?=
 =?utf-8?B?eXJ4alRQVzRTbjMrRWx5RFV2R1VXSjNrNTlDVHQ5NnVpRWVVbjc2QUtjc2hq?=
 =?utf-8?B?UkJab2J4bU8zcEZ4bHFXeDJoT24wa1FXQ2lBeDVnaGFnRzhsWEM3RzBaaWt5?=
 =?utf-8?B?WGRnbmMzWENtVTAzRzhOMTFpTHpWK0dab2lDVzM4UG1sSGc0VkxDMERCa0Nk?=
 =?utf-8?B?a2NZSk5qajRhM3VnMmdvUit4WG15QUJpT0ZId2s4WEY0OEFRVzUvQVloK2p4?=
 =?utf-8?B?TkRkUEpHcG9vQnBOR3M4SDN6L2U0MEpQS1R3RFdGaU9NZTJNSUdyMGlSK0xu?=
 =?utf-8?B?dEgxZFQ3OUF4NHh5YXpFWVUwbjRhaW1NcFJGK0dDdHowOGgwemZKcjhmUyt5?=
 =?utf-8?B?VTVYUkYvYVBQSGNFLzFvVmRCZUpoUExGZ1JuZjZtS0xIQ3NLeUNwN3FmL1NR?=
 =?utf-8?B?WHpLRUhHR1RXbFlCZlRmNVdlQUdiRWp0MjJnaEE1ei9TOU1IMnpiUFN5L1Fu?=
 =?utf-8?B?ak96dTVocDlDWVFFWVdaNVJVTXRlWjE1bzhTVjd2Z0dVNTJtRm9TZXFWOXpG?=
 =?utf-8?B?YzZ0QnZsd1NrUTBLVVNsRGtxMkJuektJdytiUFMwbUJqZWxTSm5sUnR1bmtL?=
 =?utf-8?B?UDdLWC9reWZDSE9kOGUrMEdqdS94bEdZMEVERDUwNUVkUzh5TTFUM2hrSVBK?=
 =?utf-8?B?ejlJLzNXS25tRksyMnNOemVCTEtVanROalk5Rk96T2U5UENzU1gybHAvQm80?=
 =?utf-8?B?MWk5M1JtWW0wMUVqY2lFVExGNmU2bHU0a3V3VjBxVzU4SjFiRUF0M3FPbUhO?=
 =?utf-8?B?SjVXdFdQTXlLREZ4bEdiOSsyR29EaVQxKzJEcGJQL20rWnJXSVAraGhpSElz?=
 =?utf-8?B?dXdzMEZhTWx5MFpJSGZpR0YxZzBnZnVXZjhJbmpNamZnU3lEdVg0dz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d05341fa-5fe9-4a78-668e-08ded223004c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB7007.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 19:01:30.5635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pY6BklT1kN5ghqFDeLcjCUQoiVHruOli5u0LV8LaReYaJXQYReTMEz+oDLxiuTrej8Hs1v1d3l2FkRjUBKK/Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6683
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[Igalia.com,igalia.com,intel.com,linux.intel.com,amd.com,gmail.com,kernel.org,ffwll.ch,suse.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[emersion.fr,intel.com,kde.org,collabora.com,bootlin.com,linux.dev,igalia.com,lists.freedesktop.org,oss.qualcomm.com,kernel.org,gmail.com,poorly.run,somainline.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C521D6C0D95



On 2026-06-09 13:23, John Harrison wrote:
> On 6/3/26 04:27, Melissa Wen wrote:
>> On 01/06/2026 11:24, Borah, Chaitanya Kumar wrote:
>>> On 5/29/2026 7:16 PM, Jani Nikula wrote:
>>>> On Tue, 26 May 2026, Alex Hung <alex.hung@amd.com> wrote:
>>>>> On 5/26/26 08:17, Melissa Wen wrote:
>>>>>> Only consider affected colorop states those that are part of an active
>>>>>> color pipeline or a pipeline that is about to be activated or
>>>>>> deactivated in the same atomic commit, i.e., colorop is in the chain of
>>>>>> old/new plane color pipeline property. To cover color_pipeline
>>>>>> deactivation, remove the condition for plane_state->color_pipeline.
>>>>>>
>>>>>> Signed-off-by: Melissa Wen <mwen@igalia.com>
>>>>>> ---
>>>>>>    drivers/gpu/drm/drm_atomic.c | 67 +++++++++++++++++++++++++++++++-----
>>>>>>    1 file changed, 58 insertions(+), 9 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>>>>>> index 170de30c28ae..4fb3a23e862a 100644
>>>>>> --- a/drivers/gpu/drm/drm_atomic.c
>>>>>> +++ b/drivers/gpu/drm/drm_atomic.c
>>>>>> @@ -812,6 +812,59 @@ static int drm_atomic_plane_check(const struct drm_plane_state *old_plane_state,
>>>>>>        return 0;
>>>>>>    }
>>>>>>    +/*
>>>>>> + * This function walks old and new plane state color pipelines and adds all
>>>>>> + * colorops in use by @plane to the atomic configuration @state. This is useful
>>>>>> + * when an atomic commit needs to check all currently enabled or about to be
>>>>>> + * enabled colorop on @plane, e.g. when changing the mode. This also avoids
>>>>>> + * including colorop states that are not part of the atomic state.
>>>>>> + *
>>>>>> + * Returns:
>>>>>> + * 0 on success or can fail with -EDEADLK or -ENOMEM. When the error is EDEADLK
>>>>>> + * then the w/w mutex code has detected a deadlock and the entire atomic
>>>>>> + * sequence must be restarted. All other errors are fatal.
>>>>>> + */
>>>>>> +static int
>>>>>> +drm_atomic_add_pipeline_colorops(struct drm_atomic_commit *state,
>>>>>> +                 struct drm_plane *plane)
>>>>>> +{
>>>>>> +    struct drm_colorop *colorop;
>>>>>> +    struct drm_colorop_state *colorop_state;
>>>>>> +    struct drm_plane_state *new_plane_state, *old_plane_state;
>>>>>> +
>>>>>> +    new_plane_state = drm_atomic_get_new_plane_state(state, plane);
>>>>>> +    old_plane_state = drm_atomic_get_old_plane_state(state, plane);
>>>>>> +
>>>>>> +    if (WARN_ON(!new_plane_state || !old_plane_state))
>>>>>> +        return -EINVAL;
>>>>>> +
>>>>>> +    drm_dbg_atomic(plane->dev,
>>>>>> +               "Adding old+new pipeline colorops for [PLANE:%d:%s]\n",
>>>>>> +               plane->base.id, plane->name);
>>>>>> +
>>>>>> +    for (colorop = new_plane_state->color_pipeline;
>>>>>> +         colorop;
>>>>>> +         colorop = colorop->next) {
>>>>>
>>>>> This for-loop is used 5 times in this patchset. How about a macro in
>>>>> drm_colorop.h?
>>>>>
>>>>> #define drm_for_each_colorop_in_pipeline(colorop, pipeline) \
>>>>>       for ((colorop) = (pipeline); (colorop); (colorop) = (colorop)->next)
>>>>
>>>> Is there a reason struct drm_colorop reinvents lists and doesn't have
>>>> struct list_head node?
>>>>
>>>
>>> I believe that's because the "next" colorop is exposed as a property (of the current colorop) to userspace. Since the chain is already described by the property, a struct list_head would be redundant.
>>
>> Also, each color pipeline is an immutable chain of colorops where the sequence and position matter: once the chain is built, colorops are never added, removed, replaced or walked in reverse. It's a forward-only chain that ends when next == NULL, and it directly matches userspace mapping. Another point to take into account is that there is no struct drm_color_pipeline to hold a list_head yet, since each color pipeline is identified by the first colorop element in the chain. Maybe we will want a container to link a given pre-blend color pipeline to a specific post-blend color pipeline for example, but linking pre- to post-blend color pipelines is something we are still not clear about.
>>
>> Melissa
>>
> "there is no struct drm_color_pipeline to hold a list_head" <-- I think this is the real reason. It is possible to convert to use a proper list structure, but the result is slightly messy. I had a quick go at it to see how messy:
>     https://patchwork.freedesktop.org/series/168200/
> 

Yeah, Melissa and Chaitanya pretty much described why they work the way they do. I'm not sure it makes sense to replace the mechanism with lists and any attempt to do so should make sure not to break userspace ABI. I'm not opposed to improvements either if anyone finds a solution that makes everyone's lives easier.

Harry

> John.
> 
>>>
>>> Harry, others can chime in.
>>>
>>> ==
>>> Chaitanya
>>>
>>>> BR,
>>>> Jani.
>>>>
>>>>>
>>>>>> +        colorop_state = drm_atomic_get_colorop_state(state, colorop);
>>>>>> +        if (IS_ERR(colorop_state))
>>>>>> +            return PTR_ERR(colorop_state);
>>>>>> +    }
>>>>>> +
>>>>>> +    /* Same color pipeline as new; no point walking old. */
>>>>>> +    if (new_plane_state->color_pipeline == old_plane_state->color_pipeline)
>>>>>> +        return 0;
>>>>>> +
>>>>>> +    for (colorop = old_plane_state->color_pipeline;
>>>>>> +         colorop;
>>>>>> +         colorop = colorop->next) {
>>>>>> +        colorop_state = drm_atomic_get_colorop_state(state, colorop);
>>>>>> +        if (IS_ERR(colorop_state))
>>>>>> +            return PTR_ERR(colorop_state);
>>>>>> +    }
>>>>>> +
>>>>>> +    return 0;
>>>>>> +}
>>>>>> +
>>>>>>    static void drm_atomic_colorop_print_state(struct drm_printer *p,
>>>>>>                           const struct drm_colorop_state *state)
>>>>>>    {
>>>>>> @@ -1591,11 +1644,9 @@ drm_atomic_add_affected_planes(struct drm_atomic_commit *state,
>>>>>>            if (IS_ERR(plane_state))
>>>>>>                return PTR_ERR(plane_state);
>>>>>>    -        if (plane_state->color_pipeline) {
>>>>>> -            ret = drm_atomic_add_affected_colorops(state, plane);
>>>>>> -            if (ret)
>>>>>> -                return ret;
>>>>>> -        }
>>>>>> +        ret = drm_atomic_add_pipeline_colorops(state, plane);
>>>>>> +        if (ret)
>>>>>> +            return ret;
>>>>>>        }
>>>>>>        return 0;
>>>>>>    }
>>>>>> @@ -1607,10 +1658,8 @@ EXPORT_SYMBOL(drm_atomic_add_affected_planes);
>>>>>>     * @plane: DRM plane
>>>>>>     *
>>>>>>     * This function walks the current configuration and adds all colorops
>>>>>> - * currently used by @plane to the atomic configuration @state. This is useful
>>>>>> - * when an atomic commit also needs to check all currently enabled colorop on
>>>>>> - * @plane, e.g. when changing the mode. It's also useful when re-enabling a plane
>>>>>> - * to avoid special code to force-enable all colorops.
>>>>>> + * currently used by @plane to the atomic configuration @state. It's useful
>>>>>> + * when re-enabling a plane to avoid special code to force-enable all colorops.
>>>>>>     *
>>>>>>     * Since acquiring a colorop state will always also acquire the w/w mutex of the
>>>>>>     * current plane for that colorop (if there is any) adding all the colorop states for
>>>>>
>>>>
>>>
>>
> 

