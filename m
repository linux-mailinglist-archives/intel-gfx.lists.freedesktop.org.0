Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /kahDoOD12mNPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:46:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 945553C942D
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E4010E7CB;
	Thu,  9 Apr 2026 10:46:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="hlhCDZtD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011042.outbound.protection.outlook.com
 [40.93.194.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02EF10E7BB;
 Thu,  9 Apr 2026 10:46:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F4qZUpCIcgm24RmRZ7ZGD/Vvveq/o9UgnKb/kb8v3zp5JCOYs9tMyz+H2WDmlm8gHJuJPYq3PnO7dNQzrlh794xXRBoyLnVggS58jX25AUQghnyy93Q/g97k0uJfI73ZA9VuV2KduEyWbgkabdHTik6TdyYoaOEEs2jPn3JntbieO8Ozt7tnIsj/9fpAM1PdjxQTtyoQJvEa6f+mCo8Tmtu8JVFjkuPk/LoIVUVuUPeeBJX/w5cCxAjshTkG19tuR2fMBue5XTakatIbSDwSJDjdoUJMmlpwfvjPLRoxLhxZhHVP24b5m195MPzmoP6xTTx0ywVUHp3zYw5c1NfcMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xRoHfS+M6ZaNWn/8YQRA7nxD+AgARHdg6Cf+JxjA96A=;
 b=iRR2is9AHN93Wa3hltx6twhF1Ht73z7faVdmEZNPToNBwjAJgAJU7fuReul5bYL8LCqVbm1deXKRycq9GL7mORG5KykPek2BKXkFZaHI0NmEUHbHofPMKAZ4r3deKkv2D1WZMya5XMiXGqBpPCdQTbD8pm42giQ1Jpe056NgqAzK50g5jRNMHmvmOHMUX5pQCs8ACYCFt5oNnQ1VKNfXwzE5Q2frdUxXttIrVEDtXKyEwUbqv6E4n03KvpVcOFW/bDP60xZ3hMcZrAkG79xVzHyHFbJPcIrsla9oYim9pU48pzy6QSDnF72y3ugNh6Ib0Q9uIG9ICibQGWqVkDpFLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRoHfS+M6ZaNWn/8YQRA7nxD+AgARHdg6Cf+JxjA96A=;
 b=hlhCDZtDI7rX6aGDVMcHsi69S5setbnuf6MXju+gioNdPfwr4jJQ7DTHVKTnP29w/y3v3IUvBPiPRwORE75d8EPPupZzEnT8QTkLgf1DjHT30AyytbOl38ZMNszU4xc97Surpk5YXrTrUcmo+TfkSJItQbdTazTdROkzg2H2FGk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7123.namprd12.prod.outlook.com (2603:10b6:930:60::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 10:46:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 10:46:16 +0000
Message-ID: <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com>
Date: Thu, 9 Apr 2026 12:46:11 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/i915/reset: Handle the display vs. GPU reset
 deadlock using a custom dma-fence
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Simona Vetter <simona.vetter@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260408233458.22666-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN0PR04CA0002.namprd04.prod.outlook.com
 (2603:10b6:208:52d::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7123:EE_
X-MS-Office365-Filtering-Correlation-Id: 79484c6e-0550-4e0f-b3aa-08de962539f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: Q8s35VXiATT4mDZnDW2d+jW7UH/RPnbv4X1xeHx5V3NMKbNM6+M0r/xrxAiE8ilyEonC13Cdnr6flE0wcwSha3T2/KsPHhE3eg+nop0dsusZdz3izZJSxLR18p93ScpJ6m9CNm2/UTBDBBwiEmh4U6a2Q+kNTo8W8Nf9mhOKa977Fg1JwSmfnruOrbgEchg0CINBa0UP1nR/f5AfbJnxxEfNmPrpHAFW1Exk3QOfMYiYsmUxan4Mpj0sfvhNM/87tIdlXzbGIwffIUo+X3gb/Fo11a4WqVyIGptNSBwwouymkDeRjitnQ+CHIi+AmPHCb9yvewc2yCLUjI4sEHI2w2hNRzpp+nIUb+lxcpaOfNBUI84+hrhzlCUqtPu6OSd3UO8UZ5lRcqg/drOoSlNVenydJFUJ6MoPglP+vSQ5zbmkYQDrNP3oMGMXef9vRx+9g2YvE3n+13zrab/y1SfcroWKqveOjmim/EknqEBiJoXislL9Rgq8KqGynvXMIo1MxcU88FBRs+ViMgp+ZUgEPP6Wk45vClr/TjNUM4qhpPFLJB7GN2Q/AUap5sPxqCGr/+Jz0iL2fhg+8tYA/Gf+0TAcIEYlBduzP26WiEchUScwWgXvWzTIs+lGAOI6j+yrRDUw7/c4nY4FxmzDaGYtaw+usHtS4gO+9KhFQgrvV2bYFFnAxvMJl4c2hM/1kSwqJFX5O1Edt5FnCfmLZcMWWsGo6v9Avu6L7I6pJDbJFck=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFpNMlJNNjhqYjFZMjJqbEdycDZ3ajFMTnFmZmVETUhMRW93dFV6TWpoaDZO?=
 =?utf-8?B?ZGE0OWZ1MENFUEkreGRnNDZVR1hkanFHalBBR1dCWXdSaHh3eDFFeFNReXNq?=
 =?utf-8?B?MUVXRGhMdzVwR1ZtVGtKSEU0Ri9nYW1hTXdqaG1aRmJKdGlqL3dZZWVmN0lw?=
 =?utf-8?B?WHlmMmh0VkJhVDJHNlJhZWtjc3V0TEMrUnVUVEp3MTRocXRqWW9RS3p1MTEv?=
 =?utf-8?B?bjNDUGZTb0JvWktFWEh0R251bGlBbWlCZmYwVW1zUW9wcnpLWU1QTUxXdUJF?=
 =?utf-8?B?Um1LRmorWTdWT3hrWTUrR1hsUGNHeElRaFczY3RNUzVxQVlGK0xBcElrWEhr?=
 =?utf-8?B?cituZENjT0Vaa1BmSG16dDdZUzlOSlkyL0tueU02L3VQRU54UDEzQXd0MjEr?=
 =?utf-8?B?MEhZZzVON2pUcDNMZ1Zid3JUQk5kbmFGN29wdHQrUk1FWGltVEppaEdwS2xT?=
 =?utf-8?B?UktiTTZUTDFqdk80bWhzR0kwOGIydEtjZ3FaU2xoeW5wTEs1NWJUdHhjMlhD?=
 =?utf-8?B?NFZuVWg2Qk5nVSswTWoyTU13aEpxSW1HWnhpcUlwNE9jYm8zRUd3aENqTGhQ?=
 =?utf-8?B?M1dYRTFIMkRXbkJ2cXdGVGdPMCtGUmlTNVhKWFpCRG9QeXdWQVRHQjhyUURJ?=
 =?utf-8?B?SDNBVUIvc1Joa09kZVpFalJJMnRLb01FMHlzVW9HWVVpVXdBc3dFeTBHU1Fx?=
 =?utf-8?B?M01zUUJZNVVwTVl6MzNwWDRwTHNEaHZZbHBTVHlsTUUycFR1VFpmN0gzZUZt?=
 =?utf-8?B?MWk4MjFBVFp5Z0VLdVVBdWgxV1NnS0dTM25KR2dQUWFIUm9nWFJkUE1UN0ta?=
 =?utf-8?B?SVlRWGxXN3R5ZyttRjNKYmdzR2ZtTW5HMUxOL2g5RXVGam5DMXRBbUl6Zjlk?=
 =?utf-8?B?MkoyOUtVUHYrVnY1MFJtKzh6bHFsejFLVGxoL3NidHZYSnRDeVBESlAvQzZY?=
 =?utf-8?B?K1lhNGdjMGJkODBYbDFrZzFyV09sM2MxM0w1SmFhOFlYQkZoNE5na2tUTk9v?=
 =?utf-8?B?Q1BZVEw5N1lRRnhOdjgydDR4Q2pJSDNweDJkS3hUL2V5WVRmaVpZQ01lNWFQ?=
 =?utf-8?B?blM0S09ZQ1JhN3A3cHI1eFRSd0ViWTlzenZ1Ym1OTXNZSkYzcWVuekNqWjhG?=
 =?utf-8?B?M2xmNEIyWUdZbnhzaFcxZFRxeUE2STNRSUptV3hreXozZ3l4Z005bDk3N3Ba?=
 =?utf-8?B?NFdLQWJsY2Z6WU5vVHhiK254YmJvUjdybndQVHNMQktrOU4yM2Q3RUVQMGpF?=
 =?utf-8?B?TUxPWEhZTEw5Uk95MGRiMWx2SGQrT3hjeHlWWDA0SXVUL3VzTXJjVXZnNHB0?=
 =?utf-8?B?M1V3bm1reWdvVWFUMDJ3UmR1dTBpeHFsNTdXQlZTK0lCQndrUHZIalgyanBs?=
 =?utf-8?B?VVNvVGhybVZ4dzZQZFB3bmloMTNabUtSUGkwOVB3MWhnSlNsSmF3TmI0cG5H?=
 =?utf-8?B?TUp0aThIdGI4bWNucFRnOWtjVVk4VlFTaVlicUVKZGFIUGRJa1BwU3R2NWlH?=
 =?utf-8?B?VGdmRzhLb0U1QU1UR2FERnRVRjg3L21zN0NPTEp6Q2s1cFdpaDNkbnlOeEZy?=
 =?utf-8?B?NDJxK3NIUk9vOGl5N2VXWU9yVWVIS3VEbXdQQndxcWtiMXB6UnRpQmE5ZXp4?=
 =?utf-8?B?Z2IxbzFnRG9VVjlTSUVUVk1tRGNYVVZGMXZZL3Y1QkRiT2dWbmdneHFyT3JL?=
 =?utf-8?B?bmd0b3pWZWNPRER0aitjWHlpYmJRbmxhRklzRW81UTRMZkxqcTRQcVRyamZw?=
 =?utf-8?B?UWVFNzhqZDFuZkxBNFJyclh3czcwbUlUU01BZVpOUlg4cDk1d0dNN2JYWUhC?=
 =?utf-8?B?SFBrTmNlc1BxZjJVL3RwU0picHpBZ0I0ZUVPWVBwczAwaDI0TWdoMlNTN3JV?=
 =?utf-8?B?Ny84aW5IQW1FMVNmK09OL0hsT1VaTk5tdU52cXg4cVdma1ZYUmFVczZZNk1U?=
 =?utf-8?B?QWJlS1cxNFdBWjJuazlaekNKM09lUkJhMjBub1VsNFFiT1lsMG1YUGVBSlI0?=
 =?utf-8?B?ZWdlb0RDZGk0MHYvTVMxYkdGTnVocVhodHNyS2pwdWQ1ZkVPdzhRdVk5RkJG?=
 =?utf-8?B?NWx1cXVYZHJGbElYK0FYV3hTWnBGKzhPZlVwbDhWZjVKMWRLK2hRMFpMTzFG?=
 =?utf-8?B?WERBMXJGUmxydXlWYk1LKzhSV1dua3A4c2VOV0FYd0VjNWg3OTlyRjF4SExM?=
 =?utf-8?B?aFg5aHNXdWxMUUhnQnRKeFBTUXpRU2VmYXVVMTFFdHJYZ0QvbW9wWGpzd1di?=
 =?utf-8?B?b0t2ZG9wQmNZUFN5Wnp3Zit2OVZ6cVQzYWI3dytMck54RlBobXVQaUVOOWI5?=
 =?utf-8?Q?JClRQcfXnKLpdpVew5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79484c6e-0550-4e0f-b3aa-08de962539f4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:46:16.6354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j8RSnBVMeTrKVm2rn5obtWgXClyj4K2YoS+ByckILmeeMAMRQsODsPp8G5Rah2MS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7123
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:dkim,amd.com:email,amd.com:mid,intel.com:email,ffwll.ch:email];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 945553C942D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 01:34, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The old display vs. GPU reset deadlock is back more or less.
> The old (working) solution to the problem was originally
> introduced in commit 9db529aac938 ("drm/i915: More surgically
> unbreak the modeset vs reset deadlock"), but it got nuked with
> commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces
> instead of i915_sw_fence").
> 
> Apparently no one looked hard enough to see that things didn't
> work quite properly anymore. What is still saving us for the most
> part is that we have a timeout on the fence wait
> (CONFIG_DRM_I915_FENCE_TIMEOUT, 10 seconds by default). But
> people are perhaps trying to get rid of that so we may need
> another solution, and 10 seconds is a bit slow.

Yeah agree that approach with the timeout is usually a big no no.

> Re-solve the problem yet again with a custom dma-fence that gets
> signaled just prior to a GPU reset, and have the atomic commit wait
> for either that or the real fence using dma_fence_wait_any_timeout().

Hui? I don't fully understand what the source of the problem is, but of hand that approach of solving it doesn't sound like a good idea either.

> Whichever signals first will let the commit proceed. We create a new
> "reset fence" whenever someone needs one, and keep it until the next
> GPU reset has completed. After that the next guy will again get a
> fresh unsignaled "reset fence".

And that sounds even worse. A dma_fence which waits for the next GPU reset without triggering it itself would be an indefinite dma_fence which is not allowed.

I think something is missing in my picture how that is supposed to work.

Thanks,
Christian.

> 
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 34 +++++---
>  .../gpu/drm/i915/display/intel_display_core.h |  6 ++
>  .../drm/i915/display/intel_display_driver.c   |  5 ++
>  .../drm/i915/display/intel_display_reset.c    | 77 +++++++++++++++++++
>  .../drm/i915/display/intel_display_reset.h    |  4 +
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  6 files changed, 117 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 58a654ca0d20..83ccf13c4b16 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -72,6 +72,7 @@
>  #include "intel_display_driver.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_reset.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> @@ -7149,22 +7150,35 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  
>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>  {
> -	struct drm_plane *plane;
> +	struct intel_display *display = to_intel_display(intel_state);
>  	struct drm_plane_state *new_plane_state;
> -	long ret;
> +	struct dma_fence *reset_fence;
> +	struct drm_plane *plane;
>  	int i;
>  
> +	reset_fence = intel_display_reset_fence_get(display);
> +
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
> -		if (new_plane_state->fence) {
> -			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
> -						     i915_fence_timeout());
> -			if (ret <= 0)
> -				break;
> +		struct dma_fence *fences[2] = {
> +			[0] = new_plane_state->fence,
> +			[1] = reset_fence,
> +		};
> +		long ret;
>  
> -			dma_fence_put(new_plane_state->fence);
> -			new_plane_state->fence = NULL;
> -		}
> +		if (!new_plane_state->fence)
> +			continue;
> +
> +		ret = dma_fence_wait_any_timeout(fences, reset_fence ? 2 : 1, false,
> +						 i915_fence_timeout(), NULL);
> +		if (ret <= 0)
> +			break;
> +
> +		dma_fence_put(new_plane_state->fence);
> +		new_plane_state->fence = NULL;
>  	}
> +
> +	if (reset_fence)
> +		dma_fence_put(reset_fence);
>  }
>  
>  static void intel_atomic_dsb_wait_commit(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 9e77003addd0..6687b658c51d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -556,6 +556,12 @@ struct intel_display {
>  		unsigned long mask;
>  	} quirks;
>  
> +	struct {
> +		/* protects reset.fence */
> +		struct mutex mutex;
> +		struct dma_fence *fence;
> +	} reset;
> +
>  	struct {
>  		/* restore state for suspend/resume and display reset */
>  		struct drm_atomic_state *modeset_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 23bfecc983e8..fcd31722c731 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -34,6 +34,7 @@
>  #include "intel_display_driver.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_power.h"
> +#include "intel_display_reset.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_display_wa.h"
> @@ -257,6 +258,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>  
>  	intel_mode_config_init(display);
>  
> +	intel_display_reset_fence_init(display);
> +
>  	ret = intel_cdclk_init(display);
>  	if (ret)
>  		goto cleanup_wq_unordered;
> @@ -584,6 +587,8 @@ void intel_display_driver_remove(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	intel_display_reset_fence_discard(display);
> +
>  	flush_workqueue(display->wq.flip);
>  	flush_workqueue(display->wq.modeset);
>  	flush_workqueue(display->wq.cleanup);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index ca15dc18ef0f..80dd2ea8a0c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> +#include <linux/dma-fence.h>
> +
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_print.h>
>  
> @@ -16,6 +18,72 @@
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
>  
> +static const char *intel_display_reset_fence_get_driver_name(struct dma_fence *fence)
> +{
> +	return "intel_display";
> +}
> +
> +static const char *intel_display_reset_fence_get_timeline_name(struct dma_fence *fence)
> +{
> +	return "reset";
> +}
> +
> +static const struct dma_fence_ops intel_display_reset_fence_ops = {
> +	.get_driver_name = intel_display_reset_fence_get_driver_name,
> +	.get_timeline_name = intel_display_reset_fence_get_timeline_name,
> +};
> +
> +static void intel_display_reset_create(struct intel_display *display)
> +{
> +	struct dma_fence *fence;
> +
> +	fence = kzalloc_obj(*fence);
> +	if (!fence)
> +		return;
> +
> +	dma_fence_init(fence, &intel_display_reset_fence_ops, NULL, 0, 0);
> +
> +	display->reset.fence = fence;
> +}
> +
> +struct dma_fence *intel_display_reset_fence_get(struct intel_display *display)
> +{
> +	struct dma_fence *fence;
> +
> +	mutex_lock(&display->reset.mutex);
> +
> +	if (!display->reset.fence)
> +		intel_display_reset_create(display);
> +
> +	fence = display->reset.fence;
> +	if (fence)
> +		dma_fence_get(fence);
> +
> +	mutex_unlock(&display->reset.mutex);
> +
> +	return fence;
> +}
> +
> +void intel_display_reset_fence_discard(struct intel_display *display)
> +{
> +	struct dma_fence *fence;
> +
> +	mutex_lock(&display->reset.mutex);
> +
> +	fence = display->reset.fence;
> +	if (fence)
> +		dma_fence_put(fence);
> +
> +	display->reset.fence = NULL;
> +
> +	mutex_unlock(&display->reset.mutex);
> +}
> +
> +void intel_display_reset_fence_init(struct intel_display *display)
> +{
> +	mutex_init(&display->reset.mutex);
> +}
> +
>  bool intel_display_reset_supported(struct intel_display *display)
>  {
>  	return HAS_DISPLAY(display);
> @@ -31,8 +99,15 @@ void intel_display_reset_prepare(struct intel_display *display)
>  {
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
> +	struct dma_fence *reset_fence;
>  	int ret;
>  
> +	reset_fence = intel_display_reset_fence_get(display);
> +	if (reset_fence) {
> +		dma_fence_signal(reset_fence);
> +		dma_fence_put(reset_fence);
> +	}
> +
>  	/*
>  	 * Need mode_config.mutex so that we don't
>  	 * trample ongoing ->detect() and whatnot.
> @@ -110,6 +185,8 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
>  
>  	drm_atomic_state_put(state);
>  unlock:
> +	intel_display_reset_fence_discard(display);
> +
>  	drm_modeset_drop_locks(ctx);
>  	drm_modeset_acquire_fini(ctx);
>  	mutex_unlock(&display->drm->mode_config.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index a8aa7729d33f..c36a075c6b4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -10,6 +10,10 @@
>  
>  struct intel_display;
>  
> +struct dma_fence *intel_display_reset_fence_get(struct intel_display *display);
> +void intel_display_reset_fence_discard(struct intel_display *display);
> +void intel_display_reset_fence_init(struct intel_display *display);
> +
>  bool intel_display_reset_supported(struct intel_display *display);
>  bool intel_display_reset_test(struct intel_display *display);
>  void intel_display_reset_prepare(struct intel_display *display);
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 110fef511fe2..1a85dfe457f0 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_display_power.o \
>  	i915-display/intel_display_power_map.o \
>  	i915-display/intel_display_power_well.o \
> +	i915-display/intel_display_reset.o \
>  	i915-display/intel_display_rpm.o \
>  	i915-display/intel_display_rps.o \
>  	i915-display/intel_display_trace.o \

