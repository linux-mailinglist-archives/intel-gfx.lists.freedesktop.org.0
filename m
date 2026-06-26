Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iu6oNPPxPmqPNQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 23:41:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F226D051F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 23:41:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HtGkfecj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEFD10E425;
	Fri, 26 Jun 2026 21:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011047.outbound.protection.outlook.com [52.101.57.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB9F10E297;
 Fri, 26 Jun 2026 21:41:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P/uhLfhw06pzGVnnYI1bizZ0sD1H1z2pxhKlyEESi3n6SwdHghOibsR2NmqfOXmDEAnmqKUOGTx4mA2sC+jcUD/snSKdKh6PhQ4F9R2A5uj4k4wueRqG5h5MiFglfziOxHBagExE6ppfhtxaM0tRxb1L1yqyFDVNUxR9sV5KjK1dBlpgt53gpObcv8IbA/3AoqHQ9fhEGyuwiuq4PA6YYcS+bzGxn/HpO/a6ftsfDDOrtOwExsuaO4CIGE/HvXo1UhRnHC4r02XMDpzJMXnUpSZ/CRL6/2hkCHUYI7GKDVIfdq7dNmpJSH0+A2nAg3QQ/z058k2s2OcRqaRSItWyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xeuuaY+VcU31RtMu70u1Q7OY8nDJHhrmUhAVR48eEMg=;
 b=Tjtgp6121BSpxNvkXj8mrCp3bbSVk76Kd30jhKdCzp+Tu3A4lhcgJDgqQkLCExLVt3jCqxI8pTuszYc9Sjjz/DfYyhdg69J1dMBTKX8jEmXxZaD0JC9RFOkeMohs0OcgT7EUgKEPPrgr8pSJSUL3thxJlg36MVCTVasTohAmcPIGYTeQTwEwF3U8nEwfi7NH5TGEMGsUHBB0p5f5hFSbowIuGHpSWnXocImbRAt8IPOZqRXKw/BlO8gXKPFx8IhmjgHpvR6r1tB9YP0Veyf6ngcYjhz2Q4WHxq2hlwWbm/UhoSr+vYv2Oa+bR518+VUmGRJefV7RcoR9EZYneuFs/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xeuuaY+VcU31RtMu70u1Q7OY8nDJHhrmUhAVR48eEMg=;
 b=HtGkfecjBO5PgM0hifV+5bxDoMLs9Sm2murgr8HEdn5rkfpfsANxzdIKn6Y3wyA2Jc2YSoEMpiohryLJs10bHKy2QuO3VLKdCEqRXdQ6GyROkRGzOYt7kpTSPaZEz4ZwbNtAUyS09gvorPswDW3Zv1EDDRqiVwvJqa2xHZT/ix8=
Received: from PH8PR12MB6914.namprd12.prod.outlook.com (2603:10b6:510:1cb::21)
 by IA4PR12MB9763.namprd12.prod.outlook.com (2603:10b6:208:55a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 21:40:58 +0000
Received: from PH8PR12MB6914.namprd12.prod.outlook.com
 ([fe80::2893:177a:72b0:6000]) by PH8PR12MB6914.namprd12.prod.outlook.com
 ([fe80::2893:177a:72b0:6000%6]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 21:40:58 +0000
Message-ID: <8a4356c5-de49-43a4-a4ee-cf771ed65f18@amd.com>
Date: Fri, 26 Jun 2026 16:40:56 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 03/10] drm: link connectors to backlight devices
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>
Cc: dri-devel@lists.freedesktop.org, harry.wentland@amd.com,
 Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Xaver Hugl <xaver.hugl@gmail.com>, amd-gfx@lists.freedesktop.org,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260624165751.2014759-1-mario.limonciello@amd.com>
 <20260624165751.2014759-4-mario.limonciello@amd.com>
 <20260626-warping-quizzical-cuttlefish-beb8be@houat>
From: Mario Limonciello <mario.limonciello@amd.com>
In-Reply-To: <20260626-warping-quizzical-cuttlefish-beb8be@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA1P222CA0178.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:3c4::26) To PH8PR12MB6914.namprd12.prod.outlook.com
 (2603:10b6:510:1cb::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR12MB6914:EE_|IA4PR12MB9763:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f9e4e60-7f8c-4941-49ff-08ded3cb9c10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|23010399003|1800799024|18002099003|22082099003|4143699003|56012099006|11063799006|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info: 9JWi8MEcQiEWv8eLfGHGWXpIla5V+y8PADQDXJ38V4J9T3A0/Ma0W0CjBvhANzfCHV7b4WKLY1jvyna0mbAUQ8rgkQLo+N+IEBA3b91790qUynCS813WhTklMYWWyP+scff3CyVEng7OUBzm94ugO+l9bN2OwN5JMZcMxVkDVpp0qNm+LoE9i/pIDhXhLKZSj+LrpJktxHQfV6uGF113SbwxzwQNCOWu5AdGHQhVoMLCxpgx5aLk/TmlHM/2gaJvNNjunCqGHC3zaTtolyQF9LPkeVFv79vGmIR0cl/EhLHHqQL/JHkMti5dtGCzyvjeg8ktqxts28V1YeaZCt5kO6PLXgctEkgeUxvKUue+ycdGYl/Y8nWZvGzF5Z7UFOEeKbI3vNBdo2J26qssTHMknxb9Jeqt1ejTYE21vOfXMBk+24bKDPSK6aQuwuoU+PgydKZp0HiHw20cpziuepe/Gaka6s7Cbk6ITGae/BunJ4/gExm+xaUY5oQnn5ppgzWzBTLdicHRqSscgrDNqoPQ5g6x+niI1GPcvgJvu+aWos0GMVnSypcjtQq1xOqaiuddnah8yVxnL/v67hphXrcr0TZIXAAkmP6GyaAVFzIiThkEQ+NOcmVGqUKxQE+OusHNyFnfUytk6XpEV2+Fgo5UOEgUIJlb3qvbDWmJLiaPmXM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR12MB6914.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(23010399003)(1800799024)(18002099003)(22082099003)(4143699003)(56012099006)(11063799006)(6133799003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0ZiTUNFTUw2UUtqYnRVZXcyT003WGFIRFZjdTRGRG1nWjQvODFHbEMxRFBP?=
 =?utf-8?B?M2NlaW9FYnV4UjFIQUp2NWtyWm1FRVhqcFhxc3FoakdmQWk5ck1FODhwc081?=
 =?utf-8?B?bmZqVVpMQUJBKzdqRE8xRnFDRTNBaEZEZkdvQ0d4bGtwZW1XUEFpa25Gc3JN?=
 =?utf-8?B?Q2VtS0R2NlNka3hpNm54aXZremJqYk5pNkNsWGNqMUphR3NTQlBHdU1sZ1Ew?=
 =?utf-8?B?cjFpQjFxdmJZZGR1cWRUb2ZZM1V3bHc5ejZ0cXVUMS9WaU1qVitkNml1enJW?=
 =?utf-8?B?VExST1cxNUVwdW40T1ZBaEhUQm9OOTRBWk92cE5Vam8rRE5uSCtJWVUra3hC?=
 =?utf-8?B?NzFJQ1lKaURTYjFUeEpDUUs3bmJMU0t5VFFTZUhVcEtVU1VlRkJqVGR5V0dp?=
 =?utf-8?B?VENwVXpFajV4TmZWMGhRNE83VWFFdDRJWTIzWnI3NG1yQzVENmpZUWYyYTBs?=
 =?utf-8?B?VERSLzZGam1kZDdCeUVRWldSNHBNRWplWndCTm1jdTcwckNDVFlPeUU0QzhU?=
 =?utf-8?B?ckZEVFNkQ2xqT0hiejJDV0FibFYzRmd4Z1ZzbkUrbWpKRDdoRlRtT3NFTElw?=
 =?utf-8?B?LytZeHZsTU1KRmVPT0RSUzA3Y1pQbGJ1djl4bUlZeE1XVFVJUERGSjJ6dURw?=
 =?utf-8?B?d0FTM1RMV1ZBTkRWcmpDaEo3TFJjUytua2llSCtDZ2lMekR2UjNReUM0bE1V?=
 =?utf-8?B?bC9KTlpISTNVUkFMK3VjUXEzYjZLRUlOY3N0endvT0g1d0RHZWFPVGdBeDA2?=
 =?utf-8?B?aWZlNGNib3k5MkNhNm53aXhXYkx5SDZmZDhnRXJqTVpMSEVvUVdIaUFyUmxy?=
 =?utf-8?B?cnNOaHE5VEZwRVZaaTdEbEtyaHVTOUoybGhoL0N2V1ZPOE5DK1B0RjJ2Mmhv?=
 =?utf-8?B?UHRQamhqMloyTktyRmZxRXcwd3JNaTFKbTU1L05YZ25RbmtWNGpXWTU1eGZJ?=
 =?utf-8?B?TklTMllpdjU2dHNja0MvNTNrcjFsMHNRbzh1ZnBIY1FHNC9NckFPOU81Z21v?=
 =?utf-8?B?cXJhdWwyV3YvRVc4dE5vYk1JWVhLd2tTRTRCQVo4SWFFZm5YT0x5aGZubHdI?=
 =?utf-8?B?UDc3dm5hTFdlM0pEaFluamZTcXdsd2hFNWNJa3NXeWY0MEUrdFUzODV0UnZ4?=
 =?utf-8?B?Z205aHNVSHBrenhmakpGUmdkcE4xSWFtWC91WVNnTWsvajBtb1JBQ3VFVTFw?=
 =?utf-8?B?dlh1UjBEd2ZqUkpWYkFlYXltSWwzbmtRcmRIUUUwZHZObS9SOHU3alVSbEpp?=
 =?utf-8?B?c1VaUmM5d0pMWmg5UTlnRXhvTXpFYUROdEgzbDI4M1ZpZ2t3bEF4dCtsTHJt?=
 =?utf-8?B?MTQ0eU1PeHpza0xDWW5yekJzNU43UU1LZ3JZdWcvMmJqZWRjRVNqQ05ZRHdS?=
 =?utf-8?B?WmJRZ0xkV1NEeDZHWjlTV2xTUnhLRjdBeldOcTJMdFJ5Nmx3OXVaMndpOTFN?=
 =?utf-8?B?NXM2Mi9FTVM0RzBxYVpwZ1MrVWs4K29sYzcvSFJUREM0Vjc5WnIwMG54WXBw?=
 =?utf-8?B?aENuQ2FjN2dCNWw0bldkVmZZeGVRSG1VU2FMaXBkdnkvYm1iNEZXY2ZtU0Ny?=
 =?utf-8?B?VEZrZmZ6YlgyUHE1Ri84NFJ5bk5FUzdPcEc3NVlqeDdKcU84Yk45QmF0NUpV?=
 =?utf-8?B?THcrSjBpZG5nTU9aaHFYb200LzlGUjl6TldqQUxKbVl5dTlWK3pkVnJZRWw0?=
 =?utf-8?B?VmQ0cXIzcnYraGY2VVhuUkUyVHNFOE5DeDdQd0h2emFOR1hONjVXL2MxWmtX?=
 =?utf-8?B?U0ZoeE9OTzBXampmMjQxZllKWGI2TkxKdlM4cmtKY1NkZ2FiazhheEU1ZFRV?=
 =?utf-8?B?SGRWRk5WTWd4NitUbHdJSUlrTmhxdzVSTTlNZmtRckRyZDB3b1VCVk9BZzBZ?=
 =?utf-8?B?S3BIODJkckJDZXJ1RTNjUzQybTdnM3U1OEw4K3VIRGY0QnV6S0w3K0JhV1dv?=
 =?utf-8?B?K0JSZnBMVTRHT3pEOENFQ0k3YWU0R09HZnhIc2l3UDNuMDh5WmkxUXhpbFRN?=
 =?utf-8?B?MFpuL1U3MEhOeEVjUFhBWmtmdVIrTnY3ZXNEVStaQXNKZ1BJWTJ0SU1TNGhG?=
 =?utf-8?B?akpWb3ZGajJPbzJFdkVER3BrY0E0VGU3OVRhRXgwZVAvdnZCRFl0eUVTV2lG?=
 =?utf-8?B?OVBMdDRxS1lKaVRoVGNuM3BDdURJK2x6aDVGK2tpTlpOdm53UU5yWUNaUzBK?=
 =?utf-8?B?TTBLb0ZodnNpQlJHaDhmblVkc0txMXIwaFdJSVlUb2lvQTlTcHBaL3dROUdR?=
 =?utf-8?B?aldoNkdjaXlJb1dPLzQ2dHcxYWJNNDVIRmJLYUF0OTBpb2FiSU80WXRlS1dw?=
 =?utf-8?Q?GTsTLj39szuMLp25Rk?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f9e4e60-7f8c-4941-49ff-08ded3cb9c10
X-MS-Exchange-CrossTenant-AuthSource: PH8PR12MB6914.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 21:40:58.5250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JOj24iGaMY0QaDhSAXWualNvG2wosK4yyU2Wuh+CRBpkNsjpjdBtdjCKRbHkZXwT6TVtAqr06XZblcGDJjm10g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR12MB9763
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mario.limonciello@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,ffwll.ch,linux.intel.com,suse.de,gmail.com,kernel.org,oss.qualcomm.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50F226D051F



On 6/26/26 02:34, Maxime Ripard wrote:
> On Wed, Jun 24, 2026 at 09:57:43AM -0700, Mario Limonciello wrote:
>> From: "Mario Limonciello (AMD)" <superm1@kernel.org>
>>
>> This will show which connector in sysfs matches which backlight.
>>
>> Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # SM8150-HDK
>> Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
>> ---
>>   drivers/gpu/drm/Kconfig             |   1 +
>>   drivers/gpu/drm/Makefile            |   1 +
>>   drivers/gpu/drm/drm_backlight.c     | 371 ++++++++++++++++++++++++++++
>>   drivers/gpu/drm/drm_connector.c     |  12 +
>>   drivers/gpu/drm/drm_drv.c           |   8 +
>>   drivers/gpu/drm/drm_mode_config.c   |   7 +
>>   drivers/gpu/drm/drm_mode_object.c   |  66 ++++-
>>   drivers/gpu/drm/drm_sysfs.c         |  28 ++-
>>   drivers/video/backlight/backlight.c |  17 ++
>>   include/drm/drm_backlight.h         |  51 ++++
>>   include/drm/drm_connector.h         |   3 +
>>   include/drm/drm_mode_config.h       |   5 +
>>   include/linux/backlight.h           |  13 +
>>   13 files changed, 578 insertions(+), 5 deletions(-)
>>   create mode 100644 drivers/gpu/drm/drm_backlight.c
>>   create mode 100644 include/drm/drm_backlight.h
>>
>> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
>> index 323422861e8f6..d6035bbbdc83f 100644
>> --- a/drivers/gpu/drm/Kconfig
>> +++ b/drivers/gpu/drm/Kconfig
>> @@ -17,6 +17,7 @@ menuconfig DRM
>>   # device and dmabuf fd. Let's make sure that is available for our userspace.
>>   	select KCMP
>>   	select VIDEO
>> +	select BACKLIGHT_CLASS_DEVICE
>>   	help
>>   	  Kernel-level support for the Direct Rendering Infrastructure (DRI)
>>   	  introduced in XFree86 4.0. If you say Y here, you need to select
>> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
>> index e97faabcd7830..bf980a2ac1e6b 100644
>> --- a/drivers/gpu/drm/Makefile
>> +++ b/drivers/gpu/drm/Makefile
>> @@ -78,6 +78,7 @@ drm-$(CONFIG_DRM_CLIENT) += \
>>   	drm_client_event.o \
>>   	drm_client_modeset.o \
>>   	drm_client_sysrq.o
>> +drm-y += drm_backlight.o
>>   drm-$(CONFIG_COMPAT) += drm_ioc32.o
>>   drm-$(CONFIG_DRM_PANEL) += drm_panel.o
>>   drm-$(CONFIG_OF) += drm_of.o
>> diff --git a/drivers/gpu/drm/drm_backlight.c b/drivers/gpu/drm/drm_backlight.c
>> new file mode 100644
>> index 0000000000000..b1ec470be86ca
>> --- /dev/null
>> +++ b/drivers/gpu/drm/drm_backlight.c
>> @@ -0,0 +1,371 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * DRM Backlight Helpers
>> + * Copyright (c) 2014 David Herrmann
>> + * Copyright (c) 2026 Advanced Micro Devices, Inc.
>> + */
>> +
>> +#include <linux/backlight.h>
>> +#include <linux/fs.h>
>> +#include <linux/list.h>
>> +#include <linux/math64.h>
>> +#include <linux/module.h>
>> +#include <linux/mutex.h>
>> +#include <linux/notifier.h>
>> +#include <linux/slab.h>
>> +#include <linux/spinlock.h>
>> +#include <drm/drm_backlight.h>
>> +#include <drm/drm_connector.h>
>> +#include <drm/drm_device.h>
>> +#include <drm/drm_mode_config.h>
>> +
>> +/**
>> + * DOC: Backlight Devices
>> + *
>> + * Backlight devices have always been managed as a separate subsystem,
>> + * independent of DRM. They are usually controlled via separate hardware
>> + * interfaces than the display controller, so the split works out fine.
>> + * However, backlight brightness is a property of a display, and thus a
>> + * property of a DRM connector. We already manage DPMS states via connector
>> + * properties, so it is natural to keep brightness control at the same place.
>> + *
>> + * This DRM backlight interface implements generic backlight properties on
>> + * connectors. It does not handle any hardware backends but simply forwards
>> + * the requests to a linked backlight device. The links between connectors and
>> + * backlight devices are established by DRM drivers; user-space cannot create
>> + * or modify these links. A 'change' uevent is sent whenever the brightness is
>> + * updated.
> 
> I think we should explain why, because if it's a property and comes from
> the userspace, then why would luminance be special and trigger a uevent
> when it's updated, unlike any other property?

At one point there was a concept of userspace could still change it from 
sysfs, but now that's changed.  I think you're right and this can be 
dropped.

> 
>> + * Drivers have to call drm_backlight_alloc() after allocating a connector via
>> + * drm_connector_init(). This will automatically add a backlight device to the
>> + * given connector. Drivers must then link a hardware backlight by calling
>> + * drm_backlight_link() with the registered backlight_device. If no link is
>> + * established, the DRM backlight property reports an empty range and
>> + * brightness changes are no-ops.
>> + */
> 
> It's not clear to me why we need to dynamically allocate them at all. If
> we're using the backlight subsystem we'll already have a handle to it.
> If we don't and want to implement something like DDC/CI, then it just
> becomes a hassle. Why not treat it like i2c, add a backlight field to
> drm_connector, and create the link at registration, add a new hook to
> set luminance, and then provide helpers to either use the backlight API,
> or anything else if the driver wants to.

I did envision that later on we can have displays with DDC use this 
infrastructure as well.  But I didn't want to hold up the series 
implementing that.

> 
>> +struct drm_backlight {
>> +	struct list_head list;
>> +	struct drm_connector *connector;
>> +	struct backlight_device *link;
>> +	/*
>> +	 * Number of luminance-aware DRM clients that have taken over this
>> +	 * connector's backlight. While > 0, legacy sysfs writes to the
>> +	 * linked backlight_device return -EBUSY. Protected by
>> +	 * drm_backlight_lock.
>> +	 */
>> +	unsigned int luminance_clients;
>> +};
>> +
>> +static LIST_HEAD(drm_backlight_list);
>> +static DEFINE_SPINLOCK(drm_backlight_lock);
>> +
>> +/* caller must hold @drm_backlight_lock */
>> +static bool __drm_backlight_is_registered(struct drm_backlight *b)
>> +{
>> +	lockdep_assert_held(&drm_backlight_lock);
>> +	/* a device is live if it is linked to @drm_backlight_list */
>> +	return !list_empty(&b->list);
>> +}
>> +
>> +/* caller must hold @drm_backlight_lock */
>> +static void __drm_backlight_real_changed(struct drm_backlight *b, uint64_t v)
>> +{
>> +	unsigned int max, set;
>> +
>> +	lockdep_assert_held(&drm_backlight_lock);
>> +
>> +	if (!b->link)
>> +		return;
>> +
>> +	max = b->link->props.max_brightness;
>> +	if (max < 1)
>> +		return;
>> +
>> +	set = v;
>> +	if (set >= max)
>> +		set = max;
>> +}
>> +
>> +/**
>> + * __drm_backlight_update_prop_range - update the luminance property range
>> + * @b: backlight device
>> + *
>> + * Updates the luminance property range based on the linked backlight device's
>> + * max_brightness. If no device is linked, sets range to 0-0 to indicate
>> + * unavailability.
>> + */
>> +static void __drm_backlight_update_prop_range(struct drm_backlight *b)
>> +{
>> +	struct drm_device *dev = b->connector->dev;
>> +	struct drm_property *prop = dev->mode_config.luminance_property;
>> +	unsigned int max = 0;
>> +
>> +	lockdep_assert_held(&drm_backlight_lock);
>> +
>> +	if (b->link && b->link->props.max_brightness > 0)
>> +		max = b->link->props.max_brightness;
>> +
>> +	/* Update property range to match hardware capabilities.
>> +	 * Range of 0-0 indicates no backing device.
>> +	 * Range of 1-max for normal operation (0 reserved for display off).
>> +	 */
>> +	if (prop->values[1] != max) {
>> +		prop->values[0] = max ? 1 : 0;
>> +		prop->values[1] = max;
>> +	}
>> +}
>> +
>> +/* caller must hold @drm_backlight_lock */
>> +static bool __drm_backlight_link(struct drm_backlight *b,
>> +				 struct backlight_device *bd)
>> +{
>> +	if (bd == b->link)
>> +		return false;
>> +
>> +	backlight_device_unref(b->link);
>> +	b->link = bd;
>> +	backlight_device_ref(b->link);
>> +	if (bd)
>> +		__drm_backlight_real_changed(b, bd->props.brightness);
>> +	__drm_backlight_update_prop_range(b);
>> +
>> +	return true;
>> +}
>> +
>> +/**
>> + * drm_backlight_alloc - add backlight capability to a connector
>> + * @connector: connector to add backlight to
>> + *
>> + * This allocates a new DRM-backlight device and attaches it to @connector.
>> + * This *must* be called before registering the connector. The backlight
>> + * device will be automatically registered in sync with the connector. It will
>> + * also get removed once the connector is removed.
>> + *
>> + * No hardware backlight is linked by default. Drivers must call
>> + * drm_backlight_link() to associate a registered backlight_device with the
>> + * connector. User-space cannot create or modify this link.
>> + *
>> + * Returns: 0 on success, negative error code on failure.
>> + */
>> +int drm_backlight_alloc(struct drm_connector *connector)
>> +{
>> +	struct drm_mode_config *config = &connector->dev->mode_config;
>> +	struct drm_backlight *b;
>> +
>> +	b = kzalloc_obj(*b, GFP_KERNEL);
>> +	if (!b)
>> +		return -ENOMEM;
>> +
>> +	INIT_LIST_HEAD(&b->list);
>> +	b->connector = connector;
>> +	connector->backlight = b;
>> +
>> +	drm_object_attach_property(&connector->base,
>> +				   config->luminance_property, 0);
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(drm_backlight_alloc);
>> +
>> +void drm_backlight_free(struct drm_connector *connector)
>> +{
>> +	struct drm_backlight *b = connector->backlight;
>> +
>> +	if (!b)
>> +		return;
>> +
>> +	WARN_ON(__drm_backlight_is_registered(b));
>> +	WARN_ON(b->link);
>> +
>> +	kfree(b);
>> +	connector->backlight = NULL;
>> +}
>> +EXPORT_SYMBOL(drm_backlight_free);
>> +
>> +void drm_backlight_register(struct drm_backlight *b)
>> +{
>> +	if (!b)
>> +		return;
>> +
>> +	WARN_ON(__drm_backlight_is_registered(b));
>> +
>> +	guard(spinlock)(&drm_backlight_lock);
>> +	list_add(&b->list, &drm_backlight_list);
>> +}
>> +EXPORT_SYMBOL(drm_backlight_register);
>> +
>> +void drm_backlight_unregister(struct drm_backlight *b)
>> +{
>> +	if (!b)
>> +		return;
>> +
>> +	WARN_ON(!__drm_backlight_is_registered(b));
>> +
>> +	scoped_guard(spinlock, &drm_backlight_lock) {
>> +		list_del_init(&b->list);
>> +		__drm_backlight_link(b, NULL);
>> +	}
>> +}
>> +EXPORT_SYMBOL(drm_backlight_unregister);
>> +
>> +/**
>> + * drm_backlight_link - link a backlight device to a DRM backlight
>> + * @b: DRM backlight to modify
>> + * @bd: backlight device to link, or NULL to unlink
>> + *
>> + * Establish the link between a DRM connector's backlight property and a
>> + * registered backlight_device. Drivers must call this with the
>> + * backlight_device they registered for the connector. Passing NULL unlinks
>> + * any previously linked device.
>> + *
>> + * The caller is responsible for ensuring @bd remains valid until either it
>> + * is unlinked via drm_backlight_link(b, NULL) or the connector is
>> + * unregistered.
>> + *
>> + * Whenever a hardware backlight is linked or unlinked, a uevent with
>> + * "BACKLIGHT=1" is generated on the connector.
>> + */
>> +void drm_backlight_link(struct drm_backlight *b, struct backlight_device *bd)
>> +{
>> +	if (!b)
>> +		return;
>> +
>> +	guard(spinlock)(&drm_backlight_lock);
>> +	__drm_backlight_link(b, bd);
>> +}
>> +EXPORT_SYMBOL(drm_backlight_link);
>> +
>> +/**
>> + * drm_backlight_get_device - get the backlight_device linked to a DRM backlight
>> + * @b: DRM backlight
>> + *
>> + * Returns the &backlight_device linked to @b, or NULL if no device is linked
>> + * or @b is NULL. The caller must hold the appropriate lock to prevent the
>> + * link from changing while the pointer is in use.
>> + */
>> +struct backlight_device *drm_backlight_get_device(struct drm_backlight *b)
>> +{
>> +	if (!b)
>> +		return NULL;
>> +
>> +	guard(spinlock)(&drm_backlight_lock);
>> +	return b->link;
>> +}
>> +EXPORT_SYMBOL(drm_backlight_get_device);
>> +
>> +/**
>> + * drm_backlight_inhibit_legacy - disable legacy sysfs control of the linked bd
>> + * @b: DRM backlight to inhibit
>> + *
>> + * Record that one more luminance-aware DRM client has taken over @b. While
>> + * any clients are recorded, writes to the linked backlight_device's legacy
>> + * ``brightness`` sysfs attribute return ``-EBUSY``. The takeover follows
>> + * @b->link if the link changes.
>> + *
>> + * Calls must be balanced with drm_backlight_uninhibit_legacy().
>> + */
>> +void drm_backlight_inhibit_legacy(struct drm_backlight *b)
>> +{
>> +	if (!b)
>> +		return;
>> +}
>> +EXPORT_SYMBOL(drm_backlight_inhibit_legacy);
>> +
>> +/**
>> + * drm_backlight_uninhibit_legacy - re-enable legacy sysfs control
>> + * @b: DRM backlight to uninhibit
>> + *
>> + * Balances a previous drm_backlight_inhibit_legacy() call. When the last
>> + * luminance-aware client goes away, legacy sysfs writes are allowed again.
>> + */
>> +void drm_backlight_uninhibit_legacy(struct drm_backlight *b)
>> +{
>> +	if (!b)
>> +		return;
>> +}
>> +EXPORT_SYMBOL(drm_backlight_uninhibit_legacy);
>> +
>> +/**
>> + * drm_backlight_inhibit_legacy_all - inhibit legacy sysfs on every connector
>> + * @dev: DRM device whose connectors should be inhibited
>> + *
>> + * Walks all connectors on @dev and calls drm_backlight_inhibit_legacy() on
>> + * each connector that has a DRM backlight attached. Used when a client
>> + * declares it is luminance-aware via DRM_CLIENT_CAP_LUMINANCE.
>> + */
>> +void drm_backlight_inhibit_legacy_all(struct drm_device *dev)
>> +{
>> +	struct drm_connector_list_iter iter;
>> +	struct drm_connector *connector;
>> +
>> +	drm_connector_list_iter_begin(dev, &iter);
>> +	drm_for_each_connector_iter(connector, &iter)
>> +		drm_backlight_inhibit_legacy(connector->backlight);
>> +	drm_connector_list_iter_end(&iter);
>> +}
>> +EXPORT_SYMBOL(drm_backlight_inhibit_legacy_all);
>> +
>> +/**
>> + * drm_backlight_uninhibit_legacy_all - reverse drm_backlight_inhibit_legacy_all()
>> + * @dev: DRM device whose connectors should be uninhibited
>> + */
>> +void drm_backlight_uninhibit_legacy_all(struct drm_device *dev)
>> +{
>> +	struct drm_connector_list_iter iter;
>> +	struct drm_connector *connector;
>> +
>> +	drm_connector_list_iter_begin(dev, &iter);
>> +	drm_for_each_connector_iter(connector, &iter)
>> +		drm_backlight_uninhibit_legacy(connector->backlight);
>> +	drm_connector_list_iter_end(&iter);
>> +}
>> +EXPORT_SYMBOL(drm_backlight_uninhibit_legacy_all);
>> +
>> +void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value)
>> +{
>> +	guard(spinlock)(&drm_backlight_lock);
>> +	__drm_backlight_real_changed(b, value);
>> +}
>> +EXPORT_SYMBOL(drm_backlight_set_luminance);
>> +
>> +static int drm_backlight_notify(struct notifier_block *self,
>> +				unsigned long event, void *data)
>> +{
>> +	struct backlight_device *bd = data;
>> +	struct drm_backlight *b;
>> +
>> +	guard(spinlock)(&drm_backlight_lock);
>> +
>> +	switch (event) {
>> +	case BACKLIGHT_UNREGISTERED:
>> +		list_for_each_entry(b, &drm_backlight_list, list)
>> +			if (b->link == bd)
>> +				__drm_backlight_link(b, NULL);
>> +
>> +		break;
>> +	case BACKLIGHT_BRIGHTNESS_CHANGED:
>> +		/* Update DRM property value when hardware backlight changes */
>> +		list_for_each_entry(b, &drm_backlight_list, list)
>> +			if (b->link == bd)
>> +				__drm_backlight_real_changed(b, bd->props.brightness);
>> +
>> +		break;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static struct notifier_block drm_backlight_notifier = {
>> +	.notifier_call = drm_backlight_notify,
>> +};
>> +
>> +int drm_backlight_init(void)
>> +{
>> +	return backlight_register_notifier(&drm_backlight_notifier);
>> +}
>> +
>> +void drm_backlight_exit(void)
>> +{
>> +	backlight_unregister_notifier(&drm_backlight_notifier);
>> +}
>> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
>> index 3fa4d2082cd72..128d431f0d6b0 100644
>> --- a/drivers/gpu/drm/drm_connector.c
>> +++ b/drivers/gpu/drm/drm_connector.c
>> @@ -21,6 +21,7 @@
>>    */
>>   
>>   #include <drm/drm_auth.h>
>> +#include <drm/drm_backlight.h>
>>   #include <drm/drm_connector.h>
>>   #include <drm/drm_drv.h>
>>   #include <drm/drm_edid.h>
>> @@ -760,6 +761,7 @@ void drm_connector_cleanup(struct drm_connector *connector)
>>   	struct drm_device *dev = connector->dev;
>>   	struct drm_display_mode *mode, *t;
>>   
>> +	drm_backlight_free(connector);
>>   	/* The connector should have been removed from userspace long before
>>   	 * it is finally destroyed.
>>   	 */
>> @@ -845,6 +847,8 @@ int drm_connector_register(struct drm_connector *connector)
>>   	if (connector->registration_state != DRM_CONNECTOR_INITIALIZING)
>>   		goto unlock;
>>   
>> +	drm_backlight_register(connector->backlight);
>> +
>>   	ret = drm_sysfs_connector_add(connector);
>>   	if (ret)
>>   		goto unlock;
>> @@ -931,6 +935,8 @@ EXPORT_SYMBOL(drm_connector_dynamic_register);
>>   void drm_connector_unregister(struct drm_connector *connector)
>>   {
>>   	mutex_lock(&connector->mutex);
>> +	drm_backlight_unregister(connector->backlight);
>> +
>>   	if (connector->registration_state != DRM_CONNECTOR_REGISTERED) {
>>   		mutex_unlock(&connector->mutex);
>>   		return;
>> @@ -3252,10 +3258,16 @@ int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>>   {
>>   	int ret = -EINVAL;
>>   	struct drm_connector *connector = obj_to_connector(obj);
>> +	struct drm_mode_config *config = &connector->dev->mode_config;
>>   
>>   	/* Do DPMS ourselves */
>>   	if (property == connector->dev->mode_config.dpms_property) {
>>   		ret = (*connector->funcs->dpms)(connector, (int)value);
>> +	} else if (property == config->luminance_property) {
>> +		if (connector->backlight && connector->dpms == DRM_MODE_DPMS_ON)
>> +			drm_backlight_set_luminance(connector->backlight,
>> +						    value);
>> +		ret = 0;
>>   	} else if (connector->funcs->set_property)
>>   		ret = connector->funcs->set_property(connector, property, value);
>>   
>> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
>> index 675675480da49..5bf402197867a 100644
>> --- a/drivers/gpu/drm/drm_drv.c
>> +++ b/drivers/gpu/drm/drm_drv.c
>> @@ -42,6 +42,7 @@
>>   #include <linux/xarray.h>
>>   
>>   #include <drm/drm_accel.h>
>> +#include <drm/drm_backlight.h>
>>   #include <drm/drm_bridge.h>
>>   #include <drm/drm_cache.h>
>>   #include <drm/drm_client_event.h>
>> @@ -1230,6 +1231,7 @@ static void drm_core_exit(void)
>>   	drm_privacy_screen_lookup_exit();
>>   	drm_panic_exit();
>>   	accel_core_exit();
>> +	drm_backlight_exit();
>>   	unregister_chrdev(DRM_MAJOR, "drm");
>>   	drm_debugfs_remove_root();
>>   	drm_sysfs_destroy();
>> @@ -1253,6 +1255,12 @@ static int __init drm_core_init(void)
>>   	drm_debugfs_init_root();
>>   	drm_debugfs_bridge_params();
>>   
>> +	ret = drm_backlight_init();
>> +	if (ret < 0) {
>> +		DRM_ERROR("Cannot initialize backlight interface\n");
>> +		goto error;
>> +	}
>> +
>>   	ret = register_chrdev(DRM_MAJOR, "drm", &drm_stub_fops);
>>   	if (ret < 0)
>>   		goto error;
>> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
>> index 66f7dc37b5970..25c5d29694624 100644
>> --- a/drivers/gpu/drm/drm_mode_config.c
>> +++ b/drivers/gpu/drm/drm_mode_config.c
>> @@ -32,6 +32,7 @@
>>   #include <drm/drm_print.h>
>>   #include <drm/drm_colorop.h>
>>   #include <linux/dma-resv.h>
>> +#include <drm/drm_backlight.h>
>>   
>>   #include "drm_crtc_internal.h"
>>   #include "drm_internal.h"
>> @@ -407,6 +408,12 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
>>   		return -ENOMEM;
>>   	dev->mode_config.size_hints_property = prop;
>>   
>> +	prop = drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
>> +					 "LUMINANCE", 0, 0);
>> +	if (!prop)
>> +		return -ENOMEM;
>> +	dev->mode_config.luminance_property = prop;
>> +
>>   	return 0;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
>> index 21fc9deda4371..a50d33af95e8c 100644
>> --- a/drivers/gpu/drm/drm_mode_object.c
>> +++ b/drivers/gpu/drm/drm_mode_object.c
>> @@ -30,6 +30,7 @@
>>   #include <drm/drm_mode_object.h>
>>   #include <drm/drm_plane.h>
>>   #include <drm/drm_print.h>
>> +#include <drm/drm_backlight.h>
>>   
>>   #include "drm_crtc_internal.h"
>>   
>> @@ -287,11 +288,72 @@ int drm_object_property_set_value(struct drm_mode_object *obj,
>>   {
>>   	int i;
>>   
>> -	WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
>> -		!(property->flags & DRM_MODE_PROP_IMMUTABLE));
> 
> drm_object_property_set_value() is explicitly documented to be for
> legacy properties only. This warning is here for a reason, you should
> update the atomic path.

I seem to remember having a problem earlier on.  I'll try again.

> 
>> +	/* Exempt dpms and luminance properties from the atomic warning, as these
>> +	 * have special interdependencies managed internally in this function
>> +	 */
>> +	if (obj->type == DRM_MODE_OBJECT_CONNECTOR) {
>> +		struct drm_connector *connector = obj_to_connector(obj);
>> +		struct drm_mode_config *config = &connector->dev->mode_config;
>> +
>> +		if (property != config->dpms_property &&
>> +		    property != config->luminance_property) {
>> +			WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
>> +				!(property->flags & DRM_MODE_PROP_IMMUTABLE));
>> +		}
>> +	} else {
>> +		WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
>> +			!(property->flags & DRM_MODE_PROP_IMMUTABLE));
>> +	}
>>   
>>   	for (i = 0; i < obj->properties->count; i++) {
>> +		/* If properties depends on each other
>> +		 * this is where to resolve that issue
>> +		 */
> 
> This is not the right commit style:
> https://www.kernel.org/doc/html/latest/process/coding-style.html#commenting
> 
>>   		if (obj->properties->properties[i] == property) {
>> +			/* Connector-specific property interdependencies */
>> +			if (obj->type == DRM_MODE_OBJECT_CONNECTOR) {
>> +				struct drm_connector *connector = obj_to_connector(obj);
>> +				struct drm_property *dpms_property =
>> +					connector->dev->mode_config.dpms_property;
>> +				struct drm_property *luminance_property =
>> +					connector->dev->mode_config.luminance_property;
>> +
>> +				if (property == dpms_property) {
>> +					/* When DPMS goes from ON -> OFF,
>> +					 * set the brightness to the minimum possible
>> +					 * to save power.
>> +					 */
>> +					if (obj->properties->values[i] !=
>> +					    DRM_MODE_DPMS_OFF &&
>> +					    val == DRM_MODE_DPMS_OFF)
>> +						drm_backlight_set_luminance(
>> +							connector->backlight, 0);
>> +					/* When DPMS OFF -> ON, reset the brightness
>> +					 * to the original level
>> +					 */
>> +					else if (obj->properties->values[i] ==
>> +						 DRM_MODE_DPMS_OFF &&
>> +						 val != DRM_MODE_DPMS_OFF) {
>> +						uint64_t value;
>> +
>> +						drm_object_property_get_value(
>> +							obj, luminance_property,
>> +							&value);
>> +						drm_backlight_set_luminance(
>> +							connector->backlight, value);
>> +					}
>> +				} else if (property == luminance_property) {
>> +					/* Always update the property value to remember
>> +					 * the user's desired brightness, but only update
>> +					 * hardware when DPMS is ON.
>> +					 */
>> +					obj->properties->values[i] = val;
>> +					if (connector->dpms == DRM_MODE_DPMS_ON)
>> +						drm_backlight_set_luminance(
>> +							connector->backlight, val);
>> +					return 0;
>> +				}
>> +			}
> 
> And this all shouldn't be plugged into the function directly, but a helper ideally.
> 
>>   			obj->properties->values[i] = val;
>>   			return 0;
>>   		}
>> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
>> index ef4e923a87284..8609e1660f210 100644
>> --- a/drivers/gpu/drm/drm_sysfs.c
>> +++ b/drivers/gpu/drm/drm_sysfs.c
>> @@ -11,6 +11,7 @@
>>    */
>>   
>>   #include <linux/acpi.h>
>> +#include <linux/backlight.h>
>>   #include <linux/component.h>
>>   #include <linux/device.h>
>>   #include <linux/err.h>
>> @@ -27,6 +28,7 @@
>>   #include <drm/drm_device.h>
>>   #include <drm/drm_file.h>
>>   #include <drm/drm_modes.h>
>> +#include <drm/drm_backlight.h>
>>   #include <drm/drm_print.h>
>>   #include <drm/drm_property.h>
>>   #include <drm/drm_sysfs.h>
>> @@ -391,15 +393,35 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
>>   
>>   int drm_sysfs_connector_add_late(struct drm_connector *connector)
>>   {
>> -	if (connector->ddc)
>> -		return sysfs_create_link(&connector->kdev->kobj,
>> -					 &connector->ddc->dev.kobj, "ddc");
>> +	if (connector->ddc) {
>> +		int ret = sysfs_create_link(&connector->kdev->kobj,
>> +					    &connector->ddc->dev.kobj, "ddc");
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	if (connector->backlight) {
>> +		struct backlight_device *bd = drm_backlight_get_device(connector->backlight);
>> +
>> +		if (bd) {
>> +			int ret = sysfs_create_link(&connector->kdev->kobj,
>> +						    &bd->dev.kobj, "backlight");
>> +			if (ret) {
>> +				if (connector->ddc)
>> +					sysfs_remove_link(&connector->kdev->kobj, "ddc");
>> +				return ret;
>> +			}
>> +		}
>> +	}
>>   
>>   	return 0;
>>   }
>>   
>>   void drm_sysfs_connector_remove_early(struct drm_connector *connector)
>>   {
>> +	if (connector->backlight && drm_backlight_get_device(connector->backlight))
>> +		sysfs_remove_link(&connector->kdev->kobj, "backlight");
>> +
>>   	if (connector->ddc)
>>   		sysfs_remove_link(&connector->kdev->kobj, "ddc");
>>   }
>> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
>> index cd1a161ae7bc6..13954c2220b7e 100644
>> --- a/drivers/video/backlight/backlight.c
>> +++ b/drivers/video/backlight/backlight.c
>> @@ -126,6 +126,9 @@ static void backlight_generate_event(struct backlight_device *bd,
>>   	case BACKLIGHT_UPDATE_HOTKEY:
>>   		envp[0] = "SOURCE=hotkey";
>>   		break;
>> +	case BACKLIGHT_UPDATE_DRM:
>> +		envp[0] = "SOURCE=drm";
>> +		break;
>>   	default:
>>   		envp[0] = "SOURCE=unknown";
>>   		break;
>> @@ -579,6 +582,20 @@ int backlight_unregister_notifier(struct notifier_block *nb)
>>   }
>>   EXPORT_SYMBOL(backlight_unregister_notifier);
>>   
>> +/**
>> + * backlight_notify_brightness - notify brightness change to listeners
>> + * @bd: backlight device that changed
>> + *
>> + * Notify registered listeners that the backlight brightness has changed.
>> + * This is called automatically after successful brightness updates.
>> + */
>> +void backlight_notify_brightness(struct backlight_device *bd)
>> +{
>> +	blocking_notifier_call_chain(&backlight_notifier,
>> +				     BACKLIGHT_BRIGHTNESS_CHANGED, bd);
>> +}
>> +EXPORT_SYMBOL(backlight_notify_brightness);
>> +
> 
> This should be in separate commits.
> 
>>   /**
>>    * devm_backlight_device_register - register a new backlight device
>>    * @dev: the device to register
>> diff --git a/include/drm/drm_backlight.h b/include/drm/drm_backlight.h
>> new file mode 100644
>> index 0000000000000..e0e09e38f7c06
>> --- /dev/null
>> +++ b/include/drm/drm_backlight.h
>> @@ -0,0 +1,51 @@
>> +/* SPDX-License-Identifier: MIT */
>> +#ifndef __DRM_BACKLIGHT_H__
>> +#define __DRM_BACKLIGHT_H__
>> +
>> +/*
>> + * Copyright (c) 2014 David Herrmann <dh.herrmann at gmail.com>
>> + *
>> + * Permission is hereby granted, free of charge, to any person obtaining a
>> + * copy of this software and associated documentation files (the "Software"),
>> + * to deal in the Software without restriction, including without limitation
>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>> + * and/or sell copies of the Software, and to permit persons to whom the
>> + * Software is furnished to do so, subject to the following conditions:
>> + *
>> + * The above copyright notice and this permission notice shall be included in
>> + * all copies or substantial portions of the Software.
>> + *
>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>> + * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
>> + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
>> + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
>> + * OTHER DEALINGS IN THE SOFTWARE.
>> + */
>> +
>> +#include <linux/kernel.h>
>> +#include <linux/types.h>
>> +
>> +struct backlight_device;
>> +struct drm_backlight;
>> +struct drm_connector;
>> +struct drm_device;
>> +struct drm_mode_object;
>> +
>> +int drm_backlight_init(void);
>> +void drm_backlight_exit(void);
>> +
>> +int drm_backlight_alloc(struct drm_connector *connector);
>> +void drm_backlight_free(struct drm_connector *connector);
>> +void drm_backlight_register(struct drm_backlight *b);
>> +void drm_backlight_unregister(struct drm_backlight *b);
>> +
>> +void drm_backlight_link(struct drm_backlight *b, struct backlight_device *bd);
>> +struct backlight_device *drm_backlight_get_device(struct drm_backlight *b);
>> +void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value);
>> +void drm_backlight_inhibit_legacy(struct drm_backlight *b);
>> +void drm_backlight_uninhibit_legacy(struct drm_backlight *b);
>> +void drm_backlight_inhibit_legacy_all(struct drm_device *dev);
>> +void drm_backlight_uninhibit_legacy_all(struct drm_device *dev);
>> +#endif /* __DRM_BACKLIGHT_H__ */
>> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
>> index 5ad62c207d009..d78ac1068d12e 100644
>> --- a/include/drm/drm_connector.h
>> +++ b/include/drm/drm_connector.h
>> @@ -2410,6 +2410,9 @@ struct drm_connector {
>>   	 * @cec: CEC-related data.
>>   	 */
>>   	struct drm_connector_cec cec;
>> +
>> +	/* backlight link */
>> +	struct drm_backlight *backlight;
>>   };
>>   
>>   #define obj_to_connector(x) container_of(x, struct drm_connector, base)
>> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
>> index e584652ddf676..b6d88319d5d0f 100644
>> --- a/include/drm/drm_mode_config.h
>> +++ b/include/drm/drm_mode_config.h
>> @@ -852,6 +852,11 @@ struct drm_mode_config {
>>   	 * the position of the output on the host's screen.
>>   	 */
>>   	struct drm_property *suggested_y_property;
>> +	/**
>> +	 * @luminance_property: Default connector property to control the
>> +	 * connector's backlight luminance.
>> +	 */
>> +	struct drm_property *luminance_property;
>>   
>>   	/**
>>   	 * @non_desktop_property: Optional connector property with a hint
>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>> index 204eea9256fd7..26a7281d179c1 100644
>> --- a/include/linux/backlight.h
>> +++ b/include/linux/backlight.h
>> @@ -29,6 +29,7 @@ enum backlight_update_reason {
>>   	 * @BACKLIGHT_UPDATE_SYSFS: The backlight was updated using sysfs.
>>   	 */
>>   	BACKLIGHT_UPDATE_SYSFS,
>> +	BACKLIGHT_UPDATE_DRM,
> 
> Doc?
> 
> Maxime

