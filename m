Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GGuAHLj2TGqlsgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:53:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B23671B8A2
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:53:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HEXvHpz2;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 321F610E4C5;
	Tue,  7 Jul 2026 12:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010065.outbound.protection.outlook.com [52.101.85.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C20C10E4B0;
 Tue,  7 Jul 2026 12:53:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lv9WgPmBiBJ/bDRrPwX3vK5BwjVkosUYqREp5tpRGhvuRuLaGbS7qTvArpVmyGQrb5w3QsJ753mMDQ6IYm9LmEXoxkthAdtdIWg+XF8uWyzrG7nILf4+cvU0UjiBRYa7TZDfwgqM2S+tfwDT4OyRRfBR2B8lI2VXRs+4kIsXh2ImVJWy332BxkLSHC4zNTWGJkj8HJaDd0/yZbwyd/7oKUaf9HZ4WDOXDigkF7Lck5mmFwG/DNqL3bOxUwJCFUYn968iyd7aLIr0/iRNzggXqEIDETHaAN8KM0b5y8YaXBrfI34VbLAQrqK3BJtUNoh2+gTsNW3ox8W3hryW/yjKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADXugJg0HqFz0ZLgmmCn/z0nSQVMYEYX6d90AllHhA0=;
 b=MhkG93W9zzbcQSEzsRpMquOQ6znYPErnTMMe6lxtk6736ySyR0oJiIuKhjSmpQdhv4/vhidmGUMSNw+Rjy/DGH4r/NrRGxCO3SbOe7CB952j3wUy0R4aAZ15J8/RbeltaZ8f5YGzRQZX+lkbGBq4mhPvhNINBLTycflk+/WqJuTbXIdLztfRWJVvweqtXmYir9mjqSq8cR6I8jUcPsHaOLLh4kj2L2dGdSQY3oyPlJFVAeVMBwC7ziQdcOSC9Fjw2yKk3ofaGHhR9KSl8SvX+QlzLobf4jyNNQoGSOEWrDxcy4L0/UKHi2iYykQWZhnRbvrAW9SA2RQe+y09cDIMPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADXugJg0HqFz0ZLgmmCn/z0nSQVMYEYX6d90AllHhA0=;
 b=HEXvHpz2yTzEDVrSMc+gFl/YdxIyT3F3aCWVk1ZWrjtI+ezWEbTgSVe1K9kaxFoME4I/XbXIizirAOt2iDqboxEoqcoegsCd9SmmwxKKi5UiTKUa8NxH2bkGUrx6bWrTbtl0cMxB8dfbdj6LJdwj83CYI7wtRTq7n6lWgJkT4/M=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH2PR12MB9493.namprd12.prod.outlook.com (2603:10b6:610:27c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Tue, 7 Jul
 2026 12:53:00 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 12:53:00 +0000
Message-ID: <0721f2c8-edc3-4a8e-9469-effd3a70dda3@amd.com>
Date: Tue, 7 Jul 2026 14:52:53 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Natalie Vock <natalie.vock@gmx.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <5d56ec48-b0f0-4f03-8ec2-f8cc34cb3186@amd.com>
 <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
 <a67cc4c5-7545-4f8e-aa89-e90b3bee523a@amd.com>
 <a5e1afa24b975a1fcf17949875d4a0e0772dcc70.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <a5e1afa24b975a1fcf17949875d4a0e0772dcc70.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0194.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH2PR12MB9493:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d1ca63c-de88-4e95-16f0-08dedc26acf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|7416014|1800799024|376014|921020|6133799003|4143699003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: m8/UXs4AvBEknev6arAFXsu6yHQthxb4MGYinhMlHn47h0dwHFtALo3dRq258Y9MXRTZF4yDuHmmXAV4xcrjYs7Ud5PSsawYfu/8lWFLGOYpK8kKNK1JvBDJtJqCbPP9qs8MGT0pWAnQOY8K5dYncmBWq+hBMwPTtG0rtpwcDnj2GOeSAPSoLlYOrYk8oIpXlMfIvv1n0G9RdnuW94UCu5+SZ0lmXltKzFMvNDFMq8Cik+ioTM7o1PVQMaOS319ZO5C1DJLRnzDua41jlKMfBk0iSR/SPZeL22bbqDkY9vf0XqACCd+2GAxbXUhQqvs0XkZkDsJJAlf/ccc/x50eARVD/MF1sIbOFB9GE9CJD2uZBNeJu5Qn4j8SypNUaH+9LjD8VAc3Ly+roL7ZIfTWjH9kOxTRP3fhNmbgflUhvTmigj1Q175HvS8N+csZF8kf7R25eRKuSocadFW8IlLStTngGqX+jcJobe/rrRNnOlAZtvnnv1lRpzVdFJJGgBPxfJCWmDjKp/kbOfsG0v7H7dQjRtrANRSkc35E7zVYWcjI3DJ+KGYMtYHr8hnwSwhUtbi9/JH9uNg1ydpzUphec4hUIhRcOE6V0I3dpHVG4BtDn69JydEIhhp5YBl9PdHBYKtQRpEmjNO0nsljfnc6nziaauc0MRRZKm9k5RfbdBVRGsScHFuk2wgQ/ELt0f3UgI1/iIvoTtXx+yE/u524EQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(7416014)(1800799024)(376014)(921020)(6133799003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGdISlByL0VsVEl2Z3NMM0IvSkJmVm9teXh4REZsOENxTzcvdVZwQWh1YWZV?=
 =?utf-8?B?Q0ZhQ3VVMG4ydU82dE5sOUVWV3BOUjRMeUFvVlFZYThLV3d4UzE3NUhlYzFw?=
 =?utf-8?B?RDFqdHVRN0lTYnFDbmRJcDVhM0ZRcXkvUGxxcm5JL1F6U00zZ0dIak8zOC9I?=
 =?utf-8?B?YUFlRDE4YXJ0cVM1ZS8vL3R6ZVRweTRpcTJYZEtZeWl4UkFCVzk5Qy93NXJa?=
 =?utf-8?B?OTdEUWtkWXVVTnlUdVh4akVSQ1pBc01TSlRESjF2Z0J4ODlMckw4WVNrMDgz?=
 =?utf-8?B?NGtteWFFb0h1RFdTT1BzNkxoSVZLcFVYZWI1Q0dOcXZ5VlVSRitDRDU0dEIw?=
 =?utf-8?B?dXVsNDB5Y3ZsN2JHRDljc1kwVkxJWU1OYk9lOWw0azFzd3NJZkt2NTE2N3Yx?=
 =?utf-8?B?SWpZNVBGYS9zVDBJVlEzZlhXWWZGdkFwbmxLQ2R0WVI5SE55a2d5eEFtYTdo?=
 =?utf-8?B?a2QveWRacDlMV0lxKzZCcjVhcENzNnBDUWRDTWF4dXBIV2lkY1h1ckFXQmR1?=
 =?utf-8?B?dTRsL25FRTFERHh4YjZZNEtrTVVzbTdMakY5ZHJiWWNvTm1acEpjVmtOSGMy?=
 =?utf-8?B?elBSNXpaZ3BSRU12dG5UUVRHbzBCcE5UcE5MNWJIMStvQkUwMlI3Z0pNZEYr?=
 =?utf-8?B?NlQ0aGlqdURTamt3c00ySUJZaVZicTVLTmlRT3U4dnFDQzU5d09LUlZLN3RC?=
 =?utf-8?B?UWp3d1hMSmtpKzV5bzNEYXhYREJGNVZKYVFIVDJlSyt1cnZ1UGcwVVVsdGJ4?=
 =?utf-8?B?TythWXlOQVpqNnVtQ0ZzUjA3b1loY3ZwcWlJMlpRaE9WNkJmQXRKY3pseVdE?=
 =?utf-8?B?RFBUWWdyL1JtMVp6YTRLUnAvbmE0U01xUXdXU3czd0xlQzI4VzRGUURrWmp2?=
 =?utf-8?B?NmNacFNJSXZobTc0N3Y2U3hNbDhmUDRvWCtYRFZSV09CaStHUk52VThMbGdO?=
 =?utf-8?B?VHQrakovQlNDSlJmTGZoY1JEaldpME9NSlRzS0owL0QzamxoSnFOdlhWd3JI?=
 =?utf-8?B?amRuSVRObUM4K2hxemFBajdCbGlXYWV4WXFTQUVTVitlNytpdzZBcFMzS3Fr?=
 =?utf-8?B?UVFkMUw5Q2oya1BxdTFSUkdvOTRSQUpFd00rdCtMMmRXTlVaeGFoRjVyM1Nt?=
 =?utf-8?B?RHBIZWUwQ2NkV1dBS1VHVVg1YXI2NlpaK2RIZXF4VUdDUVdPNWw3MCtsMGlJ?=
 =?utf-8?B?YTBaRVpPTkdoUXY5YzhEWGx4K3NUQkg5RzRGM0l6bWZ6RTVHZEp5ZHNwMEIz?=
 =?utf-8?B?Wm1PdHlEMThMQW90S2oyRTBmOWpudkRCdE90YzJtdWZpSFdDRkMvSUwxZUF6?=
 =?utf-8?B?UmRucEtKNW1XVXd1R1ozbXZkUTBkNVIxRGJSZ3NmRG9uak9NQ1dVNUpmTllD?=
 =?utf-8?B?ZmdZTEgvb1VtYVhtRjhYRjFua3MvVzQ2dkIzTTZhNkthRDVuKzlKaG5CaTFP?=
 =?utf-8?B?RUNEdmYwUWRGYkVtbHRiME9NblREWTViT2U1TlQydlVDWVdmTXFmd1l2a1ZS?=
 =?utf-8?B?ek93WDdwQWhodHNiUks1VGp5ZmNGbUMxZVJ1UXpTTXZPN2VVNnhsYVpEWDVM?=
 =?utf-8?B?dHlPemx0UzFEcDRRVklPSmxBWlh1UDF3UHRHQ0x4N2c2dGllVTlIVFRULzQz?=
 =?utf-8?B?NDY0bEZ4Qkp3Z0VwMkdTemFaTGpFcWkrdU05NkhLNWUwZDl4QzJUV2pDa20r?=
 =?utf-8?B?UFA5ZWdITlhtOGhyRzJvVUhtY1ZUVUdyb1YxaFFGNmlqemkya29NelJlRWEx?=
 =?utf-8?B?ODJaMDhCeXlSeGlEUzlmQlpjTFJCZlNjS2J1TlBrWjI3OStZNVo3emY1Q002?=
 =?utf-8?B?Qi9oWFZMSjYwanlHNWRzWFArTkwwUFh6V3doYUY3NmVTS1RhZnlYTGtnZEJt?=
 =?utf-8?B?REYycXVpeE81RHZOK0VjdStUZWlwUXRuS0hCOWI2THY3OXVISVkwWC9FUXZm?=
 =?utf-8?B?L01DVTk5YjhXbHlhcEN4VFd5OTBFL2ZwSFk3eGZpR1ZOTVpLdVcwTkprK2tX?=
 =?utf-8?B?ZExhWEtlWHFHbEUyL0p6SjQ4QUtOZllXWEVteHlpK1Z2M2xjY3B1V1dDQzU4?=
 =?utf-8?B?Yjh0c0ZvdWRsb0xtSVhPWkxza0RUREcrb2ZEWkhUb2NReGFzd1l2UmFxM3R0?=
 =?utf-8?B?UCsvaGdzUTVuT3BpRzdmTFREOTlZUG8yNlBmeGdHa2p1Tld4YXZFQzJicW43?=
 =?utf-8?B?bmxKUUJUaWdEM2ZPemRIVWgveFhjQzFFOEtybVVmNERDWTFJRE1FbzVLb3Vz?=
 =?utf-8?B?OTBHWm5hM0F5MmJ1TFBFT1pWRnlGN2oxVithdUo3UnlMZGZTQjdPeE85TXU4?=
 =?utf-8?Q?FAVh6QXINS6gu1wT2L?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d1ca63c-de88-4e95-16f0-08dedc26acf3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:53:00.5510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5zd0HmqlpdrUvcQcbyaJst8AesG52EJ1YeOxGdwotqJ8FvZa40ABJwCeRIunsvXT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB9493
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
	FREEMAIL_TO(0.00)[linux.intel.com,gmx.de,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:email,amd.com:mid,amd.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B23671B8A2

On 7/7/26 11:53, Thomas Hellström wrote:
> On Tue, 2026-07-07 at 10:48 +0200, Christian König wrote:
>> On 7/7/26 08:56, Thomas Hellström wrote:
>>> On Mon, 2026-07-06 at 20:23 +0200, Christian König wrote:
>>>> On 7/6/26 19:01, Thomas Hellström wrote:
...
>>
>> The problem is that locking the dma_resv object for release is
>> mandatory not only for proper DMA-buf import handling but for tons of
>> other use cases as well. In other words DMA-buf imports, page tables,
>> per process buffers who use the same dma_resv object as the root PD
>> etc...
>>
>> By now we I don't think we can't avoid locking the dma_resv object in
>> the delete path, so a completeion event or any other method which
>> blocks for resource cleanup without deadlock detection won't work as
>> far as I can see.
> 
> So in the TTM code itself we have only trylocks, so that works. For the
> other ones, trylocking the individualized resv in release_notify() or
> delete_mem_notify() should cover all / most cases except the dma-buf
> one? xe is doing exactly that. For imported dma-bufs it might even
> possible to release the resource before cleaning up the bo attachment.
> 
> One problem remains for shrinkers, though, The memory allocation in
> individualization becomes a problem. We'd either need to annotate those
> allocations with PF_MEMALLOC flags or skip shrinking zombies.

That still sounds like a massive hack to me.

Especially the release notification is something I wanted to move under the correct lock (_resv) in the long term because drivers tend to mess that up.

>>> Since it's a layer violation to pass a drm_exec in an augmented
>>> dma-buf
>>> map we will be needing something at the dma-buf level to handle
>>> that,
>>> and given that, it also makes sense to base the eviction mechanism
>>> on
>>> it.
>>
>> Well I disagree. The DMA-buf invalidation notification intentionally
>> doesn't have a ww_acquire_ctx.
>>
>> Background is that when this is called exporters have often already
>> passed the point of no return and the importers just *must* act on
>> the request and can't say 'Na, sorry I can't take the locks I need'.
> 
> I'm not referring to the invalidation. I'm thinking of the following
> sequence:
> 
> xe_bo_validate()       // Importer. Finds it's an evicted dma-buf.
> dma_buf_map();
> xe_bo_validate();      // Exporter. Short on memory.
> ttm_bo_evict();        // Exporter wants to evict but lacks a ticket
> 		       // and is limited to trylock and loses.
> 
> The remedy is to optionally pass a ticket in an augmented
> dma_buf_map(), but then it can't be a drm_exec. dma_buf invalidation
> stays as it is.

Hui? dma_buf_map_attachment() is called with the reservation lock held for quite a while now.

If a ticket is used for locking or not is up to the importer. And that TTM eviction is limited to trylock is what we try to solve with this patch set.

So I absolutely don't get what you try to solve here.

>>> The ability to reuse the TTM refcount for now would just be a way
>>> to
>>> separate out the zombie handling from this series until we can do
>>> it
>>> properly. After all this series is about enabling sleeping ww
>>> locks.
>>
>> Well the problem is that I don't see how it should work with the TTM
>> refcount.
>>
>> This basically means that for each lock operation has an ops table
>> with put/get, in that case it would just easier to make the ww_mutex
>> ref counted.
> 
> Each object type embedding a ww_mutex needs an ops table pointed to by
> the lock operation. But get() is not needed, only put(). (See the RFC),

I don't think that this is a good ide at all. This clearly just complicates things even further.

> If we refcount the ww mutex, instead it would need a separate
> destructor for each object type. We'd save a pointer chase on put but
> need extra care on object creation and destruction, so I'm not sure
> it's easier.

As far as I can see that approach doesn't needs an ops pointer at all. You just save the contented ww_mutex object in the drm_exec container instead of the full GEM object reference.

Let me give that a try a see how far we get.

Regards,
Christian.

> 
> /Thomas
> 
> 
>>
>> Regards,
>> Christian.
>>
>>>
>>> Thanks,
>>> Thomas
>>>
>>>
>>>>
>>>> Regards,
>>>> Christian.
>>>>
>>>>
>>>>>
>>>>> Also for reference: (Section at the end and follow-up messages)
>>>>> https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600f.camel@linux.intel.com/
>>>>>
>>>>> Thanks,
>>>>> Thomas
>>>>>
>>>>>
>>>>>> Regards,
>>>>>> Christian.
>>>>>>
>>>>>>>
>>>>>>> /Thomas
>>>>>>>
>>>>>>>>
>>>>>>>> Signed-off-by: tChristian König
>>>>>>>> <christian.koenig@amd.com>
>>>>>>>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
>>>>>>>> ---
>>>>>>>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35
>>>>>>>> +++--
>>>>>>>> -
>>>>>>>>  drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8
>>>>>>>> +-
>>>>>>>>  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
>>>>>>>>  drivers/gpu/drm/ttm/ttm_bo.c                     | 135
>>>>>>>> +++++++++++--
>>>>>>>> ----------
>>>>>>>>  drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17
>>>>>>>> ++-
>>>>>>>>  drivers/gpu/drm/ttm/ttm_bo_util.c                |  15
>>>>>>>> ++-
>>>>>>>>  drivers/gpu/drm/xe/xe_bo.c                       |   2
>>>>>>>> +-
>>>>>>>>  include/drm/ttm/ttm_bo.h                         |   9 -
>>>>>>>> -
>>>>>>>>  8 files changed, 111 insertions(+), 112 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>>>> index df3fcc2b1248e..642296602de69 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>>>> @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
>>>>>>>> drm_i915_gem_object *obj)
>>>>>>>>  	 * Don't manipulate the TTM LRUs while in TTM bo
>>>>>>>> destruction.
>>>>>>>>  	 * We're called through
>>>>>>>> i915_ttm_delete_mem_notify().
>>>>>>>>  	 */
>>>>>>>> -	if (!kref_read(&bo->kref))
>>>>>>>> +	if (!kref_read(&bo->base.refcount))
>>>>>>>>  		return;
>>>>>>>>  
>>>>>>>>  	/*
>>>>>>>> @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
>>>>>>>> drm_i915_gem_object *obj)
>>>>>>>>  	 *
>>>>>>>>  	 * TODO: consider maybe also bumping the
>>>>>>>> shrinker
>>>>>>>> list
>>>>>>>> here
>>>>>>>> when we have
>>>>>>>>  	 * already unpinned it, which should give us
>>>>>>>> something
>>>>>>>> more
>>>>>>>> like an LRU.
>>>>>>>> -	 *
>>>>>>>> -	 * TODO: There is a small window of opportunity
>>>>>>>> for
>>>>>>>> this
>>>>>>>> function to
>>>>>>>> -	 * get called from eviction after we've dropped
>>>>>>>> the
>>>>>>>> last
>>>>>>>> GEM
>>>>>>>> refcount,
>>>>>>>> -	 * but before the TTM deleted flag is set on the
>>>>>>>> object.
>>>>>>>> Avoid
>>>>>>>> -	 * adjusting the shrinker list in such cases,
>>>>>>>> since
>>>>>>>> the
>>>>>>>> object is
>>>>>>>> -	 * not available to the shrinker anyway due to
>>>>>>>> its
>>>>>>>> zero
>>>>>>>> refcount.
>>>>>>>> -	 * To fix this properly we should move to a TTM
>>>>>>>> shrinker
>>>>>>>> LRU
>>>>>>>> list for
>>>>>>>> -	 * these objects.
>>>>>>>>  	 */
>>>>>>>> -	if (kref_get_unless_zero(&obj->base.refcount)) {
>>>>>>>> -		if (shrinkable != obj-
>>>>>>>>> mm.ttm_shrinkable) {
>>>>>>>> -			if (shrinkable) {
>>>>>>>> -				if (obj->mm.madv ==
>>>>>>>> I915_MADV_WILLNEED)
>>>>>>>> -
>>>>>>>> 					__i915_gem_objec
>>>>>>>> t_ma
>>>>>>>> ke_s
>>>>>>>> hrinkable(obj);
>>>>>>>> -				else
>>>>>>>> -
>>>>>>>> 					__i915_gem_objec
>>>>>>>> t_ma
>>>>>>>> ke_p
>>>>>>>> urgeable(obj);
>>>>>>>> -			} else {
>>>>>>>> -
>>>>>>>> 				i915_gem_object_make_uns
>>>>>>>> hrin
>>>>>>>> kabl
>>>>>>>> e(obj);
>>>>>>>> -			}
>>>>>>>> -
>>>>>>>> -			obj->mm.ttm_shrinkable =
>>>>>>>> shrinkable;
>>>>>>>> +	i915_gem_object_get(obj);
>>>>>>>> +	if (shrinkable != obj->mm.ttm_shrinkable) {
>>>>>>>> +		if (shrinkable) {
>>>>>>>> +			if (obj->mm.madv ==
>>>>>>>> I915_MADV_WILLNEED)
>>>>>>>> +				__i915_gem_object_make_s
>>>>>>>> hrin
>>>>>>>> kabl
>>>>>>>> e(ob
>>>>>>>> j);
>>>>>>>> +			else
>>>>>>>> +				__i915_gem_object_make_p
>>>>>>>> urge
>>>>>>>> able
>>>>>>>> (obj
>>>>>>>> );
>>>>>>>> +		} else {
>>>>>>>> +			i915_gem_object_make_unshrinkabl
>>>>>>>> e(ob
>>>>>>>> j);
>>>>>>>>  		}
>>>>>>>> -		i915_gem_object_put(obj);
>>>>>>>> +
>>>>>>>> +		obj->mm.ttm_shrinkable = shrinkable;
>>>>>>>>  	}
>>>>>>>> +	i915_gem_object_put(obj);
>>>>>>>>  
>>>>>>>>  	/*
>>>>>>>>  	 * Put on the correct LRU list depending on the
>>>>>>>> MADV
>>>>>>>> status
>>>>>>>> diff --git
>>>>>>>> a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>>>> b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>>>> index 56ad8ef325840..904cb4da6c9b3 100644
>>>>>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>>>> @@ -127,7 +127,7 @@ static void
>>>>>>>> ttm_bo_init_reserved_sys_man(struct
>>>>>>>> kunit *test)
>>>>>>>>  	dma_resv_unlock(bo->base.resv);
>>>>>>>>  
>>>>>>>>  	KUNIT_EXPECT_EQ(test, err, 0);
>>>>>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>>>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
>>>>>>>>> base.refcount),
>>>>>>>> 1);
>>>>>>>>  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
>>>>>>>>> ttm_dev);
>>>>>>>>  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>>>>>  	KUNIT_EXPECT_EQ(test, bo->page_alignment,
>>>>>>>> PAGE_SIZE);
>>>>>>>> @@ -176,7 +176,7 @@ static void
>>>>>>>> ttm_bo_init_reserved_mock_man(struct
>>>>>>>> kunit *test)
>>>>>>>>  	dma_resv_unlock(bo->base.resv);
>>>>>>>>  
>>>>>>>>  	KUNIT_EXPECT_EQ(test, err, 0);
>>>>>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>>>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
>>>>>>>>> base.refcount),
>>>>>>>> 1);
>>>>>>>>  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
>>>>>>>>> ttm_dev);
>>>>>>>>  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>>>>>  	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
>>>>>>>> @@ -969,6 +969,8 @@ static void
>>>>>>>> ttm_bo_validate_allowed_only_evict(struct kunit *test)
>>>>>>>>  	ttm_mock_manager_fini(priv->ttm_dev,
>>>>>>>> mem_multihop);
>>>>>>>>  }
>>>>>>>>  
>>>>>>>> +extern const struct drm_gem_object_funcs
>>>>>>>> ttm_deleted_object_funcs;
>>>>>>>> +
>>>>>>>>  static void ttm_bo_validate_deleted_evict(struct kunit
>>>>>>>> *test)
>>>>>>>>  {
>>>>>>>>  	struct ttm_operation_ctx ctx_init = { },
>>>>>>>> ctx_val  =
>>>>>>>> { };
>>>>>>>> @@ -999,7 +1001,7 @@ static void
>>>>>>>> ttm_bo_validate_deleted_evict(struct
>>>>>>>> kunit *test)
>>>>>>>>  	KUNIT_EXPECT_EQ(test,
>>>>>>>> ttm_resource_manager_usage(man),
>>>>>>>> big);
>>>>>>>>  
>>>>>>>>  	dma_resv_unlock(bo_big->base.resv);
>>>>>>>> -	bo_big->deleted = true;
>>>>>>>> +	bo_big->base.funcs = &ttm_deleted_object_funcs;
>>>>>>>>  
>>>>>>>>  	bo_small = ttm_bo_kunit_init(test, test->priv,
>>>>>>>> small,
>>>>>>>> NULL);
>>>>>>>>  	bo_small->type = bo_type;
>>>>>>>> diff --git
>>>>>>>> a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>>>> b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>>>> index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
>>>>>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>>>> @@ -189,8 +189,6 @@ struct ttm_buffer_object
>>>>>>>> *ttm_bo_kunit_init(struct kunit *test,
>>>>>>>>  	bo->bdev = devs->ttm_dev;
>>>>>>>>  	bo->destroy = dummy_ttm_bo_destroy;
>>>>>>>>  
>>>>>>>> -	kref_init(&bo->kref);
>>>>>>>> -
>>>>>>>>  	return bo;
>>>>>>>>  }
>>>>>>>>  EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
>>>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>>>> b/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>>>> index 3980f376e3ba4..2b470c1746f60 100644
>>>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>>>> @@ -246,88 +246,84 @@ static void
>>>>>>>> ttm_bo_delayed_delete(struct
>>>>>>>> work_struct *work)
>>>>>>>>  	ttm_bo_put(bo);
>>>>>>>>  }
>>>>>>>>  
>>>>>>>> -static void ttm_bo_release(struct kref *kref)
>>>>>>>> +/*
>>>>>>>> + * All other callbacks should never ever be called on a
>>>>>>>> deleted
>>>>>>>> TTM
>>>>>>>> object.
>>>>>>>> + */
>>>>>>>> +const struct drm_gem_object_funcs
>>>>>>>> ttm_deleted_object_funcs =
>>>>>>>> {
>>>>>>>> +	.free = ttm_bo_free
>>>>>>>> +};
>>>>>>>> +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
>>>>>>>> +
>>>>>>>> +/* Returns true if the BO is about to get deleted */
>>>>>>>> +static bool ttm_bo_is_zombie(struct ttm_buffer_object
>>>>>>>> *bo)
>>>>>>>> +{
>>>>>>>> +	return bo->base.funcs ==
>>>>>>>> &ttm_deleted_object_funcs;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>>>>>  {
>>>>>>>> -	struct ttm_buffer_object *bo =
>>>>>>>> -	    container_of(kref, struct ttm_buffer_object,
>>>>>>>> kref);
>>>>>>>>  	struct ttm_device *bdev = bo->bdev;
>>>>>>>>  	int ret;
>>>>>>>>  
>>>>>>>>  	WARN_ON_ONCE(bo->pin_count);
>>>>>>>>  	WARN_ON_ONCE(bo->bulk_move);
>>>>>>>>  
>>>>>>>> -	if (!bo->deleted) {
>>>>>>>> -		ret = ttm_bo_individualize_resv(bo);
>>>>>>>> -		if (ret) {
>>>>>>>> -			/* Last resort, if we fail to
>>>>>>>> allocate
>>>>>>>> memory for the
>>>>>>>> -			 * fences block for the BO to
>>>>>>>> become
>>>>>>>> idle
>>>>>>>> -			 */
>>>>>>>> -			dma_resv_wait_timeout(bo-
>>>>>>>>> base.resv,
>>>>>>>> -					     
>>>>>>>> DMA_RESV_USAGE_BOOKKEEP, false,
>>>>>>>> -					      30 * HZ);
>>>>>>>> -		}
>>>>>>>> +	ret = ttm_bo_individualize_resv(bo);
>>>>>>>> +	if (ret) {
>>>>>>>> +		/* Last resort, if we fail to allocate
>>>>>>>> memory
>>>>>>>> for
>>>>>>>> the
>>>>>>>> +		 * fences block for the BO to become
>>>>>>>> idle
>>>>>>>> +		 */
>>>>>>>> +		dma_resv_wait_timeout(bo->base.resv,
>>>>>>>> DMA_RESV_USAGE_BOOKKEEP,
>>>>>>>> +				      false, 30 * HZ);
>>>>>>>> +	}
>>>>>>>>  
>>>>>>>> -		if (bdev->funcs->release_notify)
>>>>>>>> -			bdev->funcs->release_notify(bo);
>>>>>>>> +	if (bo->bdev->funcs->release_notify)
>>>>>>>> +		bo->bdev->funcs->release_notify(bo);
>>>>>>>>  
>>>>>>>> -		drm_vma_offset_remove(bdev->vma_manager,
>>>>>>>> &bo-
>>>>>>>>> base.vma_node);
>>>>>>>> -		ttm_mem_io_free(bdev, bo->resource);
>>>>>>>> +	drm_vma_offset_remove(bdev->vma_manager, &bo-
>>>>>>>>> base.vma_node);
>>>>>>>> +	ttm_mem_io_free(bdev, bo->resource);
>>>>>>>>  
>>>>>>>> -		if (!dma_resv_test_signaled(&bo-
>>>>>>>>> base._resv,
>>>>>>>> -					   
>>>>>>>> DMA_RESV_USAGE_BOOKKEEP)
>>>>>>>>>>
>>>>>>>> -		    (want_init_on_free() && (bo->ttm !=
>>>>>>>> NULL))
>>>>>>>>>>
>>>>>>>> -		    bo->type == ttm_bo_type_sg ||
>>>>>>>> -		    !dma_resv_trylock(bo->base.resv)) {
>>>>>>>> -			/* The BO is not idle, resurrect
>>>>>>>> it
>>>>>>>> for
>>>>>>>> delayed destroy */
>>>>>>>> -			ttm_bo_flush_all_fences(bo);
>>>>>>>> -			bo->deleted = true;
>>>>>>>> +	if (!dma_resv_test_signaled(&bo->base._resv,
>>>>>>>> DMA_RESV_USAGE_BOOKKEEP) ||
>>>>>>>> +	    (want_init_on_free() && (bo->ttm != NULL))
>>>>>>>> ||
>>>>>>>> +	    bo->type == ttm_bo_type_sg ||
>>>>>>>> +	    !dma_resv_trylock(bo->base.resv)) {
>>>>>>>> +		/* The BO is not idle, resurrect it for
>>>>>>>> delayed
>>>>>>>> destroy */
>>>>>>>> +		ttm_bo_flush_all_fences(bo);
>>>>>>>>  
>>>>>>>> -			spin_lock(&bdev->lru_lock);
>>>>>>>> -
>>>>>>>> -			/*
>>>>>>>> -			 * Make pinned bos immediately
>>>>>>>> available
>>>>>>>> to
>>>>>>>> -			 * shrinkers, now that they are
>>>>>>>> queued
>>>>>>>> for
>>>>>>>> -			 * destruction.
>>>>>>>> -			 *
>>>>>>>> -			 * FIXME: QXL is triggering
>>>>>>>> this.
>>>>>>>> Can be
>>>>>>>> removed when the
>>>>>>>> -			 * driver is fixed.
>>>>>>>> -			 */
>>>>>>>> -			if (bo->pin_count) {
>>>>>>>> -				bo->pin_count = 0;
>>>>>>>> -
>>>>>>>> 				ttm_resource_move_to_lru
>>>>>>>> _tai
>>>>>>>> l(bo-
>>>>>>>>> resource);
>>>>>>>> -			}
>>>>>>>> +		spin_lock(&bo->bdev->lru_lock);
>>>>>>>>  
>>>>>>>> -			kref_init(&bo->kref);
>>>>>>>> -			spin_unlock(&bdev->lru_lock);
>>>>>>>> +		/*
>>>>>>>> +		 * Make pinned bos immediately available
>>>>>>>> to
>>>>>>>> +		 * shrinkers, now that they are queued
>>>>>>>> for
>>>>>>>> +		 * destruction.
>>>>>>>> +		 *
>>>>>>>> +		 * FIXME: QXL is triggering this. Can be
>>>>>>>> removed
>>>>>>>> when the
>>>>>>>> +		 * driver is fixed.
>>>>>>>> +		 */
>>>>>>>> +		if (bo->pin_count) {
>>>>>>>> +			bo->pin_count = 0;
>>>>>>>> +			ttm_resource_move_to_lru_tail(bo
>>>>>>>> -
>>>>>>>>> resource);
>>>>>>>> +		}
>>>>>>>>  
>>>>>>>> -			INIT_WORK(&bo->delayed_delete,
>>>>>>>> ttm_bo_delayed_delete);
>>>>>>>> +		kref_init(&bo->base.refcount);
>>>>>>>> +		bo->base.funcs =
>>>>>>>> &ttm_deleted_object_funcs;
>>>>>>>> +		spin_unlock(&bo->bdev->lru_lock);
>>>>>>>>  
>>>>>>>> -			/* Schedule the worker on the
>>>>>>>> closest
>>>>>>>> NUMA
>>>>>>>> node. This
>>>>>>>> -			 * improves performance since
>>>>>>>> system
>>>>>>>> memory
>>>>>>>> might be
>>>>>>>> -			 * cleared on free and that is
>>>>>>>> best
>>>>>>>> done
>>>>>>>> on
>>>>>>>> a CPU core
>>>>>>>> -			 * close to it.
>>>>>>>> -			 */
>>>>>>>> -			queue_work_node(bdev->pool.nid,
>>>>>>>> bdev-
>>>>>>>>> wq,
>>>>>>>> &bo->delayed_delete);
>>>>>>>> -			return;
>>>>>>>> -		}
>>>>>>>> +		INIT_WORK(&bo->delayed_delete,
>>>>>>>> ttm_bo_delayed_delete);
>>>>>>>>  
>>>>>>>> +		/* Schedule the worker on the closest
>>>>>>>> NUMA
>>>>>>>> node.
>>>>>>>> This
>>>>>>>> +		 * improves performance since system
>>>>>>>> memory
>>>>>>>> might be
>>>>>>>> +		 * cleared on free and that is best done
>>>>>>>> on
>>>>>>>> a
>>>>>>>> CPU
>>>>>>>> core
>>>>>>>> +		 * close to it.
>>>>>>>> +		 */
>>>>>>>> +		queue_work_node(bdev->pool.nid, bdev-
>>>>>>>>> wq,
>>>>>>>> &bo-
>>>>>>>>> delayed_delete);
>>>>>>>> +	} else {
>>>>>>>>  		ttm_bo_cleanup_memtype_use(bo);
>>>>>>>>  		dma_resv_unlock(bo->base.resv);
>>>>>>>> -	}
>>>>>>>>  
>>>>>>>> -	atomic_dec(&ttm_glob.bo_count);
>>>>>>>> -	bo->destroy(bo);
>>>>>>>> -}
>>>>>>>> -
>>>>>>>> -/* TODO: remove! */
>>>>>>>> -void ttm_bo_put(struct ttm_buffer_object *bo)
>>>>>>>> -{
>>>>>>>> -	kref_put(&bo->kref, ttm_bo_release);
>>>>>>>> -}
>>>>>>>> -
>>>>>>>> -void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>>>>> -{
>>>>>>>> -	ttm_bo_put(bo);
>>>>>>>> +		atomic_dec(&ttm_glob.bo_count);
>>>>>>>> +		bo->destroy(bo);
>>>>>>>> +	}
>>>>>>>>  }
>>>>>>>>  EXPORT_SYMBOL(ttm_bo_fini);
>>>>>>>>  
>>>>>>>> @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct
>>>>>>>> ttm_device
>>>>>>>> *bdev,
>>>>>>>> struct ttm_resource_manager *man
>>>>>>>>  	if (!bo->resource || bo->resource->mem_type !=
>>>>>>>> mem_type)
>>>>>>>>  		goto out_bo_moved;
>>>>>>>>  
>>>>>>>> -	if (bo->deleted) {
>>>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>>>  		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>>>>>  		if (!ret)
>>>>>>>>  			ttm_bo_cleanup_memtype_use(bo);
>>>>>>>> @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
>>>>>>>> ttm_lru_walk
>>>>>>>> *walk, struct ttm_buffer_object *
>>>>>>>>  	if (bo->pin_count || !bo->bdev->funcs-
>>>>>>>>> eviction_valuable(bo,
>>>>>>>> evict_walk->place))
>>>>>>>>  		return 0;
>>>>>>>>  
>>>>>>>> -	if (bo->deleted) {
>>>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>>>  		lret = ttm_bo_wait_ctx(bo, walk-
>>>>>>>>> arg.ctx);
>>>>>>>>  		if (!lret)
>>>>>>>>  			ttm_bo_cleanup_memtype_use(bo);
>>>>>>>> @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
>>>>>>>> ttm_device
>>>>>>>> *bdev,
>>>>>>>>  void ttm_bo_pin(struct ttm_buffer_object *bo)
>>>>>>>>  {
>>>>>>>>  	dma_resv_assert_held(bo->base.resv);
>>>>>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>>>>>  	spin_lock(&bo->bdev->lru_lock);
>>>>>>>>  	if (bo->resource)
>>>>>>>>  		ttm_resource_del_bulk_move(bo->resource,
>>>>>>>> bo);
>>>>>>>> @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
>>>>>>>>  void ttm_bo_unpin(struct ttm_buffer_object *bo)
>>>>>>>>  {
>>>>>>>>  	dma_resv_assert_held(bo->base.resv);
>>>>>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>>>>>  	if (WARN_ON_ONCE(!bo->pin_count))
>>>>>>>>  		return;
>>>>>>>>  
>>>>>>>> @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
>>>>>>>> ttm_device
>>>>>>>> *bdev,
>>>>>>>> struct ttm_buffer_object *bo,
>>>>>>>>  {
>>>>>>>>  	int ret;
>>>>>>>>  
>>>>>>>> -	kref_init(&bo->kref);
>>>>>>>>  	bo->bdev = bdev;
>>>>>>>>  	bo->type = type;
>>>>>>>>  	bo->page_alignment = alignment;
>>>>>>>> @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct
>>>>>>>> ttm_lru_walk
>>>>>>>> *walk,
>>>>>>>> struct ttm_buffer_object *bo)
>>>>>>>>  		goto out;
>>>>>>>>  	}
>>>>>>>>  
>>>>>>>> -	if (bo->deleted) {
>>>>>>>> -		pgoff_t num_pages = tt->num_pages;
>>>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>>> +		pgoff_t num_pages = bo->ttm->num_pages;
>>>>>>>>  
>>>>>>>>  		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>>>>>  		if (ret)
>>>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>>>> b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>>>> index e0d48eac74b03..ded2a47be0bcb 100644
>>>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>>>> @@ -27,6 +27,14 @@
>>>>>>>>  
>>>>>>>>  #include <drm/ttm/ttm_bo.h>
>>>>>>>>  
>>>>>>>> +static inline void ttm_bo_free(struct drm_gem_object
>>>>>>>> *gobj)
>>>>>>>> +{
>>>>>>>> +	struct ttm_buffer_object *bo =
>>>>>>>> container_of(gobj,
>>>>>>>> typeof(*bo), base);
>>>>>>>> +
>>>>>>>> +	atomic_dec(&ttm_glob.bo_count);
>>>>>>>> +	bo->destroy(bo);
>>>>>>>> +}
>>>>>>>> +
>>>>>>>>  /**
>>>>>>>>   * ttm_bo_get - reference a struct ttm_buffer_object
>>>>>>>>   *
>>>>>>>> @@ -34,7 +42,7 @@
>>>>>>>>   */
>>>>>>>>  static inline void ttm_bo_get(struct ttm_buffer_object
>>>>>>>> *bo)
>>>>>>>>  {
>>>>>>>> -	kref_get(&bo->kref);
>>>>>>>> +	drm_gem_object_get(&bo->base);
>>>>>>>>  }
>>>>>>>>  
>>>>>>>>  /**
>>>>>>>> @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
>>>>>>>> ttm_buffer_object *bo)
>>>>>>>>  static inline __must_check struct ttm_buffer_object *
>>>>>>>>  ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
>>>>>>>>  {
>>>>>>>> -	if (!kref_get_unless_zero(&bo->kref))
>>>>>>>> +	if (!kref_get_unless_zero(&bo->base.refcount))
>>>>>>>>  		return NULL;
>>>>>>>>  	return bo;
>>>>>>>>  }
>>>>>>>>  
>>>>>>>> -void ttm_bo_put(struct ttm_buffer_object *bo);
>>>>>>>> +static inline void ttm_bo_put(struct ttm_buffer_object
>>>>>>>> *bo)
>>>>>>>> +{
>>>>>>>> +	drm_gem_object_put(&bo->base);
>>>>>>>> +}
>>>>>>>>  
>>>>>>>>  #endif
>>>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>>>> b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>>>> index 3e3c201a02226..7ed085adf1c9b 100644
>>>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>>>> @@ -41,6 +41,18 @@
>>>>>>>>  
>>>>>>>>  #include "ttm_bo_internal.h"
>>>>>>>>  
>>>>>>>> +static void ttm_transfer_object_free(struct
>>>>>>>> drm_gem_object
>>>>>>>> *obj)
>>>>>>>> +{
>>>>>>>> +	struct ttm_buffer_object *bo =
>>>>>>>> +		container_of(obj, struct
>>>>>>>> ttm_buffer_object,
>>>>>>>> base);
>>>>>>>> +
>>>>>>>> +	ttm_bo_fini(bo);
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +const struct drm_gem_object_funcs
>>>>>>>> ttm_transfer_object_funcs
>>>>>>>> = {
>>>>>>>> +	.free = ttm_transfer_object_free,
>>>>>>>> +};
>>>>>>>> +
>>>>>>>>  struct ttm_transfer_obj {
>>>>>>>>  	struct ttm_buffer_object base;
>>>>>>>>  	struct ttm_buffer_object *bo;
>>>>>>>> @@ -247,7 +259,8 @@ static int
>>>>>>>> ttm_buffer_object_transfer(struct
>>>>>>>> ttm_buffer_object *bo,
>>>>>>>>  	atomic_inc(&ttm_glob.bo_count);
>>>>>>>>  	drm_vma_node_reset(&fbo->base.base.vma_node);
>>>>>>>>  
>>>>>>>> -	kref_init(&fbo->base.kref);
>>>>>>>> +	kref_init(&fbo->base.base.refcount);
>>>>>>>> +	fbo->base.base.funcs =
>>>>>>>> &ttm_transfer_object_funcs;
>>>>>>>>  	fbo->base.destroy = &ttm_transfered_destroy;
>>>>>>>>  	fbo->base.pin_count = 0;
>>>>>>>>  	if (bo->type != ttm_bo_type_sg)
>>>>>>>> diff --git a/drivers/gpu/drm/xe/xe_bo.c
>>>>>>>> b/drivers/gpu/drm/xe/xe_bo.c
>>>>>>>> index 85e6d9a0f575b..5843f850339c7 100644
>>>>>>>> --- a/drivers/gpu/drm/xe/xe_bo.c
>>>>>>>> +++ b/drivers/gpu/drm/xe/xe_bo.c
>>>>>>>> @@ -1651,7 +1651,7 @@ static bool
>>>>>>>> xe_ttm_bo_lock_in_destructor(struct
>>>>>>>> ttm_buffer_object *ttm_bo)
>>>>>>>>  	struct xe_device *xe = ttm_to_xe_device(ttm_bo-
>>>>>>>>> bdev);
>>>>>>>>  	bool locked;
>>>>>>>>  
>>>>>>>> -	xe_assert(xe, !kref_read(&ttm_bo->kref));
>>>>>>>> +	xe_assert(xe, !kref_read(&ttm_bo-
>>>>>>>>> base.refcount));
>>>>>>>>  
>>>>>>>>  	/*
>>>>>>>>  	 * We can typically only race with TTM
>>>>>>>> trylocking
>>>>>>>> under
>>>>>>>> the
>>>>>>>> diff --git a/include/drm/ttm/ttm_bo.h
>>>>>>>> b/include/drm/ttm/ttm_bo.h
>>>>>>>> index 8310bc3d55f90..1eae9eea5ff32 100644
>>>>>>>> --- a/include/drm/ttm/ttm_bo.h
>>>>>>>> +++ b/include/drm/ttm/ttm_bo.h
>>>>>>>> @@ -78,11 +78,8 @@ enum ttm_bo_type {
>>>>>>>>   * @type: The bo type.
>>>>>>>>   * @page_alignment: Page alignment.
>>>>>>>>   * @destroy: Destruction function. If NULL, kfree is
>>>>>>>> used.
>>>>>>>> - * @kref: Reference count of this buffer object. When
>>>>>>>> this
>>>>>>>> refcount
>>>>>>>> reaches
>>>>>>>> - * zero, the object is destroyed or put on the delayed
>>>>>>>> delete
>>>>>>>> list.
>>>>>>>>   * @resource: structure describing current placement.
>>>>>>>>   * @ttm: TTM structure holding system pages.
>>>>>>>> - * @deleted: True if the object is only a zombie and
>>>>>>>> already
>>>>>>>> deleted.
>>>>>>>>   * @bulk_move: The bulk move object.
>>>>>>>>   * @priority: Priority for LRU, BOs with lower priority
>>>>>>>> are
>>>>>>>> evicted
>>>>>>>> first.
>>>>>>>>   * @pin_count: Pin count.
>>>>>>>> @@ -109,17 +106,11 @@ struct ttm_buffer_object {
>>>>>>>>  	uint32_t page_alignment;
>>>>>>>>  	void (*destroy) (struct ttm_buffer_object *);
>>>>>>>>  
>>>>>>>> -	/*
>>>>>>>> -	* Members not needing protection.
>>>>>>>> -	*/
>>>>>>>> -	struct kref kref;
>>>>>>>> -
>>>>>>>>  	/*
>>>>>>>>  	 * Members protected by the bo::resv::reserved
>>>>>>>> lock.
>>>>>>>>  	 */
>>>>>>>>  	struct ttm_resource *resource;
>>>>>>>>  	struct ttm_tt *ttm;
>>>>>>>> -	bool deleted;
>>>>>>>>  	struct ttm_lru_bulk_move *bulk_move;
>>>>>>>>  	unsigned priority;
>>>>>>>>  	unsigned pin_count;

