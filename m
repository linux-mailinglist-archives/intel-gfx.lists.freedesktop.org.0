Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGvyKRt0/GkEQQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:14:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E164E74B6
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8ABA10E5C5;
	Thu,  7 May 2026 11:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="C+yixGqY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013063.outbound.protection.outlook.com
 [40.93.196.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900D010E27B;
 Thu,  7 May 2026 11:14:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wZQ1NldaHH/jCuY4djJqEI6svzMp6WPj56mHYkyZx1JaTjksIy/vvO77aenzlUmVAmbQilUxyP5tCUXS1GdHep7CEJJS6jRRO6YB42jtOJbTLNHg8P7jxuPs/GA7pZOtFUrl2AdUElgvdu8MR9Vvc9m/72swZ92IeyCno4W6rwqlu+T6TGjQne8wtl3Yx32u40yJjHWXXa8wvF1mUfMbBgaLsORN2MjEnCQw1hUEI/vOMY+ZCCe8a75UOA2f67nEkCjzMZh/HEQafe92jDCs56QlOaOk4XPzl19/EtyXmVgLjXbHR5mOu0zSbxf5leD3G3aWnaMnDdcMkSNhnj9DOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0PZHYBre7YN2V5lIP29r7PVrPD0+zVGi4bjI3br0ClY=;
 b=UgRrlfYnfhsb1Kx7bWBlBepuYIHwLMOG1EIyYPIQLSTK8Gkzme0kxE47y5Tfib887n2KKwFpm9Tg3bfRhF0E5Eh28vStO5pGbwUM5AC6sn8a9aRtJrWMN8VdvvMCF9QaJIIP70bfhlzpaz4MTsOzn81ShnF+w7juz7NmcMwerjCt7HqL51Tfv2P5VDkwOIaFKAdV6qp85W9Lg8RQm2eaFvI7HKdEyF6b3aSUCANC4mJPe7GVKW3VF2Cx3nmJUTV7A5X+lfo6sjTGAeYpmyZzaTAr/3hr4u1/bTjdNFSsvZaxDD/AQX1EeaPmsDEI5MC1iICffrtuYbVxSukwF66+sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0PZHYBre7YN2V5lIP29r7PVrPD0+zVGi4bjI3br0ClY=;
 b=C+yixGqYokwuQZGBXDWK8XB+jQPD9P7AfBYG6AMkXQ+SQAAgZMW6eH5z+euzyp9sUQJAsefmQOJISblC+Hj/AhKoZT9WYo39VmgzT8j4r+6I/ORqyo6jw1/YMFl2Vb5iwMBE6Arln4xI4XUS5iGYyIBBRnXE7x2u5BDfRq4cDj4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6303.namprd12.prod.outlook.com (2603:10b6:8:a3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.18; Thu, 7 May 2026 11:14:24 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 11:14:24 +0000
Message-ID: <198969c4-3356-4454-aa60-8055a241ab83@amd.com>
Date: Thu, 7 May 2026 13:14:18 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Fix potential UAF in TTM object purge
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
References: <20260507101653.321535-2-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260507101653.321535-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0171.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6303:EE_
X-MS-Office365-Filtering-Correlation-Id: b66894d0-ff1f-47d2-4e56-08deac29cb5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|3023799003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: IQvn+jKZevdB0+CO3/cBSluzJRVdG3JnkHA7FcmYtwnatHre1mEM25AA0EqOT6a775RgUCtYokTRm1lBVe2ehFg7Xpa1nsGxE+L2gEt+fNs/aChRxnYH2Qa2c5SCRWQoQA+NxVDwxwjgphSMKJ6FB1VpZCw0z6KNKdSScK8fwGqbq1go39ok0Rc8oEmDonixNLIGoyiobZxo21blNH+Dgoeajgh+TTyRyMkoM7lNvZDNX77+VGt+GdmGy2/M4/+HlfB1JNzKdC743GffjEMo9zq54n63Vk1sg1HgCKvYz3MeMRybIhd66FnZQzXWR9bW4OCtnBAabxhglPi0JstMrfKmQuR+UcYytzWjV9uB0Shy2D4pHaaQxdQa8aRZJtdisOwAP9j+hdbltq6JP6wzB6miZkxBWEugH4fS2Q20RyTY2jgjM00VChAVfYkgwEG4Ivjmnr+IwyYwyAMz9h0PhKXQXnev7HdzJOYjawF+cWBU+8SU6QXeXn0Nm849Ug2KHk/JeHfv8XEseY4aS02R530zNIb2vMeOw1ZT2tAgT68yU4CGYd93/6OeNyukRz945cDbuvCLvPr7BfwQl8lA5mW5sgN08H2xLizxWLvnqALaBqJhxm4fJy7AwlR90SMY+v2P7GHdcd2IsvAPi/EshQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(3023799003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z09uTUs0ejhSMDBacmc2SHdvdTZRUjluaVRnUVk5Skh5NVhwYmUycWdVLzIv?=
 =?utf-8?B?ZGNHbGpPb0VCUkVraGFEM1VVNUNEZVRCbnZ2R0FESEFYZzZVQ0UyN0VKd0la?=
 =?utf-8?B?eERGTjFXMnVLQzJ2WHRFVVlESDh2NnJyVUYycytUMEV6Y3ZXc2NyQ0drdUhW?=
 =?utf-8?B?bTlyWlRrZWFkWkFyZjZJZ3lmZ2xiZ0tkdk1CM2J3NERnZHVlTU00cVEwa01z?=
 =?utf-8?B?T092UzN5eWpCMDE3WTkvTlErek11VFBoRHdCaEV4RmlERnJIR3FObUJBOWd0?=
 =?utf-8?B?bEwrTGIyb1FzNCt1aHlZZHpnbER2Wk5BM2xicGszMG4vcTBQTGs4dGtidzgy?=
 =?utf-8?B?dE9VQmQxVHdGSU1heFp3dmNscy9FbTZWK0ZoWUYrakY4VittZkR1aHY4eG1H?=
 =?utf-8?B?Q0p2NTNGdTRKeXZNQjJKYkhsUWFjei9wQld1MHBoQnBxUGpXVHZKdmhnQVhU?=
 =?utf-8?B?TW1LWnlzSXc0T0tpdnJuOUxiNHNvYTlUT3k4YU84ZDNxYnhUMmIrOGtpcmxP?=
 =?utf-8?B?bVFWSitCQTQwVGxtRElqODdFenJFYk5ydXo1ZS9hVE40bmhXMThDQjU1djIw?=
 =?utf-8?B?MWZaVC84bXBIYjVMSGRCeEEwNnpGbGo4Slh5Z2U1SzNiY3dPY3RudE1HR1ds?=
 =?utf-8?B?ZnRJcTRLb3MzM1R3TnZ4dHVqVVpkL1hsK00yQkxET2dQcG50MUhrQkdzcFZk?=
 =?utf-8?B?SkVhYVdPcVI1ZnllK1NCRE9UQjZNYjgrSTZ1c1B4VTFGQkdLTHVYNWxMeWZF?=
 =?utf-8?B?cEJaZzl3SWpFMFRCSC8wNXFid0NwWUYxOHZTbEY4ODU3SSsxaUt6S0E2OFdL?=
 =?utf-8?B?TzRNWEMvdnh3OTFQb3NCcVVrR203dDJ4TlBmQmJpby9DWGsvZ1piVEtuUGZP?=
 =?utf-8?B?UEJCT3JWMTk2TGNqdkQrZ2lablZiTGh6V0d2T0FYK2ZaOVVudWx1dXZyQmZD?=
 =?utf-8?B?U2lONitCR1E4T3VnQ1lkb2MzeHlaWm1hbFNrczhKa1owbWRXVkZVbUV1V2I2?=
 =?utf-8?B?aU9RbUtORUdseEdOUHNUVXJGN2I3WGNJOEJPVzdwcWRObERXcTVTMmNuU0hV?=
 =?utf-8?B?bUY0bFF2MWRoUSt5a0tadGtMbzdlVDJrRjcyeGduQ3l2L3p4K29RcEFJYUdx?=
 =?utf-8?B?TEcxT3I4bnIwYXp2MlFaSGdpN0VGYzNPVUpZMEQyczFDQ1RVVjR5aXExUEFh?=
 =?utf-8?B?SGN3VWVZTHR5ckZXU1hFM1B3Wmc5dlNYV21vSVBqV1JVYVRWS3F5OWJQcFp4?=
 =?utf-8?B?elUvSkdaRUpJNHZWbWRRd1h6NTdtcXNqWjVkcVF2ZGdhYmc2bEM4SCtZeFV5?=
 =?utf-8?B?R2dwR2hvN21xb29yTjJUL1hjTzkzZ2s2SzFHLzkrNmhXaG1QWi90MGt1cEh1?=
 =?utf-8?B?azN2M1NsbHhQSHh3d1p5MHV5M3FMemdjQ3FONUVUYkQ2SWphVTFQT2ZoeUZW?=
 =?utf-8?B?aUZpQmw1Q2NXZzdCdkJPaUszNjJkVHkzeW4zT0RTNUt5S01xTDUvdjVKZ0x3?=
 =?utf-8?B?YytHeGRVK2p3eHAzVy9sZElETzNMcmFQWXZaVVVuMXBTN1dRbkhGMjN6K2ZP?=
 =?utf-8?B?am1ZQW5wSThmTnhRU3ZMQkZnbjQ5R3hwcmcvNVQ3KzZFUFpVQ2ErU0FoTFF2?=
 =?utf-8?B?bGlUZngrTUY4RUlxWlo3UGdLdHoyeXR0S29qbzZkT1NYb3JUcDBRbE44N2x1?=
 =?utf-8?B?WWpLY1NlSmZWSHRvZk1RRGlQZncyWXo1VkNBQ3BhR1ViZSthMWcwYUZDdmIx?=
 =?utf-8?B?M2VRRGVwNENuR0VXcE1MbFA4VUJNT2FtKzMyN3AyaGN6ME80eTZQcVJYaU04?=
 =?utf-8?B?NXZPZmVoRTVPRmdOVTZ3WEZKeFdVWVo3Y0VVbGZpR21oS21wTkRxT2JMQ2FS?=
 =?utf-8?B?NHBxN3lTbEV6Zzg2bytSTWYrRmlmUHNHTFJoMVFCN0oybzFQL3NEUWh5ZlBT?=
 =?utf-8?B?K3M5N2VuQ0FSeFhZcXNrZWx4TnhiS3d3Sm5wVmZFdld6d3ZUdXNCTTJLRW1P?=
 =?utf-8?B?TUpQVnQwZjhMSy9jb3IxaHZBbm1hQ1Zhc1lhYk51UjFOUWt4cmgyV3RLaUhI?=
 =?utf-8?B?SFQyY2VtVGRIM21yd3hjNUZSeEsxWG9kTkl2ZnZYcDI4QkVEek1qcHUzaG01?=
 =?utf-8?B?SmY3QWg0MERVTk9VVWFDY0VBdVZJZVNnUDF5VUNiZ29Qbkl6RUtyc2ZpZGI2?=
 =?utf-8?B?MTFOMWd4K2taOXppRHpMWFVUZXVIU0lyMXZvdDhURGRycXNMc3lNcEZHR0No?=
 =?utf-8?B?R0VwcXNza0h3ejZuamNBaWRMOFVybnFhQVdWSUdMNlc0bnJaQitsME1uNnRY?=
 =?utf-8?Q?7CLM5nbAJaCQASTnLv?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b66894d0-ff1f-47d2-4e56-08deac29cb5c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 11:14:24.0421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0zMU/zmxBvPH2pmygIDkke7L90UT7JipERpJJv+r0A3LiZnw2wmrvOMfDrFDQ/kv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6303
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
X-Rspamd-Queue-Id: 57E164E74B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:dkim,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action

On 5/7/26 12:15, Janusz Krzysztofik wrote:
> A user reported hitting the following bug under heavy use on DG2:
> 
> [26620.095550] Oops: general protection fault, probably for non-canonical address 0xa56b6b6b6b6b6b8b: 0000 1 SMP NOPTI
> [26620.095556] CPU: 2 UID: 0 PID: 631 Comm: Xorg Not tainted 6.18.8 #1 PREEMPT(lazy)
> [26620.095558] Hardware name: ASRock B850M Steel Legend WiFi/B850M Steel Legend WiFi, BIOS 3.50 09/18/2025
> [26620.095559] RIP: 0010:i915_ttm_purge+0x84/0x100 [i915]
> [26620.095604] Code: 00 00 00 48 8d 54 24 10 48 89 e6 48 89 fb e8 83 aa ae ff 85 c0 75 6f 48 83 bb a8 01 00 00 00 74 2c 48 8b 45 78 48 85 c0 74 23 <48> 8b 78 20 48 c7 c2 ff ff ff ff 31 f6 e8 7a 73 e3 e0 48 8b 7d 78
> [26620.095605] RSP: 0018:ffffc90005fd7430 EFLAGS: 00010282
> [26620.095607] RAX: a56b6b6b6b6b6b6b RBX: ffff8881f46c3dc0 RCX: 0000000000000000
> [26620.095608] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 00000000ffffffff
> [26620.095609] RBP: ffff888289610f00 R08: 0000000000000001 R09: ffff88823b022000
> [26620.095609] R10: ffff888103029b28 R11: ffff8881fc7f3800 R12: ffff88810b6150d0
> [26620.095609] R13: ffff888289610f00 R14: 0000000000000000 R15: ffff8881f46c3dc0
> [26620.095610] FS: 00007f1004d86900(0000) GS:ffff88901c858000(0000) knlGS:0000000000000000
> [26620.095611] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [26620.095611] CR2: 00007f0fdf489000 CR3: 000000035b0c1000 CR4: 0000000000750ef0
> [26620.095612] PKRU: 55555554
> [26620.095612] Call Trace:
> [26620.095615] <TASK>
> [26620.095615] i915_ttm_move+0x2b9/0x420 [i915]
> [26620.095642] ? ttm_tt_init+0x65/0x80 [ttm]
> [26620.095644] ? i915_ttm_tt_create+0xc6/0x150 [i915]
> [26620.095667] ttm_bo_handle_move_mem+0xb6/0x160 [ttm]
> [26620.095669] ttm_bo_evict+0x100/0x150 [ttm]
> [26620.095671] ? preempt_count_add+0x64/0xa0
> [26620.095673] ? _raw_spin_lock+0xe/0x30
> [26620.095675] ? _raw_spin_unlock+0xd/0x30
> [26620.095675] ? i915_gem_object_evictable+0xb7/0xd0 [i915]
> [26620.095704] ttm_bo_evict_cb+0x6e/0xd0 [ttm]
> [26620.095705] ttm_lru_walk_for_evict+0xa6/0x200 [ttm]
> [26620.095708] ttm_bo_alloc_resource+0x185/0x4f0 [ttm]
> [26620.095709] ? init_object+0x62/0xd0
> [26620.095712] ttm_bo_validate+0x7a/0x180 [ttm]
> [26620.095713] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095714] __i915_ttm_get_pages+0xb0/0x170 [i915]
> [26620.095737] i915_ttm_get_pages+0x9f/0x150 [i915]
> [26620.095759] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
> [26620.095786] ? alloc_debug_processing+0xd0/0x100
> [26620.095787] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095788] ? i915_vma_instance+0xa0/0x4e0 [i915]
> [26620.095822] __i915_gem_object_get_pages+0x2f/0x40 [i915]
> [26620.095848] i915_vma_pin_ww+0x706/0x980 [i915]
> [26620.095875] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
> [26620.095904] eb_validate_vmas+0x170/0xa00 [i915]
> [26620.095930] i915_gem_do_execbuffer+0x1201/0x2b40 [i915]
> [26620.095953] ? alloc_debug_processing+0xd0/0x100
> [26620.095954] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095955] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
> [26620.095977] ? __wake_up_sync_key+0x32/0x50
> [26620.095979] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
> [26620.096001] ? __slab_alloc.isra.0+0x67/0xc0
> [26620.096003] i915_gem_execbuffer2_ioctl+0x11a/0x240 [i915]
> 
> Results from decode_stacktrace.sh pointed to dereference of a file pointer
> field of a i915 TTM page vector container associated with an object being
> purged on eviction.  That path is taken when the object is marked as no
> longer needed.
> 
> Code analysis revealed a possibility of the i915 TTM page vector container
> being replaced with a new instance inside a function that purges content
> of the object, should it be still busy.  That function is called,
> indirectly via a more general function that changes the object's placement
> and caching policy, before the problematic dereference, but still after
> a pointer to the container is captured, rendering the pointer no longer
> valid.
> 
> Fix the issue by capturing the pointer to the container only after its
> potential replacement.

Apart from the nit Sebastian pointed out the patch looks good to me, but I had to read that twice to actually understand what's going on.

Maybe simplify the commit message a bit, something like "The bo->ttm object might be changed by calling ttm_bo_validate(), move casting it to an i915_tt object later to actually get the right pointer." should perfectly explain why the change is necessary.

Regards,
Christian.

> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/14882
> Fixes: 7ae034590ceae ("drm/i915/ttm: add tt shmem backend")
> Cc: stable@vger.kernel.org # v5.17+
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index de70517b4ef22..091972f3bb7bd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -419,13 +419,12 @@ void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj)
>  int i915_ttm_purge(struct drm_i915_gem_object *obj)
>  {
>  	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
> -	struct i915_ttm_tt *i915_tt =
> -		container_of(bo->ttm, typeof(*i915_tt), ttm);
>  	struct ttm_operation_ctx ctx = {
>  		.interruptible = true,
>  		.no_wait_gpu = false,
>  	};
>  	struct ttm_placement place = {};
> +	struct i915_ttm_tt *i915_tt;
>  	int ret;
>  
>  	if (obj->mm.madv == __I915_MADV_PURGED)
> @@ -435,6 +434,7 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
>  	if (ret)
>  		return ret;
>  
> +	i915_tt = container_of(bo->ttm, typeof(*i915_tt), ttm);
>  	if (bo->ttm && i915_tt->filp) {
>  		/*
>  		 * The below fput(which eventually calls shmem_truncate) might

