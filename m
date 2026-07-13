Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tsaLBa/kVGqVggAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 15:14:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4D474B674
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 15:14:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=uvNtv6dV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E815910E9AE;
	Mon, 13 Jul 2026 13:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010038.outbound.protection.outlook.com [52.101.201.38])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC3D10E9AD;
 Mon, 13 Jul 2026 13:14:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K3M0Jr3duyx4YGjOWs9QS2BOQk974P7hqHwsg+LkGy+skMe238Re4t1T63eYu284baDMNnScmRt8A4k8BDuORfWd+JvArymUpfQ6LcQ3m2Sw4qgQxnW8XiibbpOjIKI2Bej8kuISluKiUgiwBdD3lY+qD8Tag0NoYTYJdrFWkIdAvF6IwFtQeLLC5T0EOBRT6rt6umAm1Pgd/NPgbkkWg8XDZ+T5z9RJed5raS0MSXxialCj+QQQCX2tCy5PrGUen220MpUANMGdYFr33xDjyY3jztqPcbUAyMEEQdRls19ZMdjqlB43Hghf0VHvvZ5SBgHBfxJar7FvPKhN54bAtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJxF42FL0L0+1e8vtOQQuCe/iJ9g8hbwsiiy45QRTPc=;
 b=rf6HGEtntdw2cpuNBWyIdpLe1oXNPAZSf1pYOtI0Srkn+JjKOCTWTV19bwTXBgKx8enM6Jm5yPWifk8YWrik/AJrDuIKdvg7yvYd2NL/2SaNAVA3VYoXkCp9coAcpwsSpX3rkiX/NN/Kx//UMPej+DQHG4wiy5tbYxghqEQuAZgBtNCqzDsGOS6OF+WWJlHau+qne9nhC+Ww+saMEQXx3shZOhdsgfjUWloK2jrxlmZnGOJpCqa/rQYZ9l06bhaSIYYFQGbIWOHyvKfghdWsgaF3l/ehzzQoPoA5qr924HobPmwR+Q5eoAieqjSnMxXS77uCiuR/6Ylvi5HvGrN0yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJxF42FL0L0+1e8vtOQQuCe/iJ9g8hbwsiiy45QRTPc=;
 b=uvNtv6dVZYi6cp/gtAKphuFqIlToqxbOc2ujhxgV3HjuBQyMje6GSg2g/v6KmKSxo1usVxSRXBUTySZ0fAYma9k9lJfpdEKSb/7DDAChJ57jF1gh/bXl6gniFar7Uu8yDbXblOpWjZZKPj5NBNPCw7c2p8jcNne8uMHacR3FZEw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB7986.namprd12.prod.outlook.com (2603:10b6:510:27d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 13:14:15 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 13:14:13 +0000
Message-ID: <ff8e2004-366b-447a-b1b2-504e1cbcb265@amd.com>
Date: Mon, 13 Jul 2026 15:14:08 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] drm/exec: add drm_exec_lock_resv function
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dakr@kernel.org, ecourtney@nvidia.com, simona@ffwll.ch,
 matthew.brost@intel.com, nat@pixelcluster.dev, airlied@gmail.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-11-christian.koenig@amd.com>
 <0cfc1913440ce8f19f715f5df7faa23dc1164755.camel@linux.intel.com>
 <bda9ac0e-cca5-4262-94e1-d048c470c3af@amd.com>
 <60e358ad5babca098e4ae20fa89703988fda64f2.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <60e358ad5babca098e4ae20fa89703988fda64f2.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0251.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f5::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB7986:EE_
X-MS-Office365-Filtering-Correlation-Id: ac40ad66-8680-489a-307e-08dee0e0a1f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|23010399003|366016|1800799024|18002099003|22082099003|4143699003|6133799003|11063799006|56012099006|921020;
X-Microsoft-Antispam-Message-Info: n3sI7n2RjTageiHXeFn5Ol8rWNZCoHRSD3QUKgNPuL0cLXd92QmggnZ3IYyFXvKbdfTNU71oSgRQ5076WcB+QYYAODFETwH8edxN4bjVnGqI/iwt2ACYfYcauCrUfU968T6Qf5n23NHnBo6/E3WweUBG9b7mHd4HEDg7i2knDnPiSu8NyTB0Y2KgDZ/8i2aE/EsyQ2p/tM2Tzsq4Estr+9RNQbDHDmYlT9O/mAoDPVhGf4LmH+o0J4JHraQ7psbXBQqWsQ7vAyqlKd1zx0C/i5WCFszzVLpFcLOdcGeT8JKsWGFKH2T5TIQR6snOZtp4+yzwxCPvLDzf2ZIwsYLsC0bzUtFPBtS5y71yCRX3h20Cf5C970Iuc5VzOiPrti9hXW6xvidFwxAYUiWqa3ECcAVJuKU7CDjtMLxBAMtlUF4esglBCEvP1RGEPLco8ZVAPqg//iGE+h4yrxy3DVEF5a3WSyI5Z2ccEooG6LfYSblh4DywG6gBOCv+qu6oSxHIYB+UKeyasrB3CfoizYA+cBGfMiEjl9LwP5vFBDiJ8oo/CwN4A9qp2bRuyFAWuwqz22jiHJSEuY5rYyTydIyl1IwNxvLgHqjPCxk5IYp75oHktHSD9Pdwkk9FiJRi6Z/7d9Qshf0lEbxPOuHb+mpwfbhbutKjeVyX/PpjnvBEOg02oeMb0X/iSkaVxa5yfb9Za4snQr+atEuA1Qx+VWIEAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(23010399003)(366016)(1800799024)(18002099003)(22082099003)(4143699003)(6133799003)(11063799006)(56012099006)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVM3dWllc1FsdUpWWC90ZzhvaEU1WjhMWlRJd3VMdVY2RlpSMFFYa2Q0T1VB?=
 =?utf-8?B?RENqK3pnRCtvdXFYU29uUFgyNCtUb3pyek5uT2tDVzlzMHcwYmhTVXJzNU53?=
 =?utf-8?B?c1lTSVpVRU9wbmgxMjIrTk4zdFA0YXpkMmhMeVhCK0J1VWIraWdoa0F2TzdQ?=
 =?utf-8?B?K3lVZnRNSGs2T1NOalNDOVZreU9PYVZQaEdzbDlxVDFYUDVseUZCU3pBQWJM?=
 =?utf-8?B?Zm42dDNJOFhoYkJnRjNJK2NKQThMZEp1NWlaaFNhSVdLdFREZTFMdDhnMUQz?=
 =?utf-8?B?TDVHWUYxNlVtVGtQV0U5VXlhSkQvbFIzelVoU3Zac2orQ1M1c0VjMEtHWHZl?=
 =?utf-8?B?ODdZNHBBV1FlNW40L2xsM01yd0x3L3NNM0hoM2RSVytaL3Iydy9CYlE4Q25y?=
 =?utf-8?B?OUJ1eHFxaGRKRzdiOXpmajdhL0FOTzYyWnphZTNIRmNzV2hWMEo4RmdmcXhV?=
 =?utf-8?B?NHJRQ3JYSmoreXF1OENLWXZYR2J5R2xvRzlWZWtqV2N1Tm54RFQwNDZZZ3Zi?=
 =?utf-8?B?QTRlOTVzb1BJMzMzeXZ1UFZuemdka0lMRkFwaXljUmdidDA3N3Awd3FsN0Nh?=
 =?utf-8?B?MXJEWi8rRk1LSzY2eE4zWGhnVUhnZVhKNHo0ejc5K3YzKzB2LzBjY0NVdy83?=
 =?utf-8?B?YW5IbVRCTjd5T1FFcWVmK3cxQktncGVaYWo2aVI0WFB2TUpiZ3FHTmx5Y1FO?=
 =?utf-8?B?Q2IxSTJmUDB2Q1NqS1psTzFubUgxSldwcU9hOEQ2WVRCWHpxZHNJRlV5Tk1m?=
 =?utf-8?B?ZjU4eDAxaXMwQXRoTXBNWGlIMjQxWlNGOUNZNTZEOTJkd1grbWZJZytob2tN?=
 =?utf-8?B?MkIwdHhxdjR2S3pTYW9BdUNWaDFZSksyWitRSFI4aUVON1RWRzFTdit4dTY5?=
 =?utf-8?B?MDlNR2hOVVFScFBrUEd3blZ1VEZLTlRJZk5seGttdU5NMmpYRHdGYVdlTTFI?=
 =?utf-8?B?ajhia2M3MDgxbTl2d3NRdTB0eUQra0Fyc1ZIU3hDeWcwZG14ekJBVTVJWXdk?=
 =?utf-8?B?dko0SnJybThndWlwdlgwYlBGTmZnMXhzbDFRTkZyK0RJL1R1L1BPR1FlN3cw?=
 =?utf-8?B?NlRzV21KWUF5REkyNlRzZnFPVXNPQUxhcjk0SVU0b2RuTmlHK2xhNmpua0hZ?=
 =?utf-8?B?c1lJRHhjSitoNmo3L0xGVGhwR2ZxRkppVkhjYkdZMUxGcE9mZko0djh4Yy82?=
 =?utf-8?B?WjZLcTZ2Rjk4YlFXZEVQbFV5Uk82MGJ1dlUyZTcvZ2d5bUdMZXFVSDRGcHpG?=
 =?utf-8?B?NW5zdUlmVWRnUm1VRWJkbUFpdXBidzYwa08zRzRZR0J4SElBL3didDZuWnk2?=
 =?utf-8?B?TFY5QU45RTNISFc2V0VBNE1zMTNqdWdwUXBUVVpSdGdsOENwNklnQnpoWEtY?=
 =?utf-8?B?bGMvNGdwbjIwdC94TGFDNm0xODVpd2tNVHd4RkYxaHJiSHMzemx6T0pFKzZZ?=
 =?utf-8?B?SVVrUzhsL2FYdERXUTFwRWNXalV0ZmxSb0l5ODBGaTVTZGxPbmFkcVdobitM?=
 =?utf-8?B?TVZEUFYwRUtPNjkwTi9rQjBEZkZKQVJNQ3ZaMDVUdWZzTi9taldyQ2k1ejhw?=
 =?utf-8?B?R1BYWWQwREZ3TTdGTEF6ZUZ4K0pkL01VeEIyM3o5ajgwd29OS3h1ZkJZSEl5?=
 =?utf-8?B?SmZHZFdwM0hYdytYR21DaVUzbUdrK25XcVI2Q1FuMVVjMzk5M3pCckh5bDY5?=
 =?utf-8?B?UlJnTTczazFPV0g5K2daaGhZY3RyZlBzclR2Q2ZIVlVPRVZDMS80K1lid1Nr?=
 =?utf-8?B?SEt1UmlrSUtyM2FMd2kyb0FxYjYzVmViSUw4NzgxYVduV2gyRW9WVkxXOHhs?=
 =?utf-8?B?VzkxZFNuaDJweWhDQyt3a2VVVi9qVjNNRCtJd0taeHRNaVNQcDY4SUJ5WVox?=
 =?utf-8?B?WVNtVGU0c1BCSTQ4SXQwYVEzNFYzWDRLazZyZzkrZ3lhZ1dnc0xlWXZNenBo?=
 =?utf-8?B?TGZZeGdIWFVFcS9sbmJjYmcwcjhTWGh0Ty8vTkdMQWxZamlLa0hjVmRsWTdP?=
 =?utf-8?B?RTVLcWhUSk4yQXlkcHNyLzArSkswVTB1OURycHMvSXc5L25Hd1NHeXUzV25k?=
 =?utf-8?B?d0xoSUdwOHRXU3VScUx3ZHh1ZStQaDNUUnkwVEwxbzRVWHlOTGxjZGNmQzVR?=
 =?utf-8?B?NFlhVE5HMldQTFhHbGEwRm03cjZTdDdKdlV4NkpRMnJXYVlKY1FJZFRoQ0Vq?=
 =?utf-8?B?NlhMNW83Vi95cDRyQjBuM0UwK05na0JTVEsweXExdnlBLzNOL25FTy9jbTRP?=
 =?utf-8?B?WkJvcVZqM0RDQmE2WmVwRDBmUTh0MzVlY1JoS1M4a21ORzRBWWhnczJsdnJj?=
 =?utf-8?Q?z8T+OMXPPrwVSvUfeX?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac40ad66-8680-489a-307e-08dee0e0a1f4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 13:14:13.2163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iA4pCuuaJT1o4yFRrBwl2Mi3qQ1g1VH9whbGe/eco+CsVZ0pdpQ1NkjGSNnbBWrs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7986
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
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,amd.com:from_mime,amd.com:mid,amd.com:email,amd.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E4D474B674

On 7/13/26 14:19, Thomas Hellström wrote:
> On Mon, 2026-07-13 at 14:07 +0200, Christian König wrote:
>> On 7/13/26 13:57, Thomas Hellström wrote:
>>> On Fri, 2026-07-10 at 20:52 +0200, Christian König wrote:
>>>> Restructure the drm_exec object to work with dma_resv references
>>>> instead
>>>> of GEM object references.
>>>>
>>>> Add the new function dma_exec_lock_resv() to lock individual
>>>> dma_resv
>>>> objects and so allow higher level implementations to handle
>>>> contention
>>>> purely on dma_resv objects.
>>>>
>>>> WIP! Don't commit like that!
>>>>
>>>> Signed-off-by: Christian König <christian.koenig@amd.com>
>>>
>>> Here, IMO we should move a dma-resv based implementation to dma-buf
>>> to
>>> facilitate passing it also through dma_buf_map(),
>>
>> I still don't see why that would be necessary?
>>
>> dma_buf_map() just maps the current location of the buffer, it has no
>> requirement to force the buffer into VRAM.
>>
>> At least on amdgpu we always validate buffer during dma_buf_map()
>> with VRAM|GTT, so we never cause any eviction at all.
> 
> For fast interconnects xe wants to avoid pinning in VRAM and needs a
> more aggressive validation. If you have a bunch of processes using WW
> transactions to lock out others from VRAM allocation with one process
> not participating that wouldn't work out well.
> 
>>  
>>> And if wanting to avoid rewriting all users of drm_exec, Make
>>> drm_exec
>>> a thin wrapper on top.
>>
>> DMA-buf looks like the wrong place for this since it only works on
>> exported buffers and that should be the absolute minority.
>>
>> We could have a dma-resv contention tracking helper, but I still
>> don't see for what that would be good for?
> 
> See the above. The problem is that the WW transaction always starts
> with a drm_exec on the importer side and it needs to be the same
> structure that holds the contended lock on rollback.
> 
> What are the issues you are seeing?

Mhm, there had been quite some discussion on that topic in the past and so far the result was usually that this shouldn't be necessary.

On the other hand with a reference counted dma_resv object it should be technically doable and the past discussions have already been years ago with quite a bunch of different requirements.

For dma_buf_map() I still don't see the use case, cause that function is really "give me access to the current location of the buffer" it should not move the buffer. If the exporter needs the buffer in a different location later on it can still do so.

But for dma_buf_pin() it might be perfectly valid to kick out other buffers and then I agree that definately needs to ww locking context.

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
>>>
>>>> ---
>>>>  drivers/gpu/drm/drm_exec.c | 75 ++++++++++++++++++++++----------
>>>> ----
>>>> --
>>>>  drivers/gpu/drm/drm_gem.c  |  2 +
>>>>  include/drm/drm_exec.h     |  9 +++--
>>>>  3 files changed, 50 insertions(+), 36 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_exec.c
>>>> b/drivers/gpu/drm/drm_exec.c
>>>> index fa923852fae45..382bf7bcd5ff3 100644
>>>> --- a/drivers/gpu/drm/drm_exec.c
>>>> +++ b/drivers/gpu/drm/drm_exec.c
>>>> @@ -58,8 +58,11 @@ static void drm_exec_unlock_all(struct
>>>> drm_exec
>>>> *exec)
>>>>  		drm_gem_object_put(obj);
>>>>  	}
>>>>  
>>>> -	drm_gem_object_put(exec->prelocked);
>>>> -	exec->prelocked = NULL;
>>>> +	if (exec->prelocked) {
>>>> +		dma_resv_unlock(exec->prelocked);
>>>> +		dma_resv_put(exec->prelocked);
>>>> +		exec->prelocked = NULL;
>>>> +	}
>>>>  }
>>>>  
>>>>  /**
>>>> @@ -101,7 +104,7 @@ void drm_exec_fini(struct drm_exec *exec)
>>>>  	drm_exec_unlock_all(exec);
>>>>  	kvfree(exec->objects);
>>>>  	if (exec->contended != DRM_EXEC_DUMMY) {
>>>> -		drm_gem_object_put(exec->contended);
>>>> +		dma_resv_put(exec->contended);
>>>>  		ww_acquire_fini(&exec->ticket);
>>>>  	}
>>>>  }
>>>> @@ -158,50 +161,41 @@ static int drm_exec_obj_locked(struct
>>>> drm_exec
>>>> *exec,
>>>>  /* Make sure the contended object is locked first */
>>>>  static int drm_exec_lock_contended(struct drm_exec *exec)
>>>>  {
>>>> -	struct drm_gem_object *obj = exec->contended;
>>>> +	struct dma_resv *resv = exec->contended;
>>>>  	int ret;
>>>>  
>>>> -	if (likely(!obj))
>>>> +	if (likely(!resv))
>>>>  		return 0;
>>>>  
>>>>  	/* Always cleanup the contention so that error handling
>>>> can
>>>> kick in */
>>>>  	exec->contended = NULL;
>>>>  	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT) {
>>>> -		ret = dma_resv_lock_slow_interruptible(obj-
>>>>> resv,
>>>> -						       &exec-
>>>>> ticket);
>>>> +		ret = dma_resv_lock_slow_interruptible(resv,
>>>> &exec-
>>>>> ticket);
>>>>  		if (unlikely(ret))
>>>>  			goto error_dropref;
>>>>  	} else {
>>>> -		dma_resv_lock_slow(obj->resv, &exec->ticket);
>>>> +		dma_resv_lock_slow(resv, &exec->ticket);
>>>>  	}
>>>>  
>>>> -	ret = drm_exec_obj_locked(exec, obj);
>>>> -	if (unlikely(ret))
>>>> -		goto error_unlock;
>>>> -
>>>> -	exec->prelocked = obj;
>>>> +	exec->prelocked = resv;
>>>>  	return 0;
>>>>  
>>>> -error_unlock:
>>>> -	dma_resv_unlock(obj->resv);
>>>> -
>>>>  error_dropref:
>>>> -	drm_gem_object_put(obj);
>>>> +	dma_resv_put(resv);
>>>>  	return ret;
>>>>  }
>>>>  
>>>>  /**
>>>> - * drm_exec_lock_obj - lock a GEM object for use
>>>> + * drm_exec_lock_resv - lock a dma_resv object
>>>>   * @exec: the drm_exec object with the state
>>>> - * @obj: the GEM object to lock
>>>> + * @resv: the dma_resv object to lock
>>>>   *
>>>> - * Lock a GEM object for use and grab a reference to it.
>>>> + * Lock a dma_resv object for use or grab a reference to it on
>>>> contention.
>>>>   *
>>>>   * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>> object is
>>>> - * already locked (can be suppressed by setting the
>>>> DRM_EXEC_IGNORE_DUPLICATES
>>>> - * flag), -ENOMEM when memory allocation failed and zero for
>>>> success.
>>>> + * already locked, -ENOMEM when memory allocation failed and
>>>> zero
>>>> for success.
>>>>   */
>>>> -int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object
>>>> *obj)
>>>> +int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv
>>>> *resv)
>>>>  {
>>>>  	int ret;
>>>>  
>>>> @@ -209,22 +203,39 @@ int drm_exec_lock_obj(struct drm_exec
>>>> *exec,
>>>> struct drm_gem_object *obj)
>>>>  	if (unlikely(ret))
>>>>  		return ret;
>>>>  
>>>> -	if (exec->prelocked == obj) {
>>>> -		drm_gem_object_put(exec->prelocked);
>>>> +	if (exec->prelocked == resv) {
>>>> +		dma_resv_put(exec->prelocked);
>>>>  		exec->prelocked = NULL;
>>>>  		return 0;
>>>>  	}
>>>>  
>>>>  	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT)
>>>> -		ret = dma_resv_lock_interruptible(obj->resv,
>>>> &exec-
>>>>> ticket);
>>>> +		ret = dma_resv_lock_interruptible(resv, &exec-
>>>>> ticket);
>>>>  	else
>>>> -		ret = dma_resv_lock(obj->resv, &exec->ticket);
>>>> +		ret = dma_resv_lock(resv, &exec->ticket);
>>>>  
>>>> -	if (unlikely(ret == -EDEADLK)) {
>>>> -		drm_gem_object_get(obj);
>>>> -		exec->contended = obj;
>>>> -		return -EDEADLK;
>>>> -	}
>>>> +	if (unlikely(ret == -EDEADLK))
>>>> +		exec->contended = dma_resv_get(resv);
>>>> +	return ret;
>>>> +}
>>>> +EXPORT_SYMBOL(drm_exec_lock_resv);
>>>> +
>>>> +/**
>>>> + * drm_exec_lock_obj - lock a GEM object for use
>>>> + * @exec: the drm_exec object with the state
>>>> + * @obj: the GEM object to lock
>>>> + *
>>>> + * Lock a GEM object for use and grab a reference to it.
>>>> + *
>>>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>> object is
>>>> + * already locked (can be suppressed by setting the
>>>> DRM_EXEC_IGNORE_DUPLICATES
>>>> + * flag), -ENOMEM when memory allocation failed and zero for
>>>> success.
>>>> + */
>>>> +int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object
>>>> *obj)
>>>> +{
>>>> +	int ret;
>>>> +
>>>> +	ret = drm_exec_lock_resv(exec, obj->resv);
>>>>  
>>>>  	if (unlikely(ret == -EALREADY) &&
>>>>  	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
>>>> diff --git a/drivers/gpu/drm/drm_gem.c
>>>> b/drivers/gpu/drm/drm_gem.c
>>>> index bbcbd25f014f0..f5cf9ad596a67 100644
>>>> --- a/drivers/gpu/drm/drm_gem.c
>>>> +++ b/drivers/gpu/drm/drm_gem.c
>>>> @@ -229,6 +229,8 @@ void drm_gem_private_object_init(struct
>>>> drm_device *dev,
>>>>  	obj->size = size;
>>>>  	mutex_init(&obj->gpuva.lock);
>>>>  	dma_resv_init(&obj->_resv);
>>>> +
>>>> +	/* TODO: This needs to go away for drm_exec to work
>>>> correctly!!! */
>>>>  	if (!obj->resv)
>>>>  		obj->resv = dma_resv_get(&obj->_resv);
>>>>  
>>>> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
>>>> index 8725ba92ff916..9daedb676d7b1 100644
>>>> --- a/include/drm/drm_exec.h
>>>> +++ b/include/drm/drm_exec.h
>>>> @@ -47,14 +47,14 @@ struct drm_exec {
>>>>  	struct drm_gem_object	**objects;
>>>>  
>>>>  	/**
>>>> -	 * @contended: contended GEM object we backed off for
>>>> +	 * @contended: contended dma_resv object we backed off
>>>> for
>>>>  	 */
>>>> -	struct drm_gem_object	*contended;
>>>> +	struct dma_resv		*contended;
>>>>  
>>>>  	/**
>>>> -	 * @prelocked: already locked GEM object due to
>>>> contention
>>>> +	 * @prelocked: already locked dma_resv object due to
>>>> contention
>>>>  	 */
>>>> -	struct drm_gem_object *prelocked;
>>>> +	struct dma_resv		*prelocked;
>>>>  };
>>>>  
>>>>  /**
>>>> @@ -175,6 +175,7 @@ static inline struct ww_acquire_ctx
>>>> *drm_exec_ticket(struct drm_exec *exec)
>>>>  void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned
>>>> nr);
>>>>  void drm_exec_fini(struct drm_exec *exec);
>>>>  bool drm_exec_cleanup(struct drm_exec *exec);
>>>> +int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv
>>>> *resv);
>>>>  int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object
>>>> *obj);
>>>>  void drm_exec_unlock_obj(struct drm_exec *exec, struct
>>>> drm_gem_object *obj);
>>>>  int drm_exec_prepare_obj(struct drm_exec *exec, struct
>>>> drm_gem_object *obj,

