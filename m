Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAFACC1AAD
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5676910E2A5;
	Tue, 16 Dec 2025 08:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHBqZvDV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA3D10E2A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 08:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765875269; x=1797411269;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RmOlRJJCYJNPDT1w2K5/koD/N/617btm2MY8Bxj6F1E=;
 b=HHBqZvDVbHuZtC7wre0q1heKDkDK997+EKG/QqBa6AfvOYPK2jiS637A
 15tXjlYM9xdow6tk9OhnLpyCjUU90lyv425k12hHS3ff37rEVYXhqcA/9
 wBQcuHrm4g9GmWBlrfwCNUCEpyjtW+Uv9XCAHKM1K7bHPvgIkbCK/rEKK
 PzBGzWmxFzI99brL59d7ux4TsRck+z1IV37g//ZIQih2zjG+PY/LWCX2X
 PloZQmL3P+CSCpzuBAcoxXN1mlY9ZW0gxXgjnIxIKUt6uumovsuXTAcu5
 E3IubYCo9aIIpUEKacjEOEItA5er03lEFvChOsdkDF658k+RGPBRYori2 w==;
X-CSE-ConnectionGUID: t4Ex/lecQFaL+wHtn+06Nw==
X-CSE-MsgGUID: l4prKEl/Qt6msDxmV1EFaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="79156191"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="79156191"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:54:28 -0800
X-CSE-ConnectionGUID: cDxpKxkoRgG/Z/mov2KjTg==
X-CSE-MsgGUID: 2x1XjmZtQ8eHeJD0249OVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="228641378"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:54:28 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 00:54:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 00:54:27 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.22)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 00:54:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sO3T43jaydjLQNGfTtrZ6dKfWO3+p17zzEFESONPrwWahAs7+PV2pCXOiCTE1q9mwnz0V3X2ad5l4780UjIOI/ffRI8ZYY1iPlSog6/ImpOd2QLahu238uy7ZocGk+N+1YAZSsEoA21uXRlKzzvBno3mNlx9HDCtMxtFPmq+ZPgPKMfemaFSLbot1OjkAeww22oICIaqQd0NHb7eoEkKZP09wUwBZqyhvwGiWw5sSwhBb0CrF4I0RCY2VKOZ4h5WLj0247JDoTgDX/5WDJ2frtQxATJXlL7I5xRPOGnc7/CG36wMtXct9GL6RHRm2aAwJ1gXjaJwsWcqpNx3B36D1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7wq2Bb9G240m6qgxU/HDmksWqRRSke7N3UfoJtP0RmQ=;
 b=OjbxTKXLnA1hnI0ACLAsh2CRL9hkYOf6zQJx0S8nJbkUb9jrqbBm9vG5yJt88/0ultqPRzk0Y5PzpRQsSHo6Sk6bLv+RCiF30aIotkMaVYGlhd+HjmzJJMDBQVgPmXgiqsMa1Z4nEIq05k/WrwFP11ZfNLnKl0d4GPc5RJEyHAqJaq26DHRjgUHQ72CDHcJiuSzyx0ZrJljZew6sneoS6KQh40cQBQq1B6yBRx+T2P0NIDF1gcLh2hd28ydihQgB1IynQN8oMxgrsgflh9Afwr6TDyLbQ7KrS6ImWkcLPlmFzGyrwKoi/7vACI7L8Gc4sGPBQkOgETrIUdkj84de2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ2PR11MB8499.namprd11.prod.outlook.com (2603:10b6:a03:578::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 08:54:24 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 08:54:23 +0000
Date: Tue, 16 Dec 2025 08:54:14 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <jani.nikula@linux.intel.com>, <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Message-ID: <lbph7u45f2mzjpejydzgqgjevr6dr2agf3q7v43w4bhft7lsub@ipgfisjdvjpc>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: LO4P123CA0591.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:295::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ2PR11MB8499:EE_
X-MS-Office365-Filtering-Correlation-Id: e99eaece-4682-4e45-89f3-08de3c80b5bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cDB1NnpBcmZrU2NiZlprQ0twVENPNzBuZGw4b2dGWjM3S0Z0N3BWWUdIUUV3?=
 =?utf-8?B?ZTUxdThlUkFaNXl5cFZpR3FNWjQvYUJsaE1aamszdXVKU1pXNE5EMnU1YXph?=
 =?utf-8?B?NEl1QUk4SlhJUHpNYVBiZytYYlN1cjgvZm9WMjdyWkN3RXpscEJsYlIvNHVZ?=
 =?utf-8?B?a0hQMk5TR3h1aFpvZnR1TmhwVkVMMmxEakxuSEdmUWIwSUlIVkswQmh1Rkha?=
 =?utf-8?B?bzdSUnZ4ZmpRbW83SDRBOUUydnNXelh4VVpqZWpROVdZQUVIcm1WRjlLd2dM?=
 =?utf-8?B?c3lhS1FscVVFcXZMQ3JHczFEVys3U1NscmRoK1NaRlFNNDBqcnVCRU43OW1Y?=
 =?utf-8?B?dUIwTWNXd2lJeWZaRWF5bytUWFhLZEUzOFozZjJDblpzZE12cStKTmFJL3Z2?=
 =?utf-8?B?KyttbHcyTU9HR3dTamROZlUxeU9SNUxtc0dBUU4wVDZiQ3RORU1vWUhuWWsx?=
 =?utf-8?B?akpSaHp6dTdtdXRtN1hIc0tDaVB6M1Btc3JkTVJRS21jc1hVWDNNcnRpbjBy?=
 =?utf-8?B?dnJTOEVRUjF4L3VOU1RsM3RydTloeVRjdWplbisvMWFvbnVhL1pxcmZmRVZI?=
 =?utf-8?B?T0oyVnlEL2lvaVJlYW04ek9oVFVlc0FLTE80bldTSzB6OFd3OWJNc2JQTUlm?=
 =?utf-8?B?MmlkMFFzN3F4d2MxY1NQNDNNUDN5dUZqOTkvSVhWR09qdDJlNFllNS9hYkRY?=
 =?utf-8?B?NDIrNDJUOUlmU3dETnZ6ejBTdVBBVFd2TytnUW83OENsUVRHMTluN0wrQmdx?=
 =?utf-8?B?UThUYTMzYnZ0cmlYQm5qbmMvQXFscy9wWGxMdFpzdUszRlJnM0lYbGNuMlA0?=
 =?utf-8?B?VmZ5YklXbTBrZTdaZFNNZ2pNTHZEUDBSOXNOQVd5Q2R6SGtFVVhxV2JhVkhI?=
 =?utf-8?B?ZmxsbGZIMVd3VjdiRExNMTBYNVlWaDNvRDFUYWlid0dQZ2tYRmJXUEdCOFV5?=
 =?utf-8?B?dVhuMzhhaFN6VjFWR3U3bDVrbEh3Tkd4TXZZUExBWDFocUViSkducWlVVUtl?=
 =?utf-8?B?TkRrbzE2Y0FwMGoySGZTcnFpSXdEMmc1SEw4SEVzakVuUWRGdkUzVmpuem9N?=
 =?utf-8?B?SW43SUZRMUdydS9McTNWN0lPOUYyZFNwMzRPYkxCZ09hNjF5OWpDaExHWWxF?=
 =?utf-8?B?V0xoUFhrWlNKTUdsMUluZkJBT3pqNTRkRlhsUUdjMU5USCt6R1B5Z1Q1azUw?=
 =?utf-8?B?Z2NBNDFnZ1l2Sy9LOFlRWTBDQU93bEdZVmVab3Vka3RwUGp2VC9lRHNtSHVU?=
 =?utf-8?B?K3BzaUJuOFFGbkJ0QStxWHFUako4b1lNL2JHdkNndVZ5NUxTN28rRERIU3NB?=
 =?utf-8?B?WlhONDNUSmJHZUprTG01VGNFd2orby9SMzB0a3V1Y1A3V1Rpam5pd3RPTGJC?=
 =?utf-8?B?R1FIZ2ZPaFpzL1ZVUjVjcURnZ3RPQjZHa2VRNStFc0o1cVhYRXEzSXJxck5R?=
 =?utf-8?B?UWhrZThjN0pWdEczbDNab2MraWFWeEw1Z2JwdTlKQ25CK0dNT2YrbVdrNFBm?=
 =?utf-8?B?MkZDMEZTQW1MWm92VVRuZ0NnNmp6SEVWQS9yWTBuT2U3SXJ6WVZhckVZOTNY?=
 =?utf-8?B?dUlqUFBjTDNZMUQwcFczN0JuWjd4VHdhdU5GcGFHYUtFZ1hIcmc5b0xXeC8r?=
 =?utf-8?B?TW5NcUxacUw4cnRIL2FpZGc3b2x2MHk2Y0RVUzhxY3doUUVpZUNRczVoMjhJ?=
 =?utf-8?B?WHA3c2JVOFFEckZoSmVEV2QzOGF1U2RTREx1K25hZldIbzBSWnZFdmFQTVNq?=
 =?utf-8?B?cWZNaG9CT1FYazFlL080QmZEWEI1c2EyZGMyd0dORytLY1AzSXE4RHJzaVZ4?=
 =?utf-8?B?MUtEK3pPblNLRE1zV3Q3QWNKZ1R4SHZmemE5WTBpZWdCeVdkcnVodHJ3SGh5?=
 =?utf-8?B?a3Izb1hQRkVKdmduZ1krbkU4VTJ5d1VXRXMwbGpubVFsN0k2dFo3WTRZZkUr?=
 =?utf-8?B?b3ZFYjBHYVRpOUI4R3ROTlk1ZERGbS9TNXFlMW9ZcmJkOGVQM2VBa3YrRVVM?=
 =?utf-8?B?WTJHd3lRWkl2RU5HVVVHdWlVMWgySWhnaWpkNExHNVlKbG1ic3ZVd1ltWURq?=
 =?utf-8?Q?409VYl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SncwcGMxTTZ5ZVZiQU50Vzd6bVBkZEM5NWVjU1VjNG14ZC9KVWRuZVlmN0Uw?=
 =?utf-8?B?OEcyUzd6QkI2TWdsSWMvWUU4UklRd1EzaUdZT3VlTmduaDJ3ZGtkV2t0K0M0?=
 =?utf-8?B?N0lRbzV5N0czOXR1aU5NMVVxeWhnZ3BnZE1Oc2NNT2xPblFPREJOQ3pzOC84?=
 =?utf-8?B?VXVMd3d2YnpOZ3VkTkN4NWJnTHc0V1dENmo2UDZ0YjJ1QXlhMVgvSlJWQkg4?=
 =?utf-8?B?YldnOEE0SGxickhWODdsTU03elpBTXZmZ0VnQ1JPNFRJdVIyU3YrTDVwSktt?=
 =?utf-8?B?UTJod3N0TDMzZ2hvNS9Nd0pvNEFnb2tpSEd2R0dXTm8xU3daNXlCc2I5TTJy?=
 =?utf-8?B?QkRJWkc2UnN5d01Pb29xQk1LaGkxSU1RQUlDNk9VMlNtRldZL2xKMmRxcVMx?=
 =?utf-8?B?QVgxOC9DdE9xMnE3SEhQczQ2VG01c3ZjWTF6NE1rTVBHb1I3S1hGb3pRQmVu?=
 =?utf-8?B?dUxvNTlPRXlCWDZJMkJBaEFjTngrRWRvVFJmbmxJOWZ2M3VVd3NUTSt3ZlNq?=
 =?utf-8?B?eUdRL0ZuSkEzY21EWW1ZZWdUa3FDWXZwVjFBdFdsdzdwUTJHSjdwdHNVUGVl?=
 =?utf-8?B?VkYyTFVjbyt6ZHI3elg0cWp0UzNKUk8rVjNoa0hTQ2FQcC9qQUMwZlpQMzZw?=
 =?utf-8?B?NTVLL3pJT2wzVkxNSXdMWGU0Z29vSXVNZVFWK1MzTEFkbVlocFJHNjdVazNQ?=
 =?utf-8?B?M2FiQ3BPamF4N0E2em9Vc2dvcUJWYXFKaDMyUzBZSjVvemN1ZnR3blhka3cy?=
 =?utf-8?B?eG1hR1F6VXZMMWpnZVVjMmdhL2hZVTdHa0xkamxQUEllTVR5TmhpUVh1QTJa?=
 =?utf-8?B?MkpvcUdhVU82L3Q0YzR0eFlRRDJSS2lqZy85VW0vQ1Nwb3ZrbW54QXdKZU16?=
 =?utf-8?B?dUpjUXkra1pDUURtT2hGbWZZZVBzbDJiOEsrYStaVktCRmRKKzhScG83QitH?=
 =?utf-8?B?bzhmZ0JwdEVzU2JOQnU1Y0RXVDFMVVY2eWZMdnBUS3FGdFZkQVByRG9vNDlv?=
 =?utf-8?B?K3hNcXZBeXZ1ZThmazBwZzhGQ3hkdkpWWmU1eVJ2ZVc3YnM0eFNUQ2hKd3dw?=
 =?utf-8?B?ZTNDTnhtcFNMaG5lSjVLd2crdUw1ajZZOGt1SEtuQ3Q3TlRoVmRubDNEOCtI?=
 =?utf-8?B?SVVkVStMS2xqN0dsd1dBcnN5N05INjFlcUFGeEVLTVkxYWhBYVJnaDFYV2do?=
 =?utf-8?B?Y25neXN2NHIrTFJvLy95ekVpV0dacmdmVUNlSDVZZG9XeHJsclFQanordHds?=
 =?utf-8?B?M2xYUXVabmRja1NsMXNKS2VtSlhmMXQ3SHJVVXRXdjJZSFo5clBVYkIyeFlE?=
 =?utf-8?B?VG5OMHFmZ3FXakhOa25VaXYzVk14R2hWeEFaZ2JiQjYzb3NLT2hyNTNOZ2lZ?=
 =?utf-8?B?YXdHRGllVUpHaUxXU25kSmcxRUVzRWFRZWxMSWVtODAwNm1pV0VsM2pvaGFT?=
 =?utf-8?B?aS8xczNMWE4vNzVWeEoxcm95SkdBeENFT1BYMHpCbjFqblEzbWNBSzM0c1c4?=
 =?utf-8?B?cTRKY2pmaGxqZW51KzlmeHZwUU1yYU0zL21Td3ExUzNzZlRhd3FUSGZ2Q3E1?=
 =?utf-8?B?Q3AwMkljUHJaM2srQlYyV2Zyb3R4SnlkZDMvRzJqUTJiTnVYZ05tMHlQVi9Y?=
 =?utf-8?B?TEw0bkNpTHVlVzJobWo4eW5QOExSMHNwY2FLVEtlYWg5R3ZYWndaYSszRU8y?=
 =?utf-8?B?VkM4NkpmWVRqT0JycTh5YWNuVzh2Q3NIcTZaWmI1N0VTWlJZQWMvcnBtVWgr?=
 =?utf-8?B?YVE4THNiN1Avb0tHcjJOVGxyMHBmOElQaGZzcXFrb2xvWmxLMFhxK1phQjlJ?=
 =?utf-8?B?OVlMcWtwMUI0UEFWRi9jcmgxM2JFRE5HZW5BeStzcjhHTy9keXFxdnAxY2M3?=
 =?utf-8?B?dUxBSnZEcm5aVGthaXlxdGZOZm5COCtHMVNWaU9BYWpGS0RwUnBSVlZJRXRq?=
 =?utf-8?B?Z2JUc1N3RHd0eVRNZ1pSUzhhbDlWektpd3Q2dUpFNnVmb1pLTC9oNjAySlln?=
 =?utf-8?B?RlFJYXhtZkZ3UEE5dy9sT1pVdFdpeVVKdmNFdk1VT01Sd0cxNlJJTG8rbWkv?=
 =?utf-8?B?MzJ0eWs1Z1BMQ2FXcHJaVmR5RVJXeW00MlVKU2dETGtBaUlTaU40RmVEY3VE?=
 =?utf-8?B?czVHRzJUY1lvcEF1ZWhBZTBhc212OUtBN3c1djB0Y3dSZVBWS0EwM1AxTGxD?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e99eaece-4682-4e45-89f3-08de3c80b5bf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 08:54:23.8705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEpj6weU9IJ+OVhRQ/qFvgvWWksueWL+0tVo4P8lRhdIeO5shlDRB1L95G3nsTjhm4mNW8o4zhfdbk2oySbS4IMltc/e6rZ8tUczvWZ6oKo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8499
X-OriginatorOrg: intel.com
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

Hi Sebastian,

On 2025-12-12 at 13:01:57 +0100, Sebastian Brzezinka wrote:
> CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
> initializers unsafe. The i915 GT debugfs tables were using positional
> initializers for `struct intel_gt_debugfs_file`, and on configs where
> the layout differs (e.g., presence/absence of the `.eval` callback),
> this can lead to fields being initialized incorrectly and trigger
> randstruct warnings such as:
> ```
>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
>   casting between randomized structure pointer types (constructor)
> ```
> 
> Switch all the GT debugfs file arrays to designated initializers. This
> binds each value to the intended member regardless of structure
> reordering or optional members and removes the warning while preserving
> the intended initialization.
> 
> No functional change, only initialization style is updated.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
You did some changes between rev1 and rev2. The patch looks
good, so let me repeat:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
