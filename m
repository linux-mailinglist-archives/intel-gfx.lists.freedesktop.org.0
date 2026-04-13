Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DwiGOi43Gn2VgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:35:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4C53E9E72
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC0010E3A1;
	Mon, 13 Apr 2026 09:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="JXFhjY+p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012039.outbound.protection.outlook.com [52.101.48.39])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A8410E3A1;
 Mon, 13 Apr 2026 09:35:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZSwieXIxb+rs0FsampTs/VnzGHaWMpfBJB0c9vSoHnVVbdY9iM+C6h+2W7bI3VbMzAp8ssEeNDrcsq4KMr1sygHq7Ei31Lgj4ax5cdldN/fVDWdlUSoG+ii3AXQUHE0y0zO+QUE5RzyNAWoJF9yycj2WWFD7+a/JTDQoYa6MxW/OAQg3+ww49R+Ya+vo4XBD7n0N4zYpAM+Fd4NhYU9s1/ndt/4DixawV1xFoE7Ph37Htlu4Z/4ZCvkT7uAmjL5r7HKd5pu++2n3g+VlmbHhPmc+b3UgKTzQxbKiUCmsrbUGyuQaVLRyAvMY3NiEx0ez1EuJYR4LI0wcgWPmO1hXXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TYDVA+NMx+nptOi365ZsubtDeU27JPCP1wtden9q1c=;
 b=mrshdPcUFkdX45OuvzpxJbvTqlgbJtxUZqYie/3lYhC/BKrfDCsKO0IKkuj1Krriak91mARZBDfItM9n3/MhVj05fmDBdbyidR4rtj0r9wjlN3fRG6c6n1VtDy6bLxo7Q3tmFc1KXB3Cy6tAPMfXRi4C1FT/U4DsoX6BC5ymeMv3Ams9nAji2b7SU9GQTQ9QGvk2EAmZDlZMV24DdiSX0GJ+aH+lvr/FqldW3XGczD5NTs8qv5twHVEMbx10BXFqX4FTHL9g9o5Sw8Ikay1C2At88j6PMCCIF/Y47u4saBqzYpA88+65pk4zwmmh6iPrtO9yOqLzb7Wumtp9j5Q7lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1TYDVA+NMx+nptOi365ZsubtDeU27JPCP1wtden9q1c=;
 b=JXFhjY+ph5bf7IzpcnvcvJ8eVx/UrSwliZ6NnYkOq3EkPUtXZVXNdFGU7AUhYO+EPnF5V2Hxy8IFZM5eu757Ws70PBO4+xdv0sLyJRhuBpREWTjJEwGOLIplf2lCazhueV7me+YQaYKG1F2jqVYz3b3+fdgBdR4Bjcd2hMRgI64=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7227.namprd12.prod.outlook.com (2603:10b6:806:2aa::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 09:35:30 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 09:35:30 +0000
Message-ID: <b93c6c33-2d94-4da8-8e97-04c3bade2575@amd.com>
Date: Mon, 13 Apr 2026 11:35:23 +0200
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
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <adyzR6ISo_idi38p@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN2PR20CA0022.namprd20.prod.outlook.com
 (2603:10b6:208:e8::35) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7227:EE_
X-MS-Office365-Filtering-Correlation-Id: b6522e11-41f8-408b-3594-08de994000bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: paDMmh/7LsOXRByD+1ug1Mk7jJ++koS/VHqZG+yT1ICmDCVGzvzVxyxN8MabxzpPR0KTiKqQtKtSouHVAFJ4jgfPkpxG1m//ylCOULtxtNVGdJ8Rvf5mf9UcS85UMHswqlT2M+NgsBX1Vtk8KeGsUDk9PiPj4hQ032H/YQfF9MDMm63Tdm6FAtuoTKmXZ/0AC9/vgFTc++8ErZ9aboSCsp0t5zX5KpMZ/tXRLXngsZTaPoU2K1xzejR9BdH6QdoQ7na8f+7mJ3HtXRsNREtqX8lceVXsVIjNoTXh2d+/iVR8eR6Cpfj9DaBmef1DF0twyIHkuFaMl3b1sLmvwIXwJ3h8dlidXJKn07SEdiJkmOAFZQgxKZ8bOaREE+0TZsWhHScQIqsS6D7A0KUEVvAlve0cjnRHFhfWJjZGCV+72FMjSdLNFGxciSBgXI4Q7lGUrBYcExqLW4YrWNDf6eWtRLNWs0G5yJviVg8XFjC6a3sgvoFDkY4aJ0Y6EPuwMASL4kETMRxgnQRlqBtbSK8F3H3FvF9QOvaT0LjrobjifT02DNBNKwN26Y+UwffYYHkU1uqYgasgPcsOCZWUN50ERCNxq7LTSar+ujw8hTY1CjAfAOHiR0bcnXBpCEJArOWVd+/PseOYE/GVdfHG77/K4onAK5cZ87O+Za916ooLBrjntKW3gDiImxGpr9HXxyu/6P4JtOQ+e2CQEcec2JqSTxkbYSxZoV7IAj+6uqiWNyE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3k4UFE3Z2RHU0hFcWplOWtYT1doVDMvUVVRbVBZVit2Z3V5OUFlR2h2Zkda?=
 =?utf-8?B?cUdIMDJLRSsxNW9nWTczQi9IbDhUZ0ZjUGN5TjFDTjJGU3VCNldXa292NDhx?=
 =?utf-8?B?ci8wbUdXZ3h2MkpTWFVqU0VCNFIxVVNBV0xmd2FCVElwbzFSa0lOYnNhZUtS?=
 =?utf-8?B?eXUzV0drTW9iUDQrdytnWS81RFZYTzBrMTRyNWRUdVhKL0dVR014ckdBMStm?=
 =?utf-8?B?SitDVmU3aThOTkhQeHJra2RNL000RzR2dDRLSVBmV1lHV2NiZ1AybHVad3BQ?=
 =?utf-8?B?M1RGSWM3akliY3d4QnlxUjlrUW9SSm9vanBITUs1T21IRFBJTlBQZ0N2Wmdv?=
 =?utf-8?B?OWFhVHVDSXR1MThQMGl5V1p5Rm5nVjc2a3dlT2tObVVTNk1wMXBzOGtqVEda?=
 =?utf-8?B?L0VuOUxkQmZkMlVxL1NlQXVpNWRCYmx1RHJhcTJuV3dYK3Vienk5MXNlWkFH?=
 =?utf-8?B?ZExudU1jWHR0MGxWbDRDZnEvZ21pZG1DQXFLdW8yQ0VBYjNUdXN6bDZURVpR?=
 =?utf-8?B?ZjhqTEZ5bEtEWXNnQmVxRDA1QXR5bkd5OUpsbkN5OWtadVN0Q05ZWDlHSWhI?=
 =?utf-8?B?dVFPdkdsdURkTzlTOHgyNExyaDI4a3d6c015cjZOZ3VvRThvdC9odEc2NGVm?=
 =?utf-8?B?REQ3Mmk0U1ltNUZXeVRZWDY3Z25mMkFQS0QxKzB6ZVBDTkVONUlWdVAzZUR3?=
 =?utf-8?B?UFE5cFA3OGRkMWlWOUplNHZ1ell4ZGhKOWFxTnpVM2Q5d3NxWUZBZ2tTcTBx?=
 =?utf-8?B?cTVRQUVFMGlxeURzbHZEK3BlZzZENzdvblNHSyt5YmN0blJObjREamwrVm1E?=
 =?utf-8?B?bEo4di9PM3ZrQkZnbTdtdTdnQ215eFN2YzBNL2FwcHNRTzVwQUh4WUFYYUJK?=
 =?utf-8?B?eklNMkozbWhLZXFUV1hqWHRBbWtIZ09pZlhWbExEWW41WVdtamhBQWdpMzdM?=
 =?utf-8?B?cU82VTluQ0VJakQ1K2xreXVKZERid2RUTlptcGhhbG9LVkhpQzNleXBvcGF6?=
 =?utf-8?B?bFpEb3NYYlB1dEw0d2RWNnBZbzUwRHh4a25QeEhPdGx0WlJEQjRyNXk1V3Bq?=
 =?utf-8?B?YkRRQzZFaEJPcUpkZ0hiS3dhMG1vWVpha0syRGprcDRpVm9GbVhWTFJsdWVN?=
 =?utf-8?B?NFAxT3VldXRPVVdsTXk1Y2RFWklPTERSRXFwUnh4azFWMlFRMUdRNjMyTjZp?=
 =?utf-8?B?WWJNMjZvajcrTFFERSs5bjcyUEdxNHYwNmZMWkpKS2x6cXc2WW1aUVpVbkkz?=
 =?utf-8?B?RGlSSitoWEN3QUdWMm4rYWt5cTB5U3VDaWFWaDhNbEhDdlRGYkVzcUZXd1dM?=
 =?utf-8?B?MWFmUGNJMSs0NWJma2hSRXJMMFBUT1FKclFiZGkvMlhPV0NGTkMwdzh5YTNn?=
 =?utf-8?B?Y2I5S2VEOWlLODUvS2c0UTI3ZDVtY1NlblhkU09KVDR2dkpJWXE5NUZ6VEJE?=
 =?utf-8?B?N1U1UGxCdUZab1N2ZTJ1bmpqOFVvcXQxeGRIQ2ZMd3diOTdlL0Z5Y1o0cW0v?=
 =?utf-8?B?b3JwcGw1K1FLdzBqWnhuNHhBcDd3RWZiOUJ4M255QVp1THhTbXJHQUpSU1J0?=
 =?utf-8?B?Z0JaQ0dSdndISlJPUkIzK1ZnUDhIREJrd1JLQzUrbEV4U1lSQXlYMTlLbFRZ?=
 =?utf-8?B?Q0JHdUtyU3pLQno5V2VNZldoUGZQK3Z5Q3VQTVQyazBIS2FsRnZtUUJHRnJw?=
 =?utf-8?B?VWxaMFZ4SkpJcVUxa0dZNy9ycHBHYmlZVUxlaDNBaGp3VDZwRVZUM3g3OEM1?=
 =?utf-8?B?bHpNWFNUNEpQWWpTeXdwdHdFVkRSTk0zY3FHVzhka3R1RWUvaEZDQkxNaUVP?=
 =?utf-8?B?Z1V2dzBwRTd4QldlNWpscHJrekJ1dWRsT1RjV0hRNzlheWRPWHVGRGhZUHNS?=
 =?utf-8?B?ZUZaeU1PUU9HT1FYN2VLbTg0aDZHWjdyTy81ZHBzdWR4Lyt3bll2ZWdaYVR6?=
 =?utf-8?B?NURIaHd0dUlRVEdHbGJ3dXVMdFdDaUh4dWh2V3NCWkEyRHhuMEVxNkt1a1pT?=
 =?utf-8?B?MW04RmEyU3Q3UVVDSWE4Wi9vN3Q1ZFlFZkFrSlRoY2s4QXIwRjZjemRCd1FP?=
 =?utf-8?B?RUR5MjV3SmVWSkxIdVVBd2d0MXJWdTU2WmJ0LzN6Y3o2eXQrdnVoZG1vdysv?=
 =?utf-8?B?b25oWWNWdlpWRFludXR1SEs3dEc0YWU4WnNpYkZHcmkxR293NmNVVXVVNHhK?=
 =?utf-8?B?cEE3RzJtTy9TSHBnUnF5MW5HNjNKeFY3QlFxYTVGSTBoNUxxaTF5RGdNMjFh?=
 =?utf-8?B?RU1jQjhNbUNYcy9PQVMvNVA5M0l6ZFlDaW9wMGhCMnhSUFo1Zk1vUy82Zmc0?=
 =?utf-8?Q?nrhtCyzdKvwMvXSGge?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6522e11-41f8-408b-3594-08de994000bd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 09:35:30.4047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0DcFIrC923KDDlUjXm8zm0S6NhlxVsP3E8h3RmRznwhpUaWTqeNJgUrRKmbv02hX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7227
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: BE4C53E9E72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/26 11:11, Ville Syrjälä wrote:
>>>> I think something is missing in my picture how that is supposed to work.
>>>
>>> The problem stems from the fact that on old platforms a GPU reset
>>> also resets the display hardware,
>>
>> Which is true for at least AMD GPUs and I think pretty much everybody else as well, but that wasn't so much of a problem so far.
>>
>>> and to do that safely we need:
>>> 1. shut down display
>>> 2. perform the GPU reset
>>> 3. restore the display hardware to its orignal state
>>
>> Mhm, I've recently talked with Michel about it and we confirmed that this is perfectly possible without issues. Adding Michel as well.
>>
>>> We just do that with essentially with a normal atomic commit.
>>
>> I think that is the source of the problem.
>>
>> I'm not an expert on that topic but amdgpu and tons of other drivers seem to just use drm_atomic_helper_shutdown() for that.
> 
> drm_atomic_helper_shutdown() is definitely not the thing to use
> for this as it would clobber the stored kms state, leaving everything
> permanently disabled. The drm_atomic_helper_commit_duplicated_state()
> stuff i915 uses is the correct thing here.
> 
> But for this problem it doesn't even matter which gets used. Either
> would get equally stuck behind a previous atomic commit waiting for
> its fences.
> 
>>
>> What is i915 doing differently?
> 
> I see zero code for any display reset stuff in any other driver. If
> amdgpu does anything it must be something completely custom, hidden
> somewhere deep.

The display is just fully reset by any MODE1 reset, you don't need to do anything special for that.

Restoring the display after the reset is either not an atomic commit at all or done by an async worker after the reset completed.

>>> But a 
>>> previous atomic commit may already be waiting for a fence, which
>>> won't signal until the GPU reset happens, and the GPU reset is now
>>> waiting for that previous atomic commit to finish so that it can do
>>> its own atomic commit. In order to break the deadlock we need to
>>> abort the fence waits in the atomic commit, and that's what this
>>> "reset fence" achieves.
>>
>> As far as I can see that approach looks strongly like a no-go.
>>
>> You essentially have a lock inversion here and it is documented that it should *never* be resolved by a timeout, the approach you take now is not much better.
> 
> Unless someone wants to add some kind of extra abort mechanism to
> dma_fence_wait*() then I think this is probably the best solution.
> And given this is only a thing for one driver on old hardware,
> adding extra stuff to dma_fence_wait*() doesn't really seem worth
> the hassle.

Well adding something to dma_fence_wait() would be a no-go as well.

The point is you should *NOT* wait for an atomic commit to finish from your GPU reset at all. Any GPU reset which waits on a DMA-fence in one way or another is a really big bug.

That is documented and Simona even came up with tons of lockdep annotation to make sure that drivers comply to that.

I'm deeply surprised that a driver like i915 actually tries something like that. And as DMA-buf maintainer I must bluntly NAK that since it goes against documented rules for implementing drivers.

I mean what can be is that this isn't really solved with the atomic mode setting helpers, but since multiple drivers use it it shouldn't be anything special at all.

Regards,
Christian.
