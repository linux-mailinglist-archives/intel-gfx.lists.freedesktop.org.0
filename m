Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DrnE/eB12knPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:39:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B06803C93A3
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425AE10E77D;
	Thu,  9 Apr 2026 10:39:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="C1LcmeFZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011042.outbound.protection.outlook.com
 [40.93.194.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B3010E77D;
 Thu,  9 Apr 2026 10:39:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VaObouSx71ipj79AiUxlBUTI7qhv3e73gnZh163d+kMErv9jwkBKbr0riOCoCwRxz//euMDgwC5mJePOfjHJni19CN3Jk6v4knb1iF19vm2UHDBKZwoNlp4yqgP6wi31mVaGkmNqbUc3dRkqPSowja3Chs/Pri/ELRe29HNr2gdy9zXVHXYJeW1whr0mEmcT1kB0vcG0GOz7O7zHteoPG7GstlbVjQhU01BtmETgYaEGE77a2Ch1UPFdt8e04UFdqrKVwi+mt/OB1bVz4ruQ6GNGqRx3TpkSIPt2qkgbYkB1jPXnTZIQfJ3BbOSFDEo/A6BQpK0+uR0AKQHAmGm60A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o1uUXCL0R3GZKjQDOxd4RjDnww/W+05hBlMZA+nTA1c=;
 b=TYIufcCxDkgHmu2nySfUBL8QtFyxL9rxBGiZ6fTIZ8ywNPWx/y+YfP5ULxAVTpeNmWvYvQkcAkc4IA8PQeeV70IQfwm3kzlKPEkJL1akh7V1WYWlupKuk0BkCV05L8SEBFovHFsEPVwLWptR8zWAko7SrxlhVdt33W0n3io+pdsWbN0HTi4maElyBvyWuT6CGS7zEYbnmIWhbzB4cOM0heiq8l23FS90DkUYlNFzpv63elhXRUdu2ZLffVdpNmksLZAH0kJs/wwg+wjH+dt3vB4LN8RoC7KR5ckD3K2rhnmCnnHESnla/681YcxJoDMxm9SRbxwjC7LHbgKDOCaQiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o1uUXCL0R3GZKjQDOxd4RjDnww/W+05hBlMZA+nTA1c=;
 b=C1LcmeFZ+yRIERJJpkfOTnzG/hvAw4XmrmQ2pI5RNu81sbLvWt7U3rvwDOcqUpzl5nNqeBIlXDjYYWuny4hb2PGLBUtbAXrRDb5iwfEVymCOK3uXWiVfuG5TgMuhSrDZHBRXlYQKc+L4P6F8qsawYlgtc06UHscw8nec3d6NHWw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DSWPR12MB999154.namprd12.prod.outlook.com (2603:10b6:8:36e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 9 Apr
 2026 10:39:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 10:39:45 +0000
Message-ID: <89312f9c-85e8-4894-b25e-8d75177bd821@amd.com>
Date: Thu, 9 Apr 2026 12:39:41 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dma-buf: Remove old lies about
 dma_fence_wait_any_timeout() not accepting some fences
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Simona Vetter <simona.vetter@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260408233458.22666-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0783.namprd03.prod.outlook.com
 (2603:10b6:408:13f::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DSWPR12MB999154:EE_
X-MS-Office365-Filtering-Correlation-Id: e4d28558-b331-4d9f-a277-08de96245125
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 0wT3ybq8Dw8TA0UiancLqUqORT34XG06UobBwfTZ2j5heCNcSwHxVyZ4SufNlJWhcUlLKjzEmMbv/KlzSRsIceWk5RhB+df23gBtARtp0BLfpZrWVlamMe4Ce4P4aMKJfugGtJ68ciP3WrTNFqKXkmz52WthaxqRALNoei/Rh2ZXW3W6W6zo1WV5qC4zbSUqsZ/OMxyuNLaQwmWiHdCpLYNanHFTHzLvwY7ui91K/pDDgRuZXZsIEoOrmc6LFs1I6eR79dvSDGfXQLbSthQWN5S2jQAP1lDK4jnEEdDgVVNrNRkzBQUtxyjzl7yFz7J3LVrhu9cdw5g69svvd+h/PL4O+hKGf/T2XRrg9gdePZfiL2ovLdQDtOy46/AiwWbz8P4FZQwOMOnHyPmwt+c8rHmZEdy68CFctWBREglnKM+yG4b6oNj3NWmHDsqtyH8Hl4/LGXvQYwSTl+BVBitzTN88XRXwshHbXErO1C0EIMaNOmBHgrcLUnaxdYZGx+p++sZUnm/WnKz0Zwdy8U3geSex5Z4VchWqRlVs5FXGDwxT/ewT1mF233/axOGepoU3Pz/SC5V7yIGV4ZwrPfdJB4L2gydf6SqlNxBbJvzgsDAIELhCmKZfVANU8e2eV4AziZ9rj91iprNVWGiK8ikMr8xCGD5PHm7C9MlsyPxvxxILYZaWtSoC5Fe2bgO47yCH0IRXOGm5ikFHtYfaurDtGy4/uGepQ3Jz0zeS0UJs58I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXZSR1Z3Z3M3S0RXQktGVXBLZklWUDVNeUFWTkJGNE9idEZya1VGSVhvVlBL?=
 =?utf-8?B?MTFIektFbnJIRGFmQ2NTWTB5ZnVrb1dyYU12NU9iVy80dHQ0aG42YXl5STBL?=
 =?utf-8?B?aHFGRmZvWm5FUVhqM0xDcVBFeWRFamtIeEVYSFNwQkM2MnZPcHdBNy9Bdnlz?=
 =?utf-8?B?Vnl2aDQ5Q2JNQ1NLU1JHYXIwNVp3V1lVNVhFZnhHMEZzN1VLY1prcjFKRm5i?=
 =?utf-8?B?NkRxYTErMGxTbDAyMm90SmVFM1RoVFRRZWpTdlV2elhub3MrTWRGMVJTYTFh?=
 =?utf-8?B?Ym9BZkR1cUdJOGkrcFBNYldzVXU1R2M1bGMwNDNFM2N3NnVNdDJWazlwTnRF?=
 =?utf-8?B?SW5hRVlhUEpFQ1JnM3prNEpRcHpJNmVsZk5yRlNzeThmcEJqKzFRbWE1Vmoy?=
 =?utf-8?B?VmtPL0psc3A4dkN1TDlZNTdLTGIzVU90YWtvY1pLbHMxclVNZFRpWFhBS24w?=
 =?utf-8?B?VUVybFdUaHFYaEkwOFcxblBvLzdzaUZiZ25GcXA1a3c5Q2NDWnBXZ1RqbURs?=
 =?utf-8?B?Q2s1K0FyL0JCNTQxY0JaV0pMUGoyOVRNWDBVUkVaamVESTVLbjNXTi90TzJ0?=
 =?utf-8?B?WDVOWHYwV0JId3dwZlBSWkVKUXI5Mk5paVgraTBFaTZ6dVYrWndzZjVCNXYz?=
 =?utf-8?B?V3laNWcxQ3EwajY5Y05ZN1FGL2hCWVdzNXZmQ3UrdERycnNvK084N2dRRmNW?=
 =?utf-8?B?bzhmWHVjRGNxVjhzSGRJRGhSUlovUGVNREtaK1ZmUlQwTWJpVzQ5MHNldksw?=
 =?utf-8?B?YWFTdmxPL2lXYWExd3A4OTlHTnBJNVZBMWlYaXNMQnB2SUswNzNLSWVNVmZr?=
 =?utf-8?B?VGhqTVFLMHdJWGNkb2taZ2h1OTdoazYrQlZ3R2hzL3BkQ3hwbjVmaXJxaWw1?=
 =?utf-8?B?NlVtSk93Ni9nVWJRWEJPSmhPSTBnb1ZSTVBFL0p6QVBnbHp5KzhkSGRCTjQ3?=
 =?utf-8?B?VVZlcmF4Y0V3NjIvT0h0VVo4NERhczhYRndRaVRabTh1a2ZQSHlzVFBtT0tT?=
 =?utf-8?B?TWNyaTd3VjhYRFJtK2VLTkpyWW5CNmMzS0wvNWRpK1NYRWlXQU5WSHAyNnV5?=
 =?utf-8?B?WnN0d2E3a0ROcGZYTld0SVNlYVFIa0VJUHB1d0pjdUVoWERab2FvSEtSOCsy?=
 =?utf-8?B?NFFYZzIrbjFWTXVQMENRbUU0M1pvSjBSRi95Z1B2WWg3b2svVzRYeEQ0NDUy?=
 =?utf-8?B?ZGwzQ0VMMUVLSmlpSlBFL3UvVWVNeE5hVUEvaVk5M0VZaTVWdGJuNXExczFS?=
 =?utf-8?B?SHlxTHc2RVRXczZ4Z2pXcXBzdHNuR2xSTkZKRWJ1QmRGbThGVGNUM2ppdk55?=
 =?utf-8?B?amVWMWd5K21vcCtuRFZIaDB5dVlGV2t2cmI0bnQvTGsvWVJWUGMycmRkSS96?=
 =?utf-8?B?NlNJSFF6OVdOWjNEb3dGUDFjOUNaSFJOV3RVN0t3NUlqOGtjZVFMc2YvMmhq?=
 =?utf-8?B?T1AvOU9sYjNpVUR1M3d5QVhuSHRuK2xLeUdXbUV2ZGNtYmJneFBTamRwYmlF?=
 =?utf-8?B?bVRyNU8vRUQ1cG4wRk9FdmhmZVBFOWFyNDR6K00wZGxVL0UvdEdkY3puNVlu?=
 =?utf-8?B?MlVkaW1jT25sWC9ZbGoyVDY5M3J2MEQrM0VpZjNYQm5ESWRaV29HUkk3TlVa?=
 =?utf-8?B?Nk1QcFd6SGZjWUI0TUlTT0FOMCt4dXd6TnUzSkFyWUJ1eXFHRXJBNk9pLzNu?=
 =?utf-8?B?K2VDV21MNU5BSHd4SFYySkZsWWlpeUQ0ckNST01YRUl3WkJhcW5od1UvTVdo?=
 =?utf-8?B?UVNiWUJsUEc2TTByU2FPNVNkN0dQczE3Wjh2alR4dFhnTFdVUkZvODFyL0xO?=
 =?utf-8?B?ZDB6OHJYRlFkWXJuckxNcmMwdUxwZVNSdVgyR0g1TWxrYXJXbWE4akZLRmJM?=
 =?utf-8?B?WllGSU1sLzgwOTJCUWtPSnpOZFkwTGJjY1NaMVhjcnRsMEJTZTA2WE9QWXJJ?=
 =?utf-8?B?d3ZsWDhFOVhBZjIya0VTU2FHL2o2M0RUQzlCbDl1Nm9EV0tma0crOGlEWDRl?=
 =?utf-8?B?b2FkYUd6QmxTd1RQREQ5ZEptQ1h6eWljanNHQmhzcFUrUHdVSk1NZ1JweU91?=
 =?utf-8?B?cDRSbWV2UTN2dFdrQm5TUnpIRTIxTll1REdJY2tJSlhyM1E5bzVMcnNOd21k?=
 =?utf-8?B?RUx1VVFQaTRaOW5GY2lnc0dTRDg3aHpvVWZsSHE3YTErZ00rdlZ3ZlhSZE9l?=
 =?utf-8?B?SjA0ejI4UXlBOGtha1d0THJWK1VMazIxY0FMa2lqeHBTLzRpNTU2SzJvVFpC?=
 =?utf-8?B?amdSenpsM29WQUFIbFJYSmQzUTdiNHNxbkRQNWZ3THFtZVVWU3lia1J4UW9s?=
 =?utf-8?Q?+s9TY8Gcduj7qUkM8/?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4d28558-b331-4d9f-a277-08de96245125
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:39:45.9318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LH7XpfBAqNWeHqQU4Xcb8fo9OgRjBdDnttvq7GXWIIY8K/KWXB3RA0P0SPEo4604
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR12MB999154
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:dkim,amd.com:email,amd.com:mid,intel.com:email,ffwll.ch:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: B06803C93A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 01:34, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> commit 796422f227ee ("dma-fence: Allow wait_any_timeout for all
> fences") made dma_fence_wait_any_timeout() accept any fence, even
> one with a custom .wait() implementation. Update the docs to match.
> 
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Yeah that is indeed outdated.

Reviewed-by: Christian König <christian.koenig@amd.com>

> ---
>  drivers/dma-buf/dma-fence.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 1826ba73094c..2c623c0221e2 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -884,9 +884,8 @@ dma_fence_test_signaled_any(struct dma_fence **fences, uint32_t count,
>   * @idx: used to store the first signaled fence index, meaningful only on
>   *	positive return
>   *
> - * Returns -EINVAL on custom fence wait implementation, -ERESTARTSYS if
> - * interrupted, 0 if the wait timed out, or the remaining timeout in jiffies
> - * on success.
> + * Returns -ERESTARTSYS if interrupted, 0 if the wait timed out,
> + * or the remaining timeout in jiffies on success.
>   *
>   * Synchronous waits for the first fence in the array to be signaled. The
>   * caller needs to hold a reference to all fences in the array, otherwise a

