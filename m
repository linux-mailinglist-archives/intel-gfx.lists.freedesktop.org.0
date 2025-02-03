Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12B1A25B25
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 14:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3D410E4D6;
	Mon,  3 Feb 2025 13:40:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCT413q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D4210E4D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 13:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738590001; x=1770126001;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=1UzBWbkZneB+Nnb5paZb1U10qsnQ5IGD1n7QrqvAtTY=;
 b=PCT413q3csILcYRFUMo2BkvmyhTLEmx5iINxJsJyYdsXaB6EhQX6Ir5K
 fGnSJuQA6z70KHSDW8wdTeWbY8Ie9WhdoGJ6o9+Av5eBS10cecXtFb5jg
 jWCgClF0iDwKgbsbwGN9jJTcqpq0phrxzGnpt6ZXQFFuLopbIb/VmnXef
 t+eRa46S6VKZB8uYUbv5seVp/WIUat2oXU8BNNjSz87LrwUvu4pRDlHCL
 vIxMoajZLDDoA5popuzcSL8KZO20bSbmytAaezQ8P74kEeANMPB0Z5Heh
 GJxjrw6MVhXMfhSOYC3xG/nSwimT35v/7wQHIvutzb72/vK0xwp92YRa4 g==;
X-CSE-ConnectionGUID: HBt9luibSdmhrQ0ZjX/TVg==
X-CSE-MsgGUID: Y/W6JzvhT8qeG3FeFropww==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49337521"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="49337521"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 05:40:00 -0800
X-CSE-ConnectionGUID: /V0bNQ2CRD2NW9T0OSDgEA==
X-CSE-MsgGUID: BnoJFBmPSF2uFW69J6lAwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114910261"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 05:40:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 05:39:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 05:39:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 05:39:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UEDoguKr78ZqtmXSD0pHurMHgZv0uB7I3JszB+HKN6yh3mFSzihAuDGNoiGuCzy4IelxlcAqhoyXS15AbEsiF0Rxd5sfonkotowMI4QADjGBfC+9au8XROiX9JOqPT3/JcoQOrl8TxYAIijeDj3TZt8oopKWf8F6xJ+gDi1SQbOLZQ9/yst+iQLD377iFjh+SiKkeRT0TtYMDI8+bR7gT45DbF1u+ZbbxaO7HzyVg5iT53RiIsX4nswfoqt2bjyGnMqeuQ2CIfPffxYcGdbi6b0c9RzKb5Act9PKdbTyxZjcACcdxQUWpVx/aHD4j+/G4xsz+PquHr4dD0CvDzMtTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UFrCLHy60fDtTlPxzPOep1OVoBVMJof1fYzt9wN1l6o=;
 b=ut2r1h65ORQa48dE0m3fm8oxjHKNKLBr0OoK+W29bH6bHk1twphb0hn9b9sA7YkUKyrRe681WqHzSCAle5RYEYwbjN+8U9p//DGaT2g8B+ah7eWUq6nRDlgi8LN3/sp1kS5xB3+li/nkHcPNFHOnG7hlRJ3/Q3eb65IKdnN72UHgm+PPPdll5YxinMyHSzPcY+HnwiTYGOt1KUUBM56JA0lFmEaRsakA/ZHd+qa9LsL1K9AaSj6H2d8P6aNLjEPbZSqyWbQTZx/t7X9C7G6VHl+GogcYtBJoLRUcLe/Kd7Klu8SITxg/j+zNJGYM8t+yWX3cguXDLtBVb50vuGJ+Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA0PR11MB7306.namprd11.prod.outlook.com (2603:10b6:208:438::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Mon, 3 Feb
 2025 13:39:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 13:39:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>
Date: Mon, 3 Feb 2025 10:39:54 -0300
Message-ID: <173858999403.77773.2784787564938835855@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0155.namprd04.prod.outlook.com
 (2603:10b6:303:85::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA0PR11MB7306:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b48ac02-e1c7-4672-a696-08dd44583fab
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmFnbjJNd09LV2lEOGpqK3YvcTIwT29vNWhVZ0tGODg2bEltZGtHVFZKNmho?=
 =?utf-8?B?RDkyNEp4QzdvYjVyRXFaTjFtTEJGd3E4ZjVRVjBreDVlQklZdldxY1N1ekxT?=
 =?utf-8?B?RWU5ajNxTzhuc2xMbHYzUWJZSEV5OTBzcTl1ZUNIbjdHak9pYTZMYnA2Y1Vu?=
 =?utf-8?B?UWpheXM0V1E5STFXN2I0ZklPc1F3SWZpd1ExcHE0bWdXcVFyMTIvbWxCZGVS?=
 =?utf-8?B?WFlQZ0ZVR1dyNTVnR1NLRDFWVG9mYWtTbzlHeXEyK0hNRzVFWmNNUW8zMmU4?=
 =?utf-8?B?TnB6aGplQzVkUkUxR1pkVjBQVTJGeVhKekJUeVpMb0Vna1ZEeHhEOGtvaTVY?=
 =?utf-8?B?Rlk3K2U1Q1dzVzhwY0xwb3NVU3I1c3pjOWg1WHp1M1p4aW1JSnNSMVZBYjRt?=
 =?utf-8?B?d1ZwYTYvVDgzOHJyK2M1MGNUSXBlVTRXNVU1aXpXM1Nub3U5QXV3Mlo4SDNx?=
 =?utf-8?B?bll2WlhNUUVoWDlJR3JFYWxFK3VqS3VjYUZDMzFMVGhrRUdOTWZ1Yzd2ZElD?=
 =?utf-8?B?NXhyN1hxUHJ4bnFiM1Z2S2NlUzQvRFU1OXR1NWhkVzNZR3Z1Y2pyYVNRNS9l?=
 =?utf-8?B?WmVKNGlBMVlveGRiL0l1bWR4RHZJQ2tmelFIcGZoaG1nQUNsM3ZVNGpON2RN?=
 =?utf-8?B?MXlFODE5a1E4K2hocHJrVERLQUU2MEZML1U2dTNTbVlCZnJ4YzErYnUzbDdl?=
 =?utf-8?B?UTJCbTlSOEQvTGliNVpVRjV5bUFtUGI5ZVlhWHNUV1hrZjY4d0dHMnJqVTlW?=
 =?utf-8?B?ZnNQM3RTcjRkOC9MVm1ZYzVtQzFkMzM4ZCtsMEgvZjJWZHZ4MTRRSlZjKy9l?=
 =?utf-8?B?TUpYM3QrK05LdFl2YlVTSmtDYW11Y3hmMVVBOGIvRkZibGlzWlJUcWFCWDEv?=
 =?utf-8?B?eEpya0loSmV6QVp5SVlnNzNJTHcvWGZCdlBqb0orb3NydGhBSEc1ZE9Md1hz?=
 =?utf-8?B?RUE5c1hicFVPcnRxWnVDS1hvV2VuSTI1VVF5Y29iRGJ3Snp0aXVhWGlNVk1s?=
 =?utf-8?B?TTI0NzdyeDhVUVRFUFB6cndrdmZ3WWlqeFpqTjVnNGFoWjArK2hlaXRtY2xV?=
 =?utf-8?B?QVJRR3BjUWJSM0ttelZMeUJoQUYzeTcyVVgzS0FQZUhqb2Z1L1lEdkZJaFpt?=
 =?utf-8?B?andLK0UwZ3h3UjJjckMzRkQzd2Z0WlpaUE5hdnAwQlBFbVNCbmV6OFl0K09V?=
 =?utf-8?B?UGdVQmhDQ0dUZkQ0WVZPSzN2UFNYdVU3a2piOHRPVkJDSnF2U1BSTGs5K0ht?=
 =?utf-8?B?SFpKWm5TNnUyY1NKQllDVUY3ZHRoeEora201YUo2M29SbXJtWWdqL0pMOVpn?=
 =?utf-8?B?bDNBL0lqY0hyMW5TV0NvSkdCcGpVNGVmdVF0NjZqTzVGcWNzNEpXSVJzU1I5?=
 =?utf-8?B?V1IxMHJHVHczTGRGb01razd3amZtaHdpbEFEZVZyM016aTJTdXJjaHlWcGZH?=
 =?utf-8?B?OTdya3ZjNERCT0h0M0F6SHNQU3d3TDR6SGhmcUxsWXJVbVFscEdRTVZsWXht?=
 =?utf-8?B?TUlWODh4VlBFU3Q5cklpWHUxaEw3TU1XcGpHNlBkMENOQ1RJWkw4V0ZPdm1Q?=
 =?utf-8?B?MEZRSE5wNnY1aWd3VEhJS3pTVlErSTN5angrbitQc0l2K3VOUndpYnc5SGhn?=
 =?utf-8?B?QTViak9JakZjeVlUSHFLZG9MenZCSkRNS0x2UytFaDJQRTJ3ejRqVkRZZnZp?=
 =?utf-8?B?S01PejdRU1RINUNNZDR2Sll5UG43cFh2cS9raVVsNWZORFJzK0NaVlc2ZUV5?=
 =?utf-8?B?d2FzNXF4WS9ZYmFUTEp4b2NqZVFjeW9IR3I3T1VBT2Y1VlRxZ0VvaG1iT2tT?=
 =?utf-8?B?b3ppZyt1cklZS0xrZVpWZERmSGZzT0g5OGFDN3AxcmRqWVN5eGt3cGx4ZWRi?=
 =?utf-8?B?RU5BcTVkODVtR0F5eE05bVZwMksrTkplbWl2TXVzbkxTa2dpV0VhaktueFBV?=
 =?utf-8?Q?xZkMwkaWndT7rtcq83UTRSIfn9guTS/S?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjZkdi9mbVlYRVd2ZnJhSTFSeGFRNHFMajBKdFh3eWdMdDMyZnoxOC9LUzAw?=
 =?utf-8?B?ODd4MWF0SjZ3TjJyMlAvQnA4MHJRcVMyZXdMTnZlSnlSTG05ZlpGOW15VFZh?=
 =?utf-8?B?ZmhUZ1Jjd3N2TXdheldaWGU3WElwb3czdWNiRTJCUUtpUTZPaEpxaFhpYnVM?=
 =?utf-8?B?V2xWaWNYVDVMMnRQalRjcE5KY2dRa0w2NWhHMUxwQWlpamZGeGZWU0ZHc0xI?=
 =?utf-8?B?cmhsUVpkclRLNkZlbXdQUmJZY0VpSitkcElUR2lMY0QyM2E2czZ2NHAvVnZ5?=
 =?utf-8?B?dWlMeUhlb0V6MWxIclpXK2RsL2JZRmdLai9lczc3WCtsV2pCa3JWYVh6aWU5?=
 =?utf-8?B?OVJDbktNRFYvSlRoODFINXg5QnRVUGQyV0JhdkVSUDQxU0p5RnorUDcvekdn?=
 =?utf-8?B?WmRxSWJMRW1UMDFETkF3ZWloYkdCbmtXU2RDTHZMZnNPdFJmYm9JcXZwUmF0?=
 =?utf-8?B?bFhCaE93ZHgzejFNdDk4N0k4Y3E3bjFVejdYbHg0QWsxd2Nkd0dJaTRiT2N4?=
 =?utf-8?B?UnNrVm0vekZSUHFkSVA5YWJXNkVwYWRGRkVCeHllWVhXSHQ2bGNyLzFqM0x4?=
 =?utf-8?B?U1BvM2F2b2YyZVNpcHNBVlhKZzE0Vll4dXNlbjYzUTBHbjUyM3l3dkIxUnZa?=
 =?utf-8?B?RUdETjU5RW9tQlhGSkhCYVRrcFVWMmFPKzlnd0V2YmxEWGVnMzM5Rm9zb2pz?=
 =?utf-8?B?RklQR2o0QVFQcHQ2aEFlQ1dQRm5rOFFZNkFZUnhObXI1bExVdTRNQ2N2ZnVu?=
 =?utf-8?B?N0U1aG1HL3ZaakZZTVFwcllCbG1MdmN6MDNudnZ3L3RPblQ4VDdRWkR6Vkpz?=
 =?utf-8?B?bjJBNHh0ckNLMHhVNzBBRmRFZDdzRUlDOFdjcFp2VGI2VFNWN1ZCaENrMlhZ?=
 =?utf-8?B?R0JnN2NxZ0IzSjlnM3JLdUhWOVYrQnpaMm1QVlVXZlpyeThBZGowZWd2Y3Z6?=
 =?utf-8?B?Q2djTkdvejJ1Wmg0cE1ld0NLWGZGa1lyNkY3a3V5TEFEWWxVUy9sNGoxZEpK?=
 =?utf-8?B?ZUlFNG04VGMzWG02OUxZekVQTDFUbG1RSHpLbEg3VHhESzY2VXpmV1NJaGpY?=
 =?utf-8?B?UW1tWWh5SGxqSlJqV21xb2RZVlQ3WEh1UzRpWk1VZzI5SEhtcVRzZVdFRWdL?=
 =?utf-8?B?MGxkVEFVdFNTR2JIV0ZNcW5tU1pYUDBEMlhqTXM4WVlERzBYRzJ3d2xwWUV5?=
 =?utf-8?B?WVF2WHE3M003ZGhEN1VEZWVHMDlGQlEyTzhET2xycXlPWDAwZ1g5MXNQVjNO?=
 =?utf-8?B?ZFQ1MFp1SjdhVGt2MWw1YmRHSEx0Znh1VVFnUTNGSFp3T0F6aGQ5NGdVT29m?=
 =?utf-8?B?TWs2RkFEYi9lRTdiZVh3cjlvMTZQYVJzajhIZ3Q2YjdHSVVrRWwvOGR2VGNh?=
 =?utf-8?B?V29kUmtSdGl6bVRrSTI5bEZUUXVlSG50WHpWcjVmNVhKWVBPWE9scldyQ1ZN?=
 =?utf-8?B?UE9aMkV0TG5PdG9xYW0vVkxkdTQ3dWRONDJKT3h3SXVFUXRLK3NQYWNhcUdk?=
 =?utf-8?B?SGZwL3pBQ2xLSThuRnc5WlFCZGFIclFydEFTYjhsZkdVSTR5NWFwb25OK2RF?=
 =?utf-8?B?Y25SYzYvek5zTEo3YnYxSEVKRVIzQy9zSVZLSUtJd1RpdFpQVkZkRDdHVkUv?=
 =?utf-8?B?U29YbWVmOHNwcjdMQ3d2SkhsUlZGT3QxYWtpbVNST05XSkZkQTdDL2ZRMExl?=
 =?utf-8?B?Myt2ZC8yQjBuRGt0R1pCdmVKVndyekpEdWZBNEhaVTdWWndjMWpzRWNhZlRq?=
 =?utf-8?B?WThFOXFCVGViLy9GajlVOHhYMWIxcm50WVpSOEIrcUR6UWF4N2s3dlA5ZXRl?=
 =?utf-8?B?c0xkcnprOG5UVlpqYklJTHRwc3NTQkoxVmtnSTVmY3dhSUllUURDbURxRngy?=
 =?utf-8?B?RzF3ZGtiVHp4VEdkVDRNZmdiQ2RlZ0VFamoxa2hseGY3UWo2SCtBVEFMRUl0?=
 =?utf-8?B?WlBlaEtUbE9EVjFvWEltU2ZiUzdydTZEeHJseFF2L1hNYW9PK1lTYk84LzZE?=
 =?utf-8?B?MUE1T0ZMand1UHhFaVVDOVBteFpEd0p5MWlPbUJON1pKVjJ2aXJpRVpCemhz?=
 =?utf-8?B?bjd0L3U5Yit4RzN4cExPL0VmVUN6YU5qeGxiWklaNG1pZFgyQmIrWlV4eFRS?=
 =?utf-8?B?d2ZCcnlPaGpsdlNsTDlVeTNYdEgxN1NITVZocFg3U1I2azNNNUpZODFpTjFQ?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b48ac02-e1c7-4672-a696-08dd44583fab
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 13:39:57.5210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zp5R5aTnlzqt1aEP7J5VmdSC7YeO8vVWqZkeKLW5CW4C2aDrNJoUGNBpxblkl6uChkDCj4jL+JKPUhpymOnLnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7306
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

Quoting Imre Deak (2025-02-03 09:43:38-03:00)
>On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
>> Starting from MTl we don't have a platform agnostic way to validate DC6 =
state
>> due to dc6 counter has been removed to validate DC state.
>> Adding dc6_entry_counter at display dirver to validate dc6 state.
>>=20
>> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
>>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
>>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
>>  3 files changed, 4 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers=
/gpu/drm/i915/display/intel_display_core.h
>> index 554870d2494b..cc244617011f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -376,6 +376,7 @@ struct intel_display {
>>          struct {
>>                  struct intel_dmc *dmc;
>>                  intel_wakeref_t wakeref;
>> +                u32 dc6_entry_counter;
>>          } dmc;
>> =20
>>          struct {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_well.c
>> index f45a4f9ba23c..0eb178aa618d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
>>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
>> =20
>>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
>> +
>> +        display->dmc.dc6_entry_counter++;
>
>AFAIU the goal is to validate that the display HW can reach the DC6
>power state. There is no HW DC6 residency counter (and there wasn't such
>a counter earlier either), so an alternative way is required. According
>to the HW team the display driver has programmed everything correctly in
>order to allow the DC6 power state if the DC5 power state is reached
>(indicated by the HW DC5 residency counter incrementing) and DC6 is
>enabled by the driver.

Yep. That's what I learned as well when looking into this stuff a while
ago.

>
>Based on the above, we'd need a DC6 residency counter maintained by the
>driver which is incremented if the DC5 residency counter increments
>while DC6 is enabled. The dc6_entry_counter in this patch is not enough
>for this, since it doesn't take into account the DC5 residency. While
>user space could check both dc6_entry_counter and the DC5 residency,
>that check would be racy wrt. the driver enabling/disabling the DC6
>state asynchronously.

I'm not sure doing a driver-maintained dc6 entry counter would be
something worth implementing. Even if we have successfully entered DC5
and, in theory, DC6 would follow if enabled, this would be a synthetic
counter and it could be masking some hardware bug that could be
preventing DC6.

On the IGT side, we could just skip if we are on a platform that does
not support DC6 counters, at least while we do not have a reliable
alternative way of checking for DC6.

It would be good if we could detect that PG0 was in fact disabled, which
I believe is a stronger indication of DC6.

--
Gustavo Sousa

>
>I suppose the driver could take a snapshot of the DC5 residency counter
>right after it enables DC6 (dc5_residency_start) and increment the SW
>DC6 residency counter right before it disables DC6 or when user space
>reads the DC6 counter. So the driver would update the counter at these
>two points in the following way:
>dc6_residency +=3D dc5_residency_current - dc5_residency_start
>
>The commit log would need a justification, something along the above
>lines.
>
>>  }
>> =20
>>  void bxt_enable_dc9(struct intel_display *display)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>> index 221d3abda791..f51bd8e6011d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct se=
q_file *m, void *unused)
>>          if (i915_mmio_reg_valid(dc6_reg))
>>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
>>                             intel_de_read(display, dc6_reg));
>> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_c=
ounter);
>> =20
>>          seq_printf(m, "program base: 0x%08x\n",
>>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC=
_FW_MAIN].start_mmioaddr, 0)));
>> --=20
>> 2.43.0
>>
