Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EIpyBymvVGqlpQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:26:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D84749453
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:26:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=LcvSPjQr;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC77C10E5AA;
	Mon, 13 Jul 2026 09:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010025.outbound.protection.outlook.com [52.101.46.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD0010E346;
 Mon, 13 Jul 2026 09:25:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MsiFTdV/qIKceG4U4iF/1dcFY/xNAdKjlbGUpPA8Vpg4sVwwfaZuwPRPI+T4kiiSVqZpGrjgCmSblSeHIjUhAwCZ6SqQmZhVex3Pemwc3GavnihtJXtXaxMM5oH+iUzrv8t05S8LprZWizEouWtTms+zOmZUTwtFDMFr42+oiHvMg0mzLW+rSKXK6aXhfK93aAYoCmsCuEWOoT0O8KXehbTBeGraaCdfdNtaOGfVAfmKXMiU5u5gZ743jQNwbyqt1Jxd5W/CM+eZYNUROiIpUvZbYFE9CKP6VIp+Wl0winTjkCmda22gBl+5fuMzhS39EGgoFLV/8qr+OdOoOpWBpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJL7fSWtbJQ9qquLdsMs3PMO9RebXbIvrBE/1ASKxhM=;
 b=NOoIOeiRrVxTcNpLh+NoR75yYDKQ7jDt1kPKU9+lluoquxY9A0+U+XYYWceDQQb/+iQqAmU+TNt6zh+UXuhROxTuNf1xIUk8XvnuOmUC0fkNX9YeCF7s0WjiagsM0SiKOSYLLfKD9WZ3C3mQryK7azkDEoHGa7yRSGsNlHbxrfEGMx4M+KTi3aOr0RHbjIo6DrVajajwxlMIVKP0aUJmzTHaU2G2oFWOVhfMnSRj0q45apL23AQ7qQHtT8tn+2rKkUcHhzFt4WbDm+VxXybhUIX5GBbgrOSAkkPzWtfiOEPIhY+lkz347S95oGwFDIHfrMpkGQRY/dJTDQ5aOGC5cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJL7fSWtbJQ9qquLdsMs3PMO9RebXbIvrBE/1ASKxhM=;
 b=LcvSPjQr6+GgdBBgmVaHH7O5yZoj+h7qu3vSZqbkWp3NloWVSx0pLFVr8iDg5/XMPu/uyiAj/4mu90bBunpOej4lh3Bf+vwfQtkZAbYZmA97EofOw15Ed59nkc57k0qLvjrtbhC2WMOZGw5yrVw7vPwEOICkm+XThj0FqOekRQE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB5643.namprd12.prod.outlook.com (2603:10b6:303:188::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Mon, 13 Jul
 2026 09:25:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 09:25:51 +0000
Message-ID: <aff7eb27-22c1-4e84-91ab-627c2604e488@amd.com>
Date: Mon, 13 Jul 2026 11:25:43 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] dma-buf: Add reference counting to dma_resv
To: Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>
Cc: thomas.hellstrom@linux.intel.com, ecourtney@nvidia.com, simona@ffwll.ch,
 nat@pixelcluster.dev, airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-2-christian.koenig@amd.com>
 <alGcHjo9fzhHshx8@gsse-cloud1.jf.intel.com>
 <DJVRML4G11GZ.Z7FTZH7I1LZN@kernel.org>
 <alPwTypl8Y8PN7hz@gsse-cloud1.jf.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <alPwTypl8Y8PN7hz@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN0PR04CA0025.namprd04.prod.outlook.com
 (2603:10b6:208:52d::24) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB5643:EE_
X-MS-Office365-Filtering-Correlation-Id: 87db089c-44f0-43d8-0fa8-08dee0c0bb85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|7416014|1800799024|376014|4143699003|11063799006|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info: cIKPKbrJw6i3BYgknbdEvGSn+wu1AYhPvsWS3uapzzdbLHtLeVdloCnszeOipFTGSVbnaEVgKJnhWmRQrUEWpqVvJE+eFNEWHrKZ0Fz2kiUjBE8kry2pbg0SfP4SPrFU/j9sFWrmlolRUczP406KvVN+ClHyxM+38rg0uEW/dMwqJjNjO/wf88aieglxmmXPg5li9sPcLCOiLSjOuHU/tyV5nafg2AEWrhHT/IzcClmtUq8fP5Np0l8sOzu0AiraS98Lu7O9EPBw8xDhXBm3eK4PmqYOp14EzbVTzShCjthdsd39JxVHojtUMqBGfHWCq1jSrmviL4khiiwyoIlWsL2q3L/UKUoSjKzGvGc5U4c73s3EqK0evKknXO427A1K1MqweaP33bhoK/STIBljR+aDxT6X09QrY/JPTZD+LzyXMcMEl+Icd60VCsCSzbj3I9JjqR7EobrlkuTnAM+eu1bvo8g3ACd9vzM5B01DwmR5jW6ZGloWJ+4g4ERS6y0muvzuwueDUEZ02S1bAXzIsoBFz4pfhmPzEucG3sFg6/Fx8Pyp9riiIYxFCxlgtR8lR9itkmVE6iKnfMHkUTwpoVUfC5rWuWUcldKdwsGQl9UDFk2FPpENcoYvr5wdtvrNkOU5gID1eYnlb7PBNLL+QgbqeHdfyO2jXRtt9/+C9AM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(7416014)(1800799024)(376014)(4143699003)(11063799006)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3VhallvUTNQZHhNR2JGU2NsMnZZT29SSUNGU2dHcE1UcVBub0JsQXdHRDli?=
 =?utf-8?B?UW1sVnZVQlo3NUtLVFpCU2JZdXZlbENqU2VFS0tNNEVUb2ZOUm5rR3EwRHQx?=
 =?utf-8?B?VDJNdXFocFN4YTlTZjhlWE1qcVlaSGY2a3RLeXl1OGNLb2t1cG1BZ0IyTEww?=
 =?utf-8?B?a2p1ODZBZnhYaGRMZllsTnYxSDFNZCtLcitETStJbnJPRW9aNkNTcHhFOWlp?=
 =?utf-8?B?MDZTc3F5SCtiSnNIa2pFSFB4djlTcEluUWcxVnFVbUprdUdwNnJ6SXZZbklT?=
 =?utf-8?B?REZwUlI4MXBHUEZML0Y4bTNzczcyTjRRNmtXWitBaUF1THp4eXZSUWRNcjJO?=
 =?utf-8?B?V1Q4ZWFyRHRLUHVEMHdUa3ZuSW1QV1hMYkN5djg0MnFwaWJrbUJOSWFLWlVz?=
 =?utf-8?B?enQ3dTdVYkFIMWlWQkFHRUxtU1FFazY2TmpHRTIxMHZKc3hJRzJaU0N4cStY?=
 =?utf-8?B?NUJLTVAzajd2UWtjb3NCY05QbkVDRXBVdm9Danc1dzY3bmZMZ2lTcG84T0RH?=
 =?utf-8?B?Y2RrVlByYnQ2UFZuNDR4b0Q3ajZKUVViTkJIeWFicWNLWXRsc25FYmZxcmF5?=
 =?utf-8?B?bGE0dUxrWTh3SG9XSnAzcnZRMjJlN2dTekZ0RjN4TEFrRFNzQmMzNytIYTdi?=
 =?utf-8?B?TWFxYmVwYlM1OVhOVFd6UmlVaGFnWWI4T25Qb050eVY3dkxZSElkQmQ2UWhx?=
 =?utf-8?B?NTVMNzFYMk1mS2lmNFdlWGxaT0ZmYVpGWjJYcyt6NHhXUWlCenJEQjhWWGhZ?=
 =?utf-8?B?d2tIWk9CV3hMSXgreUl1aDNKVWtMMVZ5cHBCUHpkNEE4bmVWVThlT3htb0ZZ?=
 =?utf-8?B?MWx1bFRFUzBNaENLV0hReWVlcjhOVUNjOVdWc0hvWTdSb0FCdnRnUzJNOUtT?=
 =?utf-8?B?Z1JkTGhIZ2NqTVI3OFQ5QkRoVlFhZXJjWit2MGNzbUNvSVhVZnJwNWExUEFo?=
 =?utf-8?B?UzJlVmZyUGk1TC93UW5WY2drN3ByNVRrSVR6TDVjSXh3KzlRYTIwNGtQWHE4?=
 =?utf-8?B?UkNsRzRRZ0NJZEJOVmpsMTR0eVBVU3dqTVdKekIyL0lvTTBDczdyb21ibkg4?=
 =?utf-8?B?UlZMYzkyaU1CVXBqaWRXelE2enFpdmdHQ2Ixa1o3L0djYXpjM0JTeFBXU3cw?=
 =?utf-8?B?SzFBVXR1UnlHN3I2d0R6S0QwTERING12M2FUcUlxcWxVV1l5Y0JBMHRlaGo3?=
 =?utf-8?B?cEM4QXpHQnVnTTZrS29aUkVpM3VtckRnYmFQUS8wWkQyTDRrbjA1d0pKUHV2?=
 =?utf-8?B?QUNqcUM1a2hWWVVFdGJHRkNEWFpxSHR4aDhTeTl0ang3bmtXNnJKZjUwVlZZ?=
 =?utf-8?B?cDNZMm92dmpoWGRmbk1mczFqbE5mTEdOV0lzQUlSVG9Cd2tCemtaczI1ak9J?=
 =?utf-8?B?SXF4UitWZjBhbkZpMURsQkU1TWE0VHNweDkxOGlxaWZpY2YrVHlmSzJ4dXZV?=
 =?utf-8?B?bW45N0NBRWp2cmNYOElaclN4WTB3cDQyUFVybGhmUklNaUhBdVRqZFpTRk5Z?=
 =?utf-8?B?TUdmYitCaElkUGUzMGdrbCs5ZndNdWlBODc2dVJuNU11UEZiWTRaR0YvOUlT?=
 =?utf-8?B?azc4VVlucUthOU9vY09mY3VuRVBYYU1zSEVuYnRueFFnNExGeEVDMG1GeVo0?=
 =?utf-8?B?QW50VDRxbTJQK2lrd0QreE9pMktKWWYvbW9IQ0NWSGJuZVo3ZWJ0aUlubmhz?=
 =?utf-8?B?cFR1TVlZUE52NDVWTGFYcFk2T0xpZERMcmFRTHh2K0pvSGxFUUNOZ1IyaFo3?=
 =?utf-8?B?Y0J6ZGJ1VjluY2VSNlJkMzNHR2YwR1BwcEZjaExsY0VhQnFad0VnMzJQWFFi?=
 =?utf-8?B?cmZWM08xR2NCTG1wdlZaOEpYK1ZEbm1WVmJZQWlNaVpheGV3VXBVMTNKY0JV?=
 =?utf-8?B?dDkzWHZhZm5VUmxpSWFJK3UvcEFaMHVGbDA4UlIwWk81c3h6NXBlZWRHVkNS?=
 =?utf-8?B?REFqaHBzY3lnaHBlMElTaWd4SVlBVlhURVpGWGZUWUYwTFFHdmdhSDhlMmZL?=
 =?utf-8?B?SVdHbG5FZ0RiZnFHcDhBMDJ1NHNucVpxRTBuYlVnRUNvd2tramdldG8rbjNw?=
 =?utf-8?B?ZDRhSmxxSytKVFhKVzg2YnZjL1JRVEdCM213S0hNL09IYTl5aVdrM3J5NzNS?=
 =?utf-8?B?SE03aVJTUTRiSGhwSmFFbyttVWY4OFltNzVHNmdnM1QvWm8yamxTWG9QNmVn?=
 =?utf-8?B?Y1lIL0FuNFNEcXEvRXByTjZWNnkxN3B3TXlxUjJYNlY4eUFMd0NoTmV5Z2h4?=
 =?utf-8?B?dXd6bnRNLzV4UnhLZ0JwbDVGWmtDcEVxWmprYmNBVHMvQ0ZJY3BVZDhHaGI3?=
 =?utf-8?Q?wU50kANYEIMqrYZVvQ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87db089c-44f0-43d8-0fa8-08dee0c0bb85
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:25:51.8678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gS+4WUy+Fh+JMJmWkhjldpVrZf5NzWGLf4+Nqfh4meTaKusT3ILZi3epxm1+t0Ip
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5643
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[linux.intel.com,nvidia.com,ffwll.ch,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:from_mime,amd.com:dkim,amd.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6D84749453

On 7/12/26 21:51, Matthew Brost wrote:
> On Sat, Jul 11, 2026 at 03:10:58PM +0200, Danilo Krummrich wrote:
>> On Sat Jul 11, 2026 at 3:27 AM CEST, Matthew Brost wrote:
>>> On Fri, Jul 10, 2026 at 08:52:41PM +0200, Christian König wrote:
>>>> This provides clearer ownership semantics and makes the code more
>>>> maintainable by removing the embedded allocation hack.
>>>>
>>>
>>> This looks a lot better to me. In particular, I agree with the last
>>> sentence in the commit message.
>>
>> I have to disagree with this, it is the opposite. As long as the struct
> 
> Daniilo is of course correct here, completely missed this when I looked.
> 
>> dma_resv::allocated fields and the corresponding semantics exists, this does
>> result into less clear ownership semantics.
>>
>> When the dma_resv is embedded in another object the reference count becomes
>> meaningless. If the object embedding the dma_resv is freed it doesn't matter
>> whether I have a reference count, it would a UAF regardless.
>>
> 
> Yes, I agree. The allocated field would need to be dropped to make this
> viable, and we would disallow embedding a dma-resv object into other
> objects (which I believe is the suggestion).

Yeah completely agree as well. This was basically just the first hacky version.

> This doesn't look too painful, as I can only find two instances of
> embedding in the kernel: drm_gem_object and i915_address_space and
> handful of stack variables.

The use case in the TTM BO deletion path is the only really ugly one as far as I can see.

It uses the drm_gem_object embedded reservation object to make sure memory allocation can't fail during deletion.

We need something like a dummy delete_resv allocated for each TTM BO during creation or something like that to avoid this.

But that in turn means potentially means taking a look at all TTM using drivers if/when they use this in their deletion path.

Doable but a bit more work. Probably also a good job for AI.

Question is also who is taking that work? @Natalie can you pick up from here?

Regards,
Christian.

> 
> Matt
> 
>> It is misleading (and hence error prone) to have an API where one can obtain a
>> reference count of an object where the underlying memory can be freed regardless
>> of the obtained reference count.
>>
>> A refernece count represents a shared ownership model, which is undermined if
>> the underlying memory is not owned by the reference count.
>>
>> That said, I don't mind the reference count, but we can't mix up exclusive
>> ownership (embedding a structure) and shared ownership (reference count).
>>
>>>> +static void dma_resv_release(struct kref *kref)
>>>>  {
>>>> -	/*
>>>> -	 * This object should be dead and all references must have
>>>> -	 * been released to it, so no need to be protected with rcu.
>>>> -	 */
>>>> +	struct dma_resv *obj = container_of(kref, struct dma_resv, refcount);
>>>> +
>>>>  	dma_resv_list_free(rcu_dereference_protected(obj->fences, true));
>>>>  	ww_mutex_destroy(&obj->lock);
>>>> +	if (obj->allocated)
>>>> +		kfree(obj);
>>>> +}

