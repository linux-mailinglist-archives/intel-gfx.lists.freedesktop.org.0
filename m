Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E/0JGDS3GmcWQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 13:24:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083E33EB3DD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 13:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E21510E407;
	Mon, 13 Apr 2026 11:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="lbKdDKlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011043.outbound.protection.outlook.com
 [40.93.194.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4303710E405;
 Mon, 13 Apr 2026 11:24:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KnGI4TygzmZQUpVDunEaaMMg8wgUz2SvSCWn0IFBcuoC5Ld21DsjPz9d3vnqBofKjZeeWFP+zmTTLY/E2GAAXmsgCxhekuabm0QF69TIV4KrGEhoYMmxrWQm41U7ozFLXFIkoUmLBejHk3SFYiZo2xvVzVYGDikx1OVQGl+fMgZwTUgssGyRH3tGTw5f8h4arj3oIw/B+Te13EGZDiOrMZWpfj5oVPRA75YB7gZYTZwLr1166yILXuBnBGphpgRzCbYZLBXIQARHxHDMnOtxf+DcBFm5TCh9maZeIcGt4gaznjN/G25lXobfmXtO4/BUWsZbcRJl8DHlFgfEy2rn1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cxXc3dhM4kXqEMYHVZ50tlN7x/BMzw15Iuj6GqQfXtw=;
 b=VXXYzI49v98QTjpas1V8PM+yhyms93C+RxYhFM9BDZE1k5WRK6ns/7ho0Cfn/5KSm6iVbcrOx6pWX6wYqeWcS6Q6J9mHJ1Y4uIx4JiZpYMnc+CZIZzxgt30lZ1ppVQ4zKGLmZB4LM23muaTk9wzq280aWM9YLG2jNkPpl5s6nxVQwFkjtsr788zImok8yNAK2SpthBNcIFe/RDpKiKm2qddsNOYKtpmgO69veCfxIte2R/rGGq8YG855Nv4EeIaKXE0DWJRBxhyJKuD1PGacJtwjz5iF6xczb2t//+kuIzkCiPn8wadJ8G4EdSAqeVQ81ZMLiNPt4iZ7K7/Tq3mvxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cxXc3dhM4kXqEMYHVZ50tlN7x/BMzw15Iuj6GqQfXtw=;
 b=lbKdDKlD/cq6tDuGma9GpkbCOvlWnUL8wlnIBJPln3jIa5hb0GMQgvf6M7u85XhdWfcXChuJPAVUJyxEB9Tcu6Mr4UkfiKxQ0fbbAsLs+HePx38IsW59fdf1Wp8ZynP5spjMixofsYgOX542bGL/CRTkbDyqOC1Wg92urGIaZ8o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW3PR12MB4377.namprd12.prod.outlook.com (2603:10b6:303:55::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 11:24:10 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 11:24:10 +0000
Message-ID: <855c4188-3701-468f-bd78-8292d6143645@amd.com>
Date: Mon, 13 Apr 2026 13:24:04 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/i915/reset: Handle the display vs. GPU reset
 deadlock using a custom dma-fence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
 <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com> <adeLRHQ2omAv93yM@intel.com>
 <cc51ea63-19b0-4352-9299-e5ab63f57ce4@amd.com> <adyzR6ISo_idi38p@intel.com>
 <b93c6c33-2d94-4da8-8e97-04c3bade2575@amd.com> <ady-UMqIQUqmKsLv@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ady-UMqIQUqmKsLv@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YT4PR01CA0248.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:10f::27) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW3PR12MB4377:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a5a5b0d-aa05-46a9-c188-08de994f2eb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: QIQHp6EhlNXeIZpP1EmprAf7Qo8Wu3CwjehlhjqdsEK3mGa/CGnqOnFfeCur+vZoDrA/006X3mwsg9zveuIIo2pwrotU+woNhhU4H/YOfwr9yGnyAOXM2pGhsvG1VsifBRbYZQeaz9GEgiYe/rAyZNHG71JNWHdM7/yvL62SsbJpLm5HA/S60pvNrThKfvvUn1AeHmZkbAOn9kNbBNfSvaMp3MIjORH8R7Pp94mxSv1ChWzKY+vhlgZZEOJqAON+n9izzxKQ3l24cKHru/jA+ii3i+FXij9K5x7hdMZ0zbpZIKeD6L35fENY67+GmQUcR8Q/p0T9RLn2LXLy0c4brE96XxZidzQEudsy0PY+sCOkAGDyYTyfEQQKBV1eV9wJ5Y6BvPTyfFBb+R0YJJ/dCF+j+9YOZv4djO7BLKYCdNI+YQF3VbHHVs/JEGCa1hiw0PAtBYdxXe5pyPXv98XsoMxYf0B0iCta1DbuR2SUS6XwTQO0psdqH4HtSFhnheml8YA1HRHtXOZBIS8mm6Uel4tvrLt8CJSASoRlBfGBMRZlJ9iEZI1zRZU5Wk/HTuGuh9JHHLKRw8P0K7SfrRbS/Uwjzm4jPMyob/AgW5dye5vDONXWhBS5Lqdwkx8gh7EGgE0r0D0GUeeTCNQFsyNnrAfLh6amu/mzKv+TP+P8AvUS5GnsuVWijr9dAO8QsDFQopa6PWfENfIwY9TgdVpHjnUYg03hDfkUy1Ixt06er3I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVBHQUxLOTNRQ1N6NlVsQ1pxUGVoeVZVZzkrd1AzZGdoWmdKTkt5QzEwMFdQ?=
 =?utf-8?B?cDdsd2dTaGZUZ3NNSkc5d01JbDNySUp6aC9EVkJ0aFAwOFJuVCtWNjU3SVlj?=
 =?utf-8?B?Y2sxQ0VseE9OYkRKNTJoSGZiKytSdGhaMG9jRmV5Nmg4L3ZZemx4eWszVHZF?=
 =?utf-8?B?WkxjQ1NCdmJFY044R2pnaSsycnNEajZnekVGczNXTlVHa3FycEJUTmZpZ2Ev?=
 =?utf-8?B?cGhSbnJ1U3ZRVUJ2dHVTd3ozd2plR0dySEJ4Q0xrcXJPUFFsZ2tlZ0FBSUVX?=
 =?utf-8?B?QU1XaGNnNjBBbjUzQmlDVE1Rd3kxZ3NKWVladU43aWplTmVCOGZBbTNkekxI?=
 =?utf-8?B?SWgvWWZ4d3ZOTWhSbzk1UFY0Wkg0LzNLamN2QmVRQXF6a3E4NTFDNHhsaDg1?=
 =?utf-8?B?QjI0TE5jV2hlUTF1VWVkNCtORmJ0VzBDOFJtaUJYNmZWOUtockJucEVtSjMz?=
 =?utf-8?B?WS9mMG82WFdOeUZtdHN6cm9SeUFNa0UwaDdpZTZsMEk2Vnp1SzU0OUlaVUh0?=
 =?utf-8?B?eGlZclFWNEdieDAzN1oyeTZWaG9uQ1BUamJHY3ZSL2tZM0ErNzFUMjFjeHhS?=
 =?utf-8?B?WDNGRDNRZUdUeGxoSGFob2xqNkxKU0xQZHk4T3d3M3prU0x5QW84WkxuVjQ5?=
 =?utf-8?B?OGZzOHM2V0hQSGNOYU5qWUZxYklCL3htUndKOUw3UUNIL1BNV3pIY3BtOFhi?=
 =?utf-8?B?SFVRU0Z5eTBPRGFocTVmT0JsY3F2Ump3bGU1TS9UaFN2Z2wyNXZwczkrQkFP?=
 =?utf-8?B?QXlVbFd6d09aVEowU3lyRVlwUWhHUmZEV0pXdHpmMmR6aDhXUktHTXgvMGpl?=
 =?utf-8?B?NHUvS3F6ZytIa2RudDltc1hScGJrOWI2KzNUZXE2RXdqMVY4ZEZpekUvTjVu?=
 =?utf-8?B?UzFwWnVocGFka2diclVOeVFMQkMxcU1rOTNnK3FCY3FaRjFYUVl5ZFNubVJF?=
 =?utf-8?B?OTAwdDNOMVkxeEF2b0Foc0JCVjl4SVRsMnJINzQ5V0g0bGUwUGYvWXBsOFJW?=
 =?utf-8?B?TlltNXphLzNjYWJmU3krZFRwSGgvMStpWU5kS2tHQi9DYnJDOW1jWDJKVkF0?=
 =?utf-8?B?UDVYeGFJZ3pjeUEwbWtSdWxNSVh2amVETnlSZWJ4cUdyaFZXQko4eUpmS3NM?=
 =?utf-8?B?cEpVbk1tdmFQNis3RjFvdzVPVHpqTnZscXBwVDBqR0Z2RE1EbEF0b2NlOG5k?=
 =?utf-8?B?RVVPQjRpeHF2c001OVpyY0ZCRTI0d3BReFMxU1p5SHFRcFpUbElrOFpNSjdr?=
 =?utf-8?B?Z2t3dE9yeExQUkc3ME1PMzZ6Ukl2Wk1FRkdSa0VkZHZVZ1dnZTN6WHB0Z2Zt?=
 =?utf-8?B?MWZqRXkvbXExUzZsMCtTTi9LT1JoSVJwRy9QNjYwS0UvMUsyMjF4dlJPcTVv?=
 =?utf-8?B?RE5rdXVTWVBFdmxoSGZIZEpRNzk1UkFLTGhJU1cxaGxwWTFHOElBQjFGTGV6?=
 =?utf-8?B?clNhMUg4cVZXN2NTUDNsbHRUYzY0c1Nzc2ppZFB1Y3A4UkpjYnFPMExidlR6?=
 =?utf-8?B?WjdSNDVUcHY5TGxCa00xSmNvUnZyQUdxODUxQjVFRERKRXhxRmoweXBOL0hw?=
 =?utf-8?B?V3pMQmhWb0RMZlVKTVJGTDNMNDdlb2RTZlFweTJVbE9RaVhyS0dtZGp2OGd5?=
 =?utf-8?B?SGlYTVBNTWZPQTFKVGVzd0ZLMzdtRnBlVjNBWmJuUzNnamdSQkQ2ZW8za2hO?=
 =?utf-8?B?WXRabHAwOFE5QXZiSWg5VTBMUG8zMTB0NnRPYVVBenJtVlZ3S3ZMb1lLd1NP?=
 =?utf-8?B?R2R0cHlQNlVkNnFRd1NhL1pPV1VlMHpCajloSi95STlVZEpmODRFL1AwTm4v?=
 =?utf-8?B?Rmp5dk4vckt2dHFxOExpMVNQSThFYU83d1pPUTUvUTc2dEhyR2N5SEtBVjBT?=
 =?utf-8?B?VU1qRndRb0kxTStnb1NlV0xFZllkYkJWYk1LR2JkOVRXdTdsZFo0SS9BV2t0?=
 =?utf-8?B?STQ1MXlXaEE4dGpPMGtjQ0VDR3poWEtZamlqc2FhR05vSzZlb2lZZzJyaHRG?=
 =?utf-8?B?Y2tnY21TZkF3TXpMMWZBWHVhSVp2RnYrWjJDV3BMVVEvWm0zQlpxS1M2MFhI?=
 =?utf-8?B?Wi9CeENFbnpqbEpCTnRQZTkySGI3RU5aTllSTVVqTzV1a2thd1B3eCtJUlJv?=
 =?utf-8?B?WTVKRUlPODlzU0wyYU9TRnZNVDV2MWtDQ1c1YXVmbUFsYVducGRWY2FiU3hs?=
 =?utf-8?B?bldLMWVxaE9neWMwaGN1eEVTVzF3UDIrSW5iVkZuZk1OL2VHaFRUU2RJYUpt?=
 =?utf-8?B?WjJrUVhOYXpEcHpjNDN6Z0dleHVkaGVCeGFsQUtyY09JTlJHWmZ3c2NiS0tK?=
 =?utf-8?B?WVNra1pBYVA1aFdQZnphOWdzb3N3MkFQb2FKYzB4TzhwZkNKQW5kUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a5a5b0d-aa05-46a9-c188-08de994f2eb4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 11:24:09.9844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: We7DCDJzhFSQpxXad913rEC3MoN/GfpgP0ljnTNcdYpsbhODIKceyaHiF0SbIlza
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4377
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
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:dkim,amd.com:mid];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 083E33EB3DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/26 11:58, Ville Syrjälä wrote:
> On Mon, Apr 13, 2026 at 11:35:23AM +0200, Christian König wrote:
>> On 4/13/26 11:11, Ville Syrjälä wrote:
>>>>>> I think something is missing in my picture how that is supposed to work.
>>>>>
>>>>> The problem stems from the fact that on old platforms a GPU reset
>>>>> also resets the display hardware,
>>>>
>>>> Which is true for at least AMD GPUs and I think pretty much everybody else as well, but that wasn't so much of a problem so far.
>>>>
>>>>> and to do that safely we need:
>>>>> 1. shut down display
>>>>> 2. perform the GPU reset
>>>>> 3. restore the display hardware to its orignal state
>>>>
>>>> Mhm, I've recently talked with Michel about it and we confirmed that this is perfectly possible without issues. Adding Michel as well.
>>>>
>>>>> We just do that with essentially with a normal atomic commit.
>>>>
>>>> I think that is the source of the problem.
>>>>
>>>> I'm not an expert on that topic but amdgpu and tons of other drivers seem to just use drm_atomic_helper_shutdown() for that.
>>>
>>> drm_atomic_helper_shutdown() is definitely not the thing to use
>>> for this as it would clobber the stored kms state, leaving everything
>>> permanently disabled. The drm_atomic_helper_commit_duplicated_state()
>>> stuff i915 uses is the correct thing here.
>>>
>>> But for this problem it doesn't even matter which gets used. Either
>>> would get equally stuck behind a previous atomic commit waiting for
>>> its fences.
>>>
>>>>
>>>> What is i915 doing differently?
>>>
>>> I see zero code for any display reset stuff in any other driver. If
>>> amdgpu does anything it must be something completely custom, hidden
>>> somewhere deep.
>>
>> The display is just fully reset by any MODE1 reset, you don't need to do anything special for that.
> 
> You can't just ignore the fact that there may be a display hardware
> reprogramming already happening in parallel. Failing to follow the
> correct programming sequence is a recipe for even hard system hangs.

Of course not. We have a RW lock to prevent concurrent HW access while a GPU reset is ongoing to prevent that.

I mean granted that it was really hard to make sure that we don't do memory allocation or anything else that cycles back and depends on a dma_fence again, but that is why we have Simona's lockdep annotations.

>>
>> Restoring the display after the reset is either not an atomic commit at all or done by an async worker after the reset completed.
> 
> Everything is an atomic commit. No one is going to implement a
> complete second modeset codepath just for resets.

Amdgpu still supports non atomic mode set for really old HW.

I'm not sure how DC actually does it, but I would just put a full blown atomic mode set in a worker and call it a day.

That is not something which needs to be done inside the GPU reset, but just as part of the recovery after doing the reset.

>>
>>>>> But a 
>>>>> previous atomic commit may already be waiting for a fence, which
>>>>> won't signal until the GPU reset happens, and the GPU reset is now
>>>>> waiting for that previous atomic commit to finish so that it can do
>>>>> its own atomic commit. In order to break the deadlock we need to
>>>>> abort the fence waits in the atomic commit, and that's what this
>>>>> "reset fence" achieves.
>>>>
>>>> As far as I can see that approach looks strongly like a no-go.
>>>>
>>>> You essentially have a lock inversion here and it is documented that it should *never* be resolved by a timeout, the approach you take now is not much better.
>>>
>>> Unless someone wants to add some kind of extra abort mechanism to
>>> dma_fence_wait*() then I think this is probably the best solution.
>>> And given this is only a thing for one driver on old hardware,
>>> adding extra stuff to dma_fence_wait*() doesn't really seem worth
>>> the hassle.
>>
>> Well adding something to dma_fence_wait() would be a no-go as well.
>>
>> The point is you should *NOT* wait for an atomic commit to finish from your GPU reset at all. Any GPU reset which waits on a DMA-fence in one way or another is a really big bug.
>>
>> That is documented and Simona even came up with tons of lockdep annotation to make sure that drivers comply to that.
>>
>> I'm deeply surprised that a driver like i915 actually tries something like that. And as DMA-buf maintainer I must bluntly NAK that since it goes against documented rules for implementing drivers.
>>
>> I mean what can be is that this isn't really solved with the atomic mode setting helpers, but since multiple drivers use it it shouldn't be anything special at all.
> 
> There is zero support in the atomic design for reordering commits,
> which is pretty much what would be needed. A generic solution would
> more or less involve a full redesign/rewrite of atomic.

Mhm, I need to ask our DC team and other contacts how that is handled at the moment for amdgpu.

But we clearly have the same problem and it doesn't require any hacks like that one here. So there must be a solution for it already.

Regards,
Christian.

