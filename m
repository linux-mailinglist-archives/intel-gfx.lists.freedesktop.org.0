Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEWfE0s3qWlk3AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 08:56:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A435820D044
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 08:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F76610E21B;
	Thu,  5 Mar 2026 07:56:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="Gv8USfL3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010021.outbound.protection.outlook.com [52.101.56.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3513F10E21B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2026 07:56:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rcqVRrGd0X2ExdgFQwL0On1942QMcNBIANLCJ3zxi56TIlyoO9ByqZuXWySF8CsDzIy0bcvHHcB2dNejDh+9XaRtIy29lRFFW6qnZyMpTGwqcykvd3B0HuO+JzFUxdMPZOA+yghE6vjXzCfWY0E0rpW7RFXnz/Uxq86BHEr+ND5DMyYXPJuoWk0J574uKQbi+ZvQWg0pNpc0jOBbBKcbnm3Nz3bBbTyp9VvFJm95UPBQjvSIxR3yhTYJ5j2ppV80tD7XSL1DyG8LswulogFXbsjcdzelCkDRzyWYY65+jDZr5LZcfUbOBgLHwXXzXZCaJcFP420M25retrha3SPsUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cbmt7R2NjSZRoYjasOgzRJeFa43UG+UzuhuuYN2yuKg=;
 b=EQjOH+BtrG5pipZ6E2UWX0flKOxrgDIE7oNCosi3gd0nVTwiNe0qk5UtB1hPSeS2oYQTS/lwIQBx8pH2cY9p6z/iz2YfZRYjo0D/EjEAEsJKWaOzjls9W+fjaAWdxTEyYGRuQfABv9PelEoB7aDiQqPuEUjLZbzz/9aK3bjP+nn2ZpFETkXIxoqQHlX2aFdNF5jcV/S7vv/dAn0AvR3lhK4GfxxQqMhq5cOZQNa2Fjco+v7Puw/atszB+VntgP2VdYCJd+RvqmDDSmF6O+/BXocCX7DLvoKZMVI3CBCh9nnHmZpzXZVj6h16ouZr/viNEKxuDmSm7Y4/hekgEX/0tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cbmt7R2NjSZRoYjasOgzRJeFa43UG+UzuhuuYN2yuKg=;
 b=Gv8USfL3QOvw7HmpH6BaSOwjorzpQ4HKKTIHIJ6fUxYOBDWm3rTV4ZxO7o2Pydg6y7T2EPFr9+5mJN9e+HIG20vPGiiCCOnvlHY0ftK6WytMcCQ4pSKDI0Ch7dEilnI+kB1vYuPOvpCEM15xFQWDc/FAyIBBMcKj2AB+B0VfGHo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7585.namprd12.prod.outlook.com (2603:10b6:930:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 07:56:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 07:56:52 +0000
Message-ID: <126e0766-1796-4b91-bd01-ce8df6e498bd@amd.com>
Date: Thu, 5 Mar 2026 08:56:48 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com
References: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
 <cda3a318-fed1-4779-9c83-b0d8a5178775@amd.com>
 <70936dccd9ed65e8175f6cb1a0ba1864d82d5a3a@intel.com>
 <DGU586L96FWH.2356290WD8Q67@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <DGU586L96FWH.2356290WD8Q67@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0339.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ea::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: 42cc1926-cae9-47a4-f5b6-08de7a8cc2f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: +4xpvBP/jsne/tzE4s+ggDx4opiSaHwYbDFhHjokQoTNU1QgDSJudGam1DvtQX6ROWxfx3gz7VViZOhNUEWLi6OCKkO7qmBK6NHRdpbhCo8bd0qS05jD1bg0ZTr8w8iJMYKzBkRd+/62bLpt1jy+WlZdi/BX1GKSl59Bwyeo18cHz9gaDqaTXi1UBV4zpkI3U9KsRgiB1pISNRgcCnC8tUkVBLfmyqNNAmt2rbV78lbuvTxdFjAoHb86dM17JgdVpyw5DiQbS0CE+qTXg0KhX01nCj7FpUjuyL5C2fJ3prJOqOjDORGtnZrdjat/qlgwSqrYocVOUn/e/Mvb+FPF30RLTEX2bHIN6AvEs3DdC9yn7ba4p87BP6aUdLxLa4ZSXLIy3vcRCVLs3JQXJaqAGdkWeyFUCYfQDfH3bY/ccqjD6Wtd0FsmxbPppPcJ9Qx7mvEiz2ITiHCjppSY8WqNXqr8s+cPnzaosY9AlNiIS2+9iFmNISYG2UQjiYcaA5wylhBmOSRqxB8dLsxZj8Zt+14T6Q69ZMRHOdKgrACj9azGLxuBjTRq95yv3MncwH6Wtv/xsYFewVXSZ/Ye3ahV6cRkMykqSTblykMW7jtEbhTYmm0MjbJg0DoF+iOMAxiIu9vlAar9JKGQ7Kq3Qws/KJbn2K7dX5I+GK5mVwrlGuXGot1Mr1amuDyytaH4GJ9C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2JRMG5leG9oWHM1MHlvOWRGeWZOdm56TlVnRG9wT2hJWjRYSmtqU1NvS1RR?=
 =?utf-8?B?dVRFZ2U3a3k4ZFVlL0dBRFVKN2pYa3VLa2RGSWVyK1ovRGhPREl4dXB0ZUY2?=
 =?utf-8?B?TjlNNXVjZW5ncnNhYWVsa1JUZGZZN1d5UlNqUmZMZUdxd1BNR1E2TmpPNmZj?=
 =?utf-8?B?V25IOUl4WXpuNDN3bFhjTjROOFR2MUJjL2NOSEcvR3B3c04rUG14dXZjQ2Fo?=
 =?utf-8?B?ckpuaGtxcEk3SFZML09MeU53RGZyMDNrZTNkNTZ5Y04xZW8zVVJucG5zSmV1?=
 =?utf-8?B?bG5GL2huR3J5WHJZcE5SbllOdFJVdVJmMkJLcmVXb3FHRW9hVWt2dDV1OTFh?=
 =?utf-8?B?L3NyTlN4YkViZ3JFNkZnRkVaV0Z3YzdPYWxFRmhDUk1lNThKbU94OVAxRUxL?=
 =?utf-8?B?bXkxM1Vuc0J6QzFDUlFlN0hnWHJmU3luN2VwcU0wandIbytPazltQXp4bTNp?=
 =?utf-8?B?TnNYQW5RckxTQmlvMTlGbGY0a1V5SEt2SU5IbFRJSUVmcFVmZllacVFLV0pa?=
 =?utf-8?B?bHFRbVpKV0EwM0w2c3BVbTNJOHBQdFl3Q282Ukd4RzBtV3NvcVpYd08waXNI?=
 =?utf-8?B?QS82MjN5eE51dWRjTnNyRUcxZTBHcWltT2JxS3RpK3hEazY0V1M3VzRZWER0?=
 =?utf-8?B?MFhQMm9JY1FwYno5MDBNU1diRWtQOHdVcDdKLy9lTEg3aFVXcHA1V0xQNXB2?=
 =?utf-8?B?Tm1halBCWWsyRTduNzZqbU1QRndPTlp2Vkh2TGFuR01oekx3TTNTRnBaOUVW?=
 =?utf-8?B?bEJsb3YyQkhCNkl2aC9WMUMxbDBFNWlIZlNjVWtVQmJtWFJYQm9SUVBLdnlx?=
 =?utf-8?B?QTlHSG9URWhNZFUzQXQ1MXRIWlBxQndEbHEyY3doMFNNaE4xbHg0bjFHUEN4?=
 =?utf-8?B?YU1NMkJVK3BUcWFod3BQWDNoVmE5anYwMEQwcnQ3STk4VC9ubFA0VDZRZXhS?=
 =?utf-8?B?Z2lEZVhCaUVZV0NIZzV6b0VIRnIzejJuQ04ySHlyREJGZVVJVVBsNHAyYkUw?=
 =?utf-8?B?eG5DUlF5UUg2M1YwRzF1VnNmQUw5TkVVUEhnWDJtbzVaaUNPSXp4UHlOVEFJ?=
 =?utf-8?B?R0NDNVBwdGlzMTJaUGZGcmxLL2FORzNTZUdyZjZyZG1jeEUrVG4vN2k4V2NS?=
 =?utf-8?B?M0dBUTlQQVV3UzlEZloyTkZrYTFTSmdzWmF0VUZDbDZSVkRaVStQZGRiWkNw?=
 =?utf-8?B?bEthcE1IS1dCTnZiZUczNkowOUJjRHhBSGQzVDNUaWJDVGNXL2VUSzV0K01S?=
 =?utf-8?B?OC92M2tndVVuSHk0Zkllb0wreW9yemlVcEZkY0JrTnIyMSttcHdtalI1SWkx?=
 =?utf-8?B?MVZkNFJTNUVmTnJMMGdNWVpGNTFLQnJzUERtU0UrbGxWaWRHc3Y1V29MR0g5?=
 =?utf-8?B?ZlppTGgzVkRCTWxZSUxkT1hxOEk1TjZ4L0kwR0hWZ1JFVDg1K1Q0Q24vb3ZV?=
 =?utf-8?B?WVVpR1l2a1czZW9QRDlHcGd1SDJXTmVqRng4Qm1pTkdVeGJ2MmoxWlh0Y0lz?=
 =?utf-8?B?RkVVNkUzcnd4WGRnYnllVkZkdDJsaVRsNjRnbkt4RmE5cmp0SzM4U0ZFWTcz?=
 =?utf-8?B?ZmgzVUM3RjVGcVBXcGFLcGYwYjhEc2hHQ2dYeEUyZ3o0dXFXcG8wcU84MHBy?=
 =?utf-8?B?V1E3TDR3QXE2RmxqbWhMSGtBWG95bFUxTFY4Rm05TGxxNDMra216RnF4UXox?=
 =?utf-8?B?b015VUJ4ZEFRTWZ0eDBSeE1xTllGN0s1OEZPWlZCdTJQTkc0ZVAyMkh5cmM2?=
 =?utf-8?B?RWVrRDBqT2VtVlBWZi91NEMwVDJlM29QRUxWOXJkQUlhUElNS1E3Y2FsMzBj?=
 =?utf-8?B?MC9iaWt1OWJ3b3AvVS8xNkFZM1NDcXFoNkIwU1d4OFJZK0dxQ0Fmb29IRVds?=
 =?utf-8?B?RHo2VWhOb3d3ZlVVSUZ2N0FTT0srS0syRUVOYkl3cTVvMUw3TUVJUi9ETzk1?=
 =?utf-8?B?eHEvVHB0Nmg4bkV2Y3d0QmI4NTd0Y0xIN0hNM3U0RTIwVEtWMHU5S2N4NlZP?=
 =?utf-8?B?RytlcWE5SzFqQm5Yb1lDaHV3bHMwb2NFS2t3ZDNxQXZtcldjWmlQbFpPMU05?=
 =?utf-8?B?S3h3dVlWbFdTT1A5d0R0VmQ1QnJQSE5yb2ZOekU3WEZtZXBGRFEvQXNQUVNh?=
 =?utf-8?B?YmxRdm94d09kMjZCWFJtOW96QWJhSGlQVTdXNFdDeGpIZE5VekFJUVZhRDFa?=
 =?utf-8?B?bHdqL0MwUllHNkU2aUx2bU53VmRDR0lQbmx0K1BwYmJ3eFZvbmlXY2o2MEV0?=
 =?utf-8?B?ZGJMOTJmdklHaGFDa0RFM1kvVDZobTcxRVZKSUQrN3dTcCthNjY2Mkx4ekFJ?=
 =?utf-8?Q?69YQBIZ4B/QF5uA86F?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42cc1926-cae9-47a4-f5b6-08de7a8cc2f3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 07:56:51.9660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3svTPTyc/44Wy17kpEQWZlIZqxfVcgJ3W/Zn8M1mArTBZyPyCeanxutc12ptyjcI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7585
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
X-Rspamd-Queue-Id: A435820D044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:jani.nikula@linux.intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

On 3/4/26 17:37, Sebastian Brzezinka wrote:
> On Wed Mar 4, 2026 at 5:28 PM CET, Jani Nikula wrote:
>> On Tue, 03 Mar 2026, Christian König <christian.koenig@amd.com> wrote:
>>> On 3/3/26 13:26, Sebastian Brzezinka wrote:
>>>> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
>>>> fence->ops may be set to NULL via RCU when a fence signals and has no
>>>> release/wait ops. ttm_bo_flush_all_fences() was not updated to handle
>>>> this and directly dereferences fence->ops->signaled, leading to a NULL
>>>> pointer dereference crash:
>>>>
>>>> ```
>>>> BUG: kernel NULL pointer dereference, address: 0000000000000018
>>>> RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
>>>> ```
>>>>
>>>> Since dma_fence_enable_sw_signaling() already handles the signaled case
>>>> internally (it checks DMA_FENCE_FLAG_SIGNALED_BIT before doing anything),
>>>> the ops->signaled pre-check is redundant. Simply remove it and call
>>>> dma_fence_enable_sw_signaling() unconditionally for each fence.
>>>>
>>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
>>>> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
>>>> Cc: Christian König <christian.koenig@amd.com>
>>>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>>>
>>> Reviewed-by: Christian König <christian.koenig@amd.com>
>>>
>>> Going to push that to drm-misc-next now.
>>
>> Christian, did you forget to push or is there still something missing
>> here?

AMDs mail servers currently mangle all mails to HTML mails (again!).

So I tried to pick this one up from the dri-devel patchwork just to find that dri-devel was never CCed. But I couldn't find time to complain about that yesterday.

I've just re-created the patch by copy&paste and pushed it to drm-misc-next.

>>
>> Sebastian, for future reference, drm/ttm patches need to be sent to the
>> dri-devel mailing list. I bounced the patch there now. See MAINTAINERS
>> and/or use scripts/get_maintainer.pl to see where you need to send the
>> patches. The intel-gfx list is sufficient for i915 changes only.

+1

Regards,
Christian.

>>
>> BR,
>> Jani.
> Thanks for the guidance and for bouncing the patch to the correct list.
> 

