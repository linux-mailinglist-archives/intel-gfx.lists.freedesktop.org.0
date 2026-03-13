Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GTLIm13tGlHogAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 21:45:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA880289DFB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 21:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FED910EC8E;
	Fri, 13 Mar 2026 20:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="DVGJSBiI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012036.outbound.protection.outlook.com [40.107.209.36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A91910E478;
 Fri, 13 Mar 2026 20:45:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vDLZKz3CtIFqAGaDWCdzckKEfixV+CckUkzmoZIYF1UcWuhoYdm7tTH4FhrpFBCusmp5hGnM5/2dfnCQpbdIFZxqiMEmCLDGPkQnv4lvdMdzIxWT3zEpSgskASKAazebUH9d4BB8E+Mjqc4jD1Bp+D9hOUERgYHoCs74AC/+YPpT+tZGwp4VDhaAU+pcCpZ6FbGcoV/jKMqzgMy2ztBIbCeoslwh1CUzPe4nFmuBSQ0p3r2XAb72CkUOW1CEdF7tezWkF/J+LhjL/e26IKRUVYZUM+06BcadV5Ypz8B07dINhM837djRvIquAWJaXVFtVRP4joTpv6Q6iYe5/beuIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5BYzute5+kZ3yyCHv9fymXh8G+FGy3aAw6haj9RGDc=;
 b=e35YtllWc+BR73RbUrd/Bub03hDevKICzi+xaJTLkM6B7EgLByI7ceIR+KgONDlEJFKimHokmrDQrnbspqRyqZ5Ikq79o16Xrrug3a7uC7uRbpSLmc5cGksX8qbh0RnI968y/v3Bd9269Lzbzyv/9TMeST863O1xdCajmRr02rBcCWPqij54I+xX7NKGVFJ09CFx8DXP/8ZyQn8JvybI1eAL820BP3474Vb1f4jgrFvBDwdQMxKq0YuHh+yU+f/RIKEYf2llULXYrU4C0E8MS+Y7gRVRspBQi871VLYUJe6tm2qaigS6smLvuaFlZh2Q83EKN2jXttkJqBoNZnrVMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5BYzute5+kZ3yyCHv9fymXh8G+FGy3aAw6haj9RGDc=;
 b=DVGJSBiI6dTVQaWSFD8cOKr5wmVymDkRYjptvF5dg+SjO4l7EDuAGgpgsOraEh6guBWUardDKQlCn3pIGFb5tHBU15ZPllvTDA9MAsjwbI8mnRqGSfp3mD+9tHK38E64dMUZNr4V59rXTtsPK+k8hPpgdSyINiJfPWGLZMBR5EI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5126.namprd12.prod.outlook.com (2603:10b6:208:312::8)
 by SJ0PR12MB6853.namprd12.prod.outlook.com (2603:10b6:a03:47b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 20:45:26 +0000
Received: from BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe]) by BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe%4]) with mapi id 15.20.9723.008; Fri, 13 Mar 2026
 20:45:25 +0000
Message-ID: <a0ec2ae2-502a-4587-8951-41dca92fc8c6@amd.com>
Date: Fri, 13 Mar 2026 16:45:21 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] drm/colorop: Keep colorop state consistent across
 atomic commits
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 mwen@igalia.com, sebastian.wick@redhat.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, louis.chauvet@bootlin.com, stable@vger.kernel.org
References: <20260310113238.3495981-1-chaitanya.kumar.borah@intel.com>
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20260310113238.3495981-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YT3PR01CA0114.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:85::31) To BL1PR12MB5126.namprd12.prod.outlook.com
 (2603:10b6:208:312::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5126:EE_|SJ0PR12MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: 75dd4a72-1635-4ea2-8383-08de81417432
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|1800799024|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 7s9VVaWP4ASqQfFEVUA5D7H9dTAVRFt1VIx7SeDn2HqD5S5Zf/iDT/xz4MrkJIpfik222uqTn8jRLD/g5UIEfudh3avTAS2JOMDqHlprVATywnH01bYiZhdvslvPye8M5yBBVlnT5pf6cW2fnW0N0s1WY+7UsZcbOqEw/dAv30yeRY+QrI82SPmx+zZGi7nSGLjnIPS/HsIaJw+nkng5ULprK8rIEgW8bYhf8Fmiu0IXDZ3JFypzeDcTbBm2CKw9+n5UiOFrK+mh5eTy5AYzsWrGfSybXij8gTu7gkfRQO+lACajp8EprI9QFRg0IJp2UxrNlmLs2UW8DKjdVlnJd++WcKmQ2q8NleG6SeBfqa5xqJhTyWlM6qu7sYOK2sqeqtrlcdNAGFMEauEU8eQ/b8CxomeFm+t7hXWsaImZbtrNZPDpDinPeXpsGvfPn28YTRuyO3P4k7JPExIqd7TsBUNmX4ciwWT/vPWIfQuYnsJganjyt3+sUAifRt515sqGLWK1TnAqUVr+pMGdI5GtQDgXmOVOah1LVnrJLvMtIwhGQGRZrXYWbLrrHEVKv2BAzsiBMeTsZ2AvPK7Xy22QVPfSSsE5u5OBGob70w8BQemHkL8OOMgYBrfNRcTptx4xsKuNia9H9zZP1wxDV07F27Bgtqn1uFoEqh8EVAHyxS6FipXYcEJ2S1dwbSeei1Bz27u58skpZW1k9JsdlpgakKNJOK1m8DEfgevFPgK2VkM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXpFZ0RWaGlrVFBwMzhUU1BwMXYzbjVsTVROekZxNXdmRWdzNnhkVXpoakx5?=
 =?utf-8?B?ZEg4LzBQYjEvUmJQT055WkNxS3NmbGVhTEQ5S1BpZWVKOGpLRyttb2w0UUVH?=
 =?utf-8?B?ZGt0RnBtTno3VmJCc1hkS3h3cFh6cDA0bUFENzk0Y2pYc1FkaVFXaGRhS2Rt?=
 =?utf-8?B?RTJ0cENlZ0FqcU1FKzlid0VnV010MFE2eWZKSnlIekpwYXVqc0tWUlhvbUVp?=
 =?utf-8?B?dVQxaHZuMEZNOGJ2VnI1cFhGdDV6OVV6WUZmUzRMeXZiclRZZExqUGpvbXZZ?=
 =?utf-8?B?QVpKSWNITVJhaFdiVldWdVc3Qjl3ZWRJd051bm52VDRRZU1oaHZGN2p3dWlN?=
 =?utf-8?B?U2RPcVVycm9MUm91Z2NVZWtUSTBkZllMcGV0TDBzejhjRyt4N0lxbnA3bUc5?=
 =?utf-8?B?eTBpUk9uSTIrKytjWjZuZk5rdzhMek5VeWlTbThzVjJRODJ1bll4UFErZEdR?=
 =?utf-8?B?T0wvRFdpdlJkQUN2WlVBN3graHlveXJPcGFKMU0ydjdNRHNZTnlhSmt4dE1i?=
 =?utf-8?B?dXUyajR6b0Mwb2swcStlL2JwSDZLaUhUS1RwcUlqTmQ0RTJWTm9NMmJkdjU3?=
 =?utf-8?B?NUFaN0VWanVlUlJxUmlwekN6WkovOXhpVW9nUFpRdlp3KysvWlVjY3poZ1Bu?=
 =?utf-8?B?UmtNbVgwVjF1dHRmL3hxWTI1UXlVeHJPTHEvNnc1RlFReXVCOWtnZS9iRGpp?=
 =?utf-8?B?a2hURGlpRThENWR6N0hVcXQ1N1htT20ySjMzSmQ1N3JickdUeE5VbFV1Y1NO?=
 =?utf-8?B?TzRhUjFUSXhxNkFLaFZIYlJvbTBadVlrcmp2dG4yb242NFBId2RwK3pUK2Vq?=
 =?utf-8?B?SXNEYkRMNWpWTjIvZGhXOStxVVovUkZHL3FFZVp3bnZ1dHpxa1F3cXpUb1RF?=
 =?utf-8?B?WVE4T1NTaTRnQVNWYTJLbjNEdFQ2VVZwaTlDMlR2eWZGTi9pSFByOVpoUlgx?=
 =?utf-8?B?NmNHVUYyK3FtUkoxY2hWNnRtMkt1UWs5dTJxdTFFbFlxS2J4VnB0MDlRbFpz?=
 =?utf-8?B?blZCTUU3eGp4Z0VCMG5ScVhJc3pmTHM5ckUxRkFnbGc3V1FzTGQ2eWR6N3NY?=
 =?utf-8?B?clZVcEdMNTNkRCtSbHNzRS83NzBwK3FQMHZKY2FBbFM2MnJnLzE0a2RVdE1B?=
 =?utf-8?B?aFoxOWNweUhMYmVyUUk0dDFGbjFtTmhGc3k0YlVSaDFybzBwcUNaL1hIZFFk?=
 =?utf-8?B?OWc5b0piU0l0V2hXcktZbEVsU3dYQ2dVdWYxQjU0bGJTWHZKZi9tczhvS0dK?=
 =?utf-8?B?Nkg2SlBweTgybmZLc2liMGR4VFhVdU03cUU1THliZmVzS2lueXllT0pFME1O?=
 =?utf-8?B?clIvRmpKRERkS2o5eURZR2tmcTZwRW9WdWlBR1dtbzFXOTVORkVYN1Npbndk?=
 =?utf-8?B?SC9QUVNrSVJqbXBwK1VhWStUTFlsMmpTYTNIVkZZZHUxb3BCVmtVNVp5VEc5?=
 =?utf-8?B?R1pBSWhEdEFhazZOTlB6KzJ1UUJYVkx4UTUvUUxrbkhtWEpFMlVqL1dNbWN1?=
 =?utf-8?B?Rmx3SDF3cHhmbXBLdnpwbVh2YVloRUlvRERFUlFSaGtuemJEWmx0SFB4dVpo?=
 =?utf-8?B?VnZnNFBkd01CMGZVYmRjU3dRYUU1L3R1czI1dTY2Ry8vcXVVbFc3eFhwL2lm?=
 =?utf-8?B?VVB2UWtianNTd3hhM2t6N2w5SUZHeSt4bkhsWlZBNC8xYlpVSlBYL0ZQWE5p?=
 =?utf-8?B?VjhpNmt4NDZnLzJmNmpSZk5EQldldm5YM3ZqSVVVWWZLK3E2THRILzhsYWxk?=
 =?utf-8?B?V1h3U3JDMCtKS3hmUzF2bnZnOHlZdXZhN0ZSODlidjB5Vnd0MGliUW9NOE9W?=
 =?utf-8?B?blE2VERuTHhHNERLTTVPbk9FM0xXanRHb210L0dMays5RTF4ZTExM1Z5YjUr?=
 =?utf-8?B?OVdtNFgvTUNlUE1zVUdBZWI0d1N2aGorc0xCWHFtUWdvVU5OUmYvVlo5a1Rl?=
 =?utf-8?B?WEJmTXJ0MjZDSEhMdU14eFlXS0c4aWxnYnlWMFN3clRablZwQzdHUVNXeER4?=
 =?utf-8?B?ZmNXNVRDbCtYK3ZXWndITzJIMi94N2RDSXN2RFllZ1lMOXZmZ0lyMVVNQU1a?=
 =?utf-8?B?SEdUQlN1N1NlTkw0KzdnSDcvbU9jNyswRVZVMEdUY1YydlM3YklWSDNSaE14?=
 =?utf-8?B?V0tVZFdkQ1ZZRjNTV2ZiQktUNW00QTZwUWc3NW9UVEZLa2RhNDIybXVYRnVr?=
 =?utf-8?B?NEpLTGdWaWN6VnNCNThuR2tjLzNRUUMvWUZXQnA2QzNwaU5NakpCekNIQTQv?=
 =?utf-8?B?RnZNdk5pTjBFdWNpbU9kdWlEYUludlRvbE1DSEZzZjhIR3VxbSt3cmNVTklz?=
 =?utf-8?B?eEc3ZElwZDF0aVd6VzhNeG4xRFl0OXM0cnNvdldZZCsyN2NBZnNEQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75dd4a72-1635-4ea2-8383-08de81417432
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 20:45:25.6993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nb0oF3uArxdMNMOJmeL18zPQ0+IBdrBX4OPtVSajE+U22RZpWlb/0weXCD2xBBgeL7sDutoDioIdw0pV0dInAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6853
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:email,amd.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url,emersion.fr:email,bootlin.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: DA880289DFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Would you like me to pull these into drm-misc-next? I'd love
the changes as base for me next patchset.

Harry

On 2026-03-10 07:32, Chaitanya Kumar Borah wrote:
> This series aims to keep colorop state consistent across atomic
> transactions by ensuring it accurately reflects committed hardware
> state and remains part of the atomic update whenever its associated
> plane is involved.
> 
> It contains two changes:
> - Preserves the bypass value in duplicated colorop state.
> 
> _drm_atomic_helper_colorop_duplicate_state() unconditionally reset
> bypass to true, which means the duplicated state no longer reflects the
> committed hardware state. Since bypass directly controls whether the
> colorop is active in hardware, this can lead to an unintended disable
> during subsequent commits.
> 
> This could potentially be a problem also for colorops where bypass value
> is immutably false.
> 
> Conceptually, I consider 'bypass' to behave similar to 'visible' in plane 
> state - it represents current HW state and should therefore be preserved
> across duplication.
> 
> - Add affected colorops with affected plane
> 
> Colorops are unique in the DRM model. While they are DRM objects with their
> own states, they are logically attached to a plane and exposed through
> a plane property. In some sense, they share the same hierarchy as CRTC and
> planes while following a different 'ownership' model.
> 
> Given that enabling a CRTC pulls in all its affected planes into the atomic
> state, it follows that when a plane is added, its associated colorops are
> also included. Otherwise, during modesets or internal commits, colorop state
> may be missing from the transaction, resulting in inconsistent or incomplete
> state updates.
> 
> That said, I do have a concern about potentially inflating the atomic
> state by automatically pulling in colorops from the core. It is not
> entirely clear to me whether inclusion of affected colorops should be
> handled in core, or left to individual drivers.
> 
> My understanding of the atomic framework is still evolving, so
> I would appreciate feedback from those more familiar with the intended
> design direction.
> 
> ==
> Chaitanya
> 
> P.S/Background/TL;DR:
> 
> I discovered inconsistency with the colorop state while analysing CRC mismatches
> in kms_color_pipeline test cases[1]. Visual inspection reveals that while CRC is
> being collected degamma block has been reset. This was traced back to the internal
> commit that the driver does to disable PSR2 and selective fetch for CRC collection.
> 
> crtc_crc_open
>     -> intel_crtc_set_crc_source
>         -> intel_crtc_crc_setup_workarounds
>             -> drm_atomic_commit
> 
> During this flow colorop states are never added to the atomic state which in turn
> makes intel_plane_color_copy_uapi_to_hw_state() disable the colorops.
> 
> If we add the colorops, to the atomic state, the problem still persisted because
> while duplicating the colorop state, 'bypass' was getting reset to true.
> 
> The two changes made in this series fixes the issue.
> 
> [1] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18001/shard-mtlp-6/igt@kms_color_pipeline@plane-lut1d.html
> 
> v2:
>   - Add affected colorops only when a pipeline is enabled
> 
> Cc: Simon Ser <contact@emersion.fr>
> Cc: Alex Hung <alex.hung@amd.com>
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: Daniel Stone <daniels@collabora.com>
> Cc: Melissa Wen <mwen@igalia.com>
> Cc: Sebastian Wick <sebastian.wick@redhat.com>
> Cc: Alex Hung <alex.hung@amd.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Louis Chauvet <louis.chauvet@bootlin.com>
> Cc: <stable@vger.kernel.org> #v6.19+
> 
> Chaitanya Kumar Borah (2):
>   drm/colorop: Preserve bypass value in duplicate_state()
>   drm/atomic: Add affected colorops with affected planes
> 
>  drivers/gpu/drm/drm_atomic.c  | 7 +++++++
>  drivers/gpu/drm/drm_colorop.c | 2 --
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 

