Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29450AACFD2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D3810E101;
	Tue,  6 May 2025 21:41:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kc4QOG+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCC210E356;
 Tue,  6 May 2025 21:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567693; x=1778103693;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=paV3D8Yt8AtBOWONCcAhf7g/sM954nVUgQqwRNRzOY8=;
 b=Kc4QOG+T4ICMEKknXgIAgYjBHaP4ibsUo1pwpYqN6Rubspxm6MtX35TQ
 CLc6N6xl7Rys/7SMkt6qej1+M8KdZYK8CW/027/b5wloxxu04dVaO17qm
 7LSIH8OwbX5JcOKG/XiS8DY3ZP9gG0TvN8PmpmyUmTft0mfWKuAq0wvvy
 v+ZPbMefl8Sx/rcLJheQxIiIxMsFpm4oaFD2hDsPuYvDeZhek8m9P1XSz
 jZ5v6NaRq8nRd9BTGHg8tQq1pnc/VXf0PYmUQrlODWjJnxEHF/ymQ74WA
 WHPOWJ4H5xuawSmDVQYYLWgt4qLMRAJarRRes24YAFpYA6HUKrvuWcUug Q==;
X-CSE-ConnectionGUID: Wo1nyvcTTZObiz1y3OEXUg==
X-CSE-MsgGUID: 3uTmwn5NQ2S6TF3+b1teGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="65673782"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="65673782"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:41:32 -0700
X-CSE-ConnectionGUID: QQ6rLTojQNqqbE/z1FMK0Q==
X-CSE-MsgGUID: VptXZgFDTcaWF4n0SM1BgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="166786929"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:41:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:41:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:41:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:41:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kt7zdgygsaqP9CamqpD3FVQoAzylTqpOM//aKew3UgOH+e5ICOM+VRzTM06x0LNR+tWKbRzNw0idrmgOXHWYrw4IOw+b15Es2RoaQT3jMR4s+UsTq7RPZ+hwSlgLGqKILUgZjPv8lmiG1MKd232bYaEkn8w5TXGoXqVF6KHlqsHzmg+rud8ta9izqJ0ktvnEFo0B3qo7XOEZcUPNqF07W6KS+svi0pfx5NRCkrjVOCiFDumdg1hrM8H9zKuKGvqWq+Y+cNV0n5BSBBK9InkV2gt1mxKP01FUpTidzlOtzKkqm+Y6zsW5L6sKlszAM3q0LqDoyhf95F8huIE+Uc2CGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YcvvuiGIbaweuNmV2+fkQm4KkDY8tWojUYObK/rjlF4=;
 b=uuOSBb91PB8RCagr0VappWc8j4Cgi5mvjXyvb9eygqArsi2Zq1nl+0pd6ghCuv2iRXnO2QkR/WhOHfaX0hn4yExfR1GttbuaBmaSnm+yU2PlMKTW6XH2dbAkV13DZ61CXIe0uatbwqba4yeWkzNVVm7PUGNMt046lSxbLC6VlAkjNqfqphvahne0wLAYtQW4NvVPbkLcozxy2tkdM9FZEo7xzBqKYwn15XjUjcTQPHrJUxLyB0GXH27qEQE7as6jcNGEQSWj+I1SxyxGHSNKxrgJaB6I5uPV4SlERSGM32gHSeberE0iT5FRizPczKMV/fJ3P0JcxDxf39gti7W4GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:41:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:41:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ef2a46dc8f30b72282494f54e98cb5fed7523b58.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <ef2a46dc8f30b72282494f54e98cb5fed7523b58.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 7/8] drm/i915/rps: refactor display rps support
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:41:22 -0300
Message-ID: <174656768206.1401.15651717888551857973@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR2101CA0028.namprd21.prod.outlook.com
 (2603:10b6:302:1::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM6PR11MB4596:EE_
X-MS-Office365-Filtering-Correlation-Id: 03b0bdf9-29b3-4c0e-de13-08dd8ce6c0c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmZ3d21WUEd4aGZtcWJyTTROQStyQndDdUNyaUROMHFpWUIwei8rMkNGUjd3?=
 =?utf-8?B?aUswNnlDTVJBRTBZanhJdGtLZlpBcmc2WXNWK1BWdzFhWW9Xd1hWVk9kRE5l?=
 =?utf-8?B?WkcwVXJTOGFEbFowS2dYWG1HZ2JvcVhlaGFYV2UvaGxwdHB5S0ZwMUxhWFVJ?=
 =?utf-8?B?RXhKOVZvWmQzWjVMV05FVjV0cUlQMGpLZVFHYmdlMzc1c3EreG1QZktnWWhH?=
 =?utf-8?B?ejNjSCt3U0U2RmxmKzhaMzN2eXhYeEE0ZDNyQmM1TFpzU3M1Y1BINzYyZyt3?=
 =?utf-8?B?MExqRDNUYmROVC9VVjFSaDNIdmlEMFJheVFRNlU2dkh3N1ppWU9HelUvWHZ2?=
 =?utf-8?B?WHZwSFgwOUZacGRLblp3VDlHYUlKeUV5c3J6eURkeE5GYUNHWk1OWC9PRzBz?=
 =?utf-8?B?TWo2TkdRRUtlMEc0YklYbVA3UlJqalBISlNFMmtsd2xkSHNuREJoK0FtWXFS?=
 =?utf-8?B?U3pQZkdRaU5EKzh2ekhyWjE1U3gxSmdhSVFtUVprQ3ZIdVB6ZEw4NldYTWpq?=
 =?utf-8?B?SjNhVG14bnVtQW5nVzJCYWd4SEN0TE1FSWJvMFZ2NDJJWFlyUm1kdEJFR3Jk?=
 =?utf-8?B?cXVzOXAxVWQyOWRvRUQwY0lvdVBLR0p2d0Y5SElFUHNWTUhocWtsZ014WWYz?=
 =?utf-8?B?Y2hLczRSWUFDdVp0bTZ3d3NDdWtPUDkvR1FvREE3Z3JDbUhlSkdxQmR2WkVH?=
 =?utf-8?B?akVLaU5STm9mNlBVb1AvNHVXQnVDenVObFpBdmpPWXpxRWtFMVlHRkQvQ1ZU?=
 =?utf-8?B?TXlxN3dDOXZyUGNhditZU2ZLTGYwdmZVRVlFejZ3WmN2R3lmOVdKbVgwWVdS?=
 =?utf-8?B?RWtGOVdyUGV4NG9XK2IzcENQVkVmQmlDOFJRZlBORzdEYXFkakczNENWam1L?=
 =?utf-8?B?eWFsbDNUelNkT0NXTmdOYkdIVUlOdjB5ek9MeHN4Z1dBcXFFTzFLM0F0MTFq?=
 =?utf-8?B?Zm5ZUU8xczMrbi9NSEVnSGt6QUY2cDNUM2xCMFk0ZEdMa1RiTVNCbnpoemgy?=
 =?utf-8?B?WFRPUDc0SUJlLytmYzhxV01TYUNyOTFHanE0YkZsK0lNS2l3ckZ3UGJpaWFH?=
 =?utf-8?B?QWFrS3I3TkVjT2poZnFmOTlUU3doREtLcThhYXVxOStDWWZDMkxYaXpEcWtD?=
 =?utf-8?B?MHozYldmQXRIaWJLUnpIUURhZGtLWURhVlRVY1l1T3VBTUl5Z3FraHh3VjNS?=
 =?utf-8?B?Q1puMG5rc0F3WEQ0VG54c3Fvd3FPeGFyVDdwUUs4UVBPZFJYZWg5ZXF5dVNp?=
 =?utf-8?B?QmU1bXM4Yy9hNUhBNlJkOGdrQnhxZWs2Y01HckNabGtEVVdFenc5cENjblFy?=
 =?utf-8?B?NzRCaFp4djEyVVNVNVVVVzR6T3pacGM1V0FqZGh6dm1jaU9UTjB2ZTZtTDBP?=
 =?utf-8?B?b3JpVnNVcE55MFdOM2pCMExST2lMbHBOaXZ5ZFJtVTRDbkMxcmJ5WHhrUW9w?=
 =?utf-8?B?dnl3NjB1bVFnMVU1TVpnQy9rNUpCRCtxY240ejIwRlVqaHVWNHYvM0dYeDZ0?=
 =?utf-8?B?VWFPS2xqUzA4Sld4Sk00Vmw0czd0QXJFdTlOSUNrWS80Y2FIRUtFWG45SGVP?=
 =?utf-8?B?TWh1WmtoUmJXeEJ5aWNPa05wVjlJUTBTeGhrc2ljZktuRktJVkRpNjJTNTlX?=
 =?utf-8?B?SFBpZ0J1Rm9seS9KS1l2ek9uWFJrdEN4WXN5OWFlU1Zvbmk5NnJxMnpWY2R6?=
 =?utf-8?B?MWorMzlLbHlqcU0xS3dsMDkrVm1oL2dJYXVDRys0Mlk5MTVKZVhEWFc2Yklk?=
 =?utf-8?B?ZlVqWUg3OWEySVVSdCtQdUR6QXFid1VOKzZnNDZtcUhZZjhJdUgwN1p6OSs5?=
 =?utf-8?B?K2VvdU14QlFxSGtiZkh3b2Z3aC8vbVBXbnhmUWZ2SElyUVFEZVY2WlhwbGNO?=
 =?utf-8?B?TXNoMm1OUEg1ZUU5eVpaY1N2dHp1R3g3ejNRV0MydU1zWWpvRFhueGdhQUU2?=
 =?utf-8?Q?biesJM6KNCI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWdNMlNMVWtDeHZPYlAxbXNaWjg5ckNyZXd1b3hLLy9IVnF3bHp5WDhjaHFl?=
 =?utf-8?B?bkpMc3BJRWFmaHVQNVVVMlVJZGFEdENnVGVPdlBHWDNuWFI1bXJRWFlHaVJK?=
 =?utf-8?B?YmsvUWcyeTQvWE51dkxrYnM0djZkY3VaVFpWRjhIQ1RGRVVpS0dSSGtLT0o3?=
 =?utf-8?B?cmR2Y1pIQ3VySXlqNDlTWm5oS2hpZXg3ZFFRaXV6S3JCMGdESE0rczZOelVG?=
 =?utf-8?B?RVlxcGk0UmVIUHh4RzE2L0gzT25zajZsQmtvemZtYzRoVmplT0s0d0NHRm4r?=
 =?utf-8?B?RWRsSmtVaEl1U0pqVFBBVlltNTlJdnljQ2tLL2tiSnJkT3BPNFNmVkl2a3lC?=
 =?utf-8?B?VHNLL1kxQVZwcHJQTHh6ZW9VYTJRTnJzREZNOUllTVhUZ2lHWDRCMjBxZzVQ?=
 =?utf-8?B?Z0JpQjlMbzVVMXBkZGxodEhzVXZNMDdKUVJnd254R2s3bzZjN3pxdnZsMHBF?=
 =?utf-8?B?TGttM1Q1K281WWJxVFhocDQzeDd3OFRBODNwN0NvUFcyQVg5UU1BYjlMOVlX?=
 =?utf-8?B?N0NUVHNzUHgwdEtjR0dDWnFNVUE5d2swWit3OTNPcHlqcUpzNmUwcU4rRFhz?=
 =?utf-8?B?WWVFdkhhY09OWHFTMzg1VEpJN21TM1FDRmVHaUxtRERGbi9YQ0RqMUo2Y3hh?=
 =?utf-8?B?emNsWkNZSWZlTEE3QzBsNFRpTHdya2Nva29OTWwrTmlMOEF4L29WREJYa05P?=
 =?utf-8?B?S3NwTDdPT2VPMDBBUnZ0SGcvUU5YSVR1NTRwZld5akJtZmhHaDd0VGFTTFNN?=
 =?utf-8?B?YzdFNVVjUEJKWjdFTVpnMkV1L3VtL1dqQis3MHh5WU5yNEFlSFN1bXdXajBB?=
 =?utf-8?B?ZHVVSFd6OGtscVQwcXNzblBKUksxNEMvOHNJWG55OFp2QUZ2cSs1MFhYdmJE?=
 =?utf-8?B?dVVES1VCaVJrVStUS01ralRHS1FZcmwrUW5zZmlPQXIxQU1keUoralVoam03?=
 =?utf-8?B?QW1JNFNSVVRaZW5Xc2wwZmtPbzhJY1R4UmRzeDc2Vk5sUXVjbWdiL1U3U1Jm?=
 =?utf-8?B?QTVvd3RxL0RBWkZPazVGekJVWm1IODhsRi95MU1DdmJ3bHFJdWE4ZGtlVmgy?=
 =?utf-8?B?SG5zaEkzdFgxM2FuWU5hcFd2Mi8rMTkrTzNJRDlKckZDWGRJaVZnVUFicE9G?=
 =?utf-8?B?OW51Wk56ek92REhZYTUya1QvYld1RThsMUg1c2xtWHlZU2FFMzdYU25CbUQ5?=
 =?utf-8?B?QVNQZnhKV0V2QnZJY3dzc3FzckJMVW5QWGtSekZFZGlJbEZUNG16M2I3a210?=
 =?utf-8?B?L2FTeVBsQTU5M0kzL1NjUkVlWkZyRFV5eWRFam5ZVEdtR0pDQloyUm52RmJO?=
 =?utf-8?B?Q2pDWDBTK2YrQ2Z1SUJ4bnhnSGFtcFlhaW5XNTFsVGZxakFCdjhTOUtZNmt2?=
 =?utf-8?B?OXBYYXNtR3pCeDZTZ2Z1ZlRkeGdwODA3YUxPVG5UdjByYzUzWUw1SGdNSURT?=
 =?utf-8?B?VkpWVy9QbDVDaEZmWWNJeHhLcW9DdytaN1dpVFlJa3dqWERZbmFHdTlWcTlp?=
 =?utf-8?B?cHJWdDYzeEZiZUlueWxpY0p3VHA2dHlPc1YvdHFGeklPWUNUaXI1TlpFWU0v?=
 =?utf-8?B?enIzbjV5OE81RXo3c2hBeXo2ZFJ2bU9FOVlBb3Z1dFpmUXQxZmNXWGMrOUha?=
 =?utf-8?B?WEhsZGdNVkgrekV1TVFVL2FmRWxjVVZtMHJLSko2Sy9BcDhvbEVsQ2JaSjFv?=
 =?utf-8?B?OS9zS09yL2FObGJoWnB6ZWJ2SE0vY0JqTWN6bEk2cXBWVmhEZlZjajZlNGNq?=
 =?utf-8?B?WW1IcXYxdjFXa3pIbkNSc3UrakUvRCtmcWNJT2lFZjN0aUtDUGZ0akZrVXov?=
 =?utf-8?B?Q1prcU1xZGtYbGR1SjFJYUY0N3UzTENZZlFKQTFPV3lOTVJQVitkNXFvc05i?=
 =?utf-8?B?eEdHa3NSSklvdWRtRU5OZ2VYbzM2cXQrWlB6aElJbnlQRFY3aGdoTGk2Q3k0?=
 =?utf-8?B?Z0VRaXZnbkFpQjBIMUhHMGJmSE1XTFVqMk9TMkdCZ3hsczk2NXZPS1J3ZGFy?=
 =?utf-8?B?WFJPY0preUhCQjNab2E4SEVhc3hqd29LYWJ4Q2RpLzlIQUkxNzBJdGF3Z09V?=
 =?utf-8?B?Z2wwU29PSUlhNkZMV2VlREJUQzRaU28wRTg3YTk3Zk9QdzV5WE1sWG96NjdQ?=
 =?utf-8?B?c0c5Yk84MGZSSVNjQkkzZldyVXVzTDRNczV4RE95SmxZV1RkYUtyQkRCbXpq?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b0bdf9-29b3-4c0e-de13-08dd8ce6c0c8
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:41:26.4464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q/gNobX3nuo9M9+Jp4LyYzfVnkCySFv3aZsrmIyN6HHGnb+1S2ThC2WnzGSBDXLMOX3Zl09YVDk4w8MMf/oZNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4596
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

Quoting Jani Nikula (2025-05-06 10:06:49-03:00)
>Make the gt rps code and display irq code interact via
>intel_display_rps.[ch], instead of direct access. Add no-op static
>inline stubs for xe instead of having a separate build unit doing
>nothing. All of this clarifies the interfaces between i915 core and
>display.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../gpu/drm/i915/display/intel_display_irq.c  |  5 ++--
> .../gpu/drm/i915/display/intel_display_rps.c  | 27 +++++++++++++++++++
> .../gpu/drm/i915/display/intel_display_rps.h  | 24 +++++++++++++++++
> drivers/gpu/drm/i915/gt/intel_rps.c           | 10 +++----
> drivers/gpu/drm/xe/Makefile                   |  1 -
> .../drm/xe/compat-i915-headers/gt/intel_rps.h | 11 --------
> drivers/gpu/drm/xe/display/xe_display_rps.c   | 17 ------------
> 7 files changed, 56 insertions(+), 39 deletions(-)
> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
> delete mode 100644 drivers/gpu/drm/xe/display/xe_display_rps.c
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 0d72964694ce..264ddeba121b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -5,7 +5,6 @@
>=20
> #include <drm/drm_vblank.h>
>=20
>-#include "gt/intel_rps.h"
> #include "i915_drv.h"
> #include "i915_irq.h"
> #include "i915_reg.h"
>@@ -15,6 +14,7 @@
> #include "intel_de.h"
> #include "intel_display_irq.h"
> #include "intel_display_rpm.h"
>+#include "intel_display_rps.h"
> #include "intel_display_trace.h"
> #include "intel_display_types.h"
> #include "intel_dmc_wl.h"
>@@ -876,7 +876,6 @@ static void ilk_gtt_fault_irq_handler(struct intel_dis=
play *display)
>=20
> void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
> {
>-        struct drm_i915_private __maybe_unused *dev_priv =3D to_i915(disp=
lay->drm);
>         enum pipe pipe;
>         u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG;
>=20
>@@ -923,7 +922,7 @@ void ilk_display_irq_handler(struct intel_display *dis=
play, u32 de_iir)
>         }
>=20
>         if (DISPLAY_VER(display) =3D=3D 5 && de_iir & DE_PCU_EVENT)
>-                gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
>+                ilk_display_rps_irq_handler(display);
> }
>=20
> void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
>diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gp=
u/drm/i915/display/intel_display_rps.c
>index 4074a1879828..941bff5a5eb0 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
>@@ -8,6 +8,8 @@
>=20
> #include "gt/intel_rps.h"
> #include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_display_irq.h"
> #include "intel_display_rps.h"
> #include "intel_display_types.h"
>=20
>@@ -81,3 +83,28 @@ void intel_display_rps_mark_interactive(struct intel_di=
splay *display,
>         intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
>         state->rps_interactive =3D interactive;
> }
>+
>+void ilk_display_rps_enable(struct intel_display *display)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>+
>+        spin_lock(&i915->irq_lock);
>+        ilk_enable_display_irq(display, DE_PCU_EVENT);
>+        spin_unlock(&i915->irq_lock);
>+}
>+
>+void ilk_display_rps_disable(struct intel_display *display)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>+
>+        spin_lock(&i915->irq_lock);
>+        ilk_disable_display_irq(display, DE_PCU_EVENT);
>+        spin_unlock(&i915->irq_lock);
>+}
>+
>+void ilk_display_rps_irq_handler(struct intel_display *display)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>+
>+        gen5_rps_irq_handler(&to_gt(i915)->rps);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gp=
u/drm/i915/display/intel_display_rps.h
>index 556891edb2dd..183d154f2c7c 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_rps.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
>@@ -13,10 +13,34 @@ struct drm_crtc;
> struct intel_atomic_state;
> struct intel_display;
>=20
>+#ifdef I915
> void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>                                           struct dma_fence *fence);
> void intel_display_rps_mark_interactive(struct intel_display *display,
>                                         struct intel_atomic_state *state,
>                                         bool interactive);
>+void ilk_display_rps_enable(struct intel_display *display);
>+void ilk_display_rps_disable(struct intel_display *display);
>+void ilk_display_rps_irq_handler(struct intel_display *display);
>+#else
>+static inline void intel_display_rps_boost_after_vblank(struct drm_crtc *=
crtc,
>+                                                        struct dma_fence =
*fence)
>+{
>+}
>+static inline void intel_display_rps_mark_interactive(struct intel_displa=
y *display,
>+                                                      struct intel_atomic=
_state *state,
>+                                                      bool interactive)
>+{
>+}
>+static inline void ilk_display_rps_enable(struct intel_display *display)
>+{
>+}
>+static inline void ilk_display_rps_disable(struct intel_display *display)
>+{
>+}
>+static inline void ilk_display_rps_irq_handler(struct intel_display *disp=
lay)
>+{
>+}
>+#endif
>=20
> #endif /* __INTEL_DISPLAY_RPS_H__ */
>diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt=
/intel_rps.c
>index b609e3aa2122..5abc5fcc2514 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rps.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>@@ -8,7 +8,7 @@
> #include <drm/intel/i915_drm.h>
>=20
> #include "display/intel_display.h"
>-#include "display/intel_display_irq.h"
>+#include "display/intel_display_rps.h"
> #include "i915_drv.h"
> #include "i915_irq.h"
> #include "i915_reg.h"
>@@ -608,9 +608,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
>         rps->ips.last_count2 =3D intel_uncore_read(uncore, GFXEC);
>         rps->ips.last_time2 =3D ktime_get_raw_ns();
>=20
>-        spin_lock(&i915->irq_lock);
>-        ilk_enable_display_irq(display, DE_PCU_EVENT);
>-        spin_unlock(&i915->irq_lock);
>+        ilk_display_rps_enable(display);
>=20
>         spin_unlock_irq(&mchdev_lock);
>=20
>@@ -628,9 +626,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
>=20
>         spin_lock_irq(&mchdev_lock);
>=20
>-        spin_lock(&i915->irq_lock);
>-        ilk_disable_display_irq(display, DE_PCU_EVENT);
>-        spin_unlock(&i915->irq_lock);
>+        ilk_display_rps_disable(display);
>=20
>         rgvswctl =3D intel_uncore_read16(uncore, MEMSWCTL);
>=20
>diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>index 3ecac0a38b82..e4bf484d4121 100644
>--- a/drivers/gpu/drm/xe/Makefile
>+++ b/drivers/gpu/drm/xe/Makefile
>@@ -187,7 +187,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>         display/xe_display.o \
>         display/xe_display_misc.o \
>         display/xe_display_rpm.o \
>-        display/xe_display_rps.o \
>         display/xe_display_wa.o \
>         display/xe_dsb_buffer.o \
>         display/xe_fb_pin.o \
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h b/drive=
rs/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
>deleted file mode 100644
>index 21fec9cc837c..000000000000
>--- a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
>+++ /dev/null
>@@ -1,11 +0,0 @@
>-/* SPDX-License-Identifier: MIT */
>-/*
>- * Copyright =C2=A9 2023 Intel Corporation
>- */
>-
>-#ifndef __INTEL_RPS_H__
>-#define __INTEL_RPS_H__
>-
>-#define gen5_rps_irq_handler(x) ({})
>-
>-#endif /* __INTEL_RPS_H__ */
>diff --git a/drivers/gpu/drm/xe/display/xe_display_rps.c b/drivers/gpu/drm=
/xe/display/xe_display_rps.c
>deleted file mode 100644
>index fa616f9688a5..000000000000
>--- a/drivers/gpu/drm/xe/display/xe_display_rps.c
>+++ /dev/null
>@@ -1,17 +0,0 @@
>-// SPDX-License-Identifier: MIT
>-/*
>- * Copyright =C2=A9 2023 Intel Corporation
>- */
>-
>-#include "intel_display_rps.h"
>-
>-void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>-                                          struct dma_fence *fence)
>-{
>-}
>-
>-void intel_display_rps_mark_interactive(struct intel_display *display,
>-                                        struct intel_atomic_state *state,
>-                                        bool interactive)
>-{
>-}
>--=20
>2.39.5
>
