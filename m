Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEusLOdm3mmxDgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 18:10:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CAD3FC5F2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 18:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0A010E613;
	Tue, 14 Apr 2026 16:10:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ee0OPdWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A3910E613
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2026 16:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776183013; x=1807719013;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=S6lN42ZIsdOkM41dyMPWIFQ6N5URkZC0yAp3KOnDx5k=;
 b=Ee0OPdWQdFYdLVTH9IoeCjt71he9oQS30lD2+QNJzRmpXRZf1HiZ4S09
 PFir3njby8gFct0Nq9ms5M7FVfqfXkWnWMkz77mzINvTwd47Z6ZTgD6Wx
 aL51z6lFHEYbkQ9FwP6Py7qQGFa65PD8RVDWgTNW/fvwgycqqwTq/wm0L
 etUvWgs9C2z9xoEvWZmKvEP9KoYe7jZ/OOWximLA3sQKqCA8rLoHkiOp+
 mAcJZPi0KE7QlmEAkrNOcJ2KqxI2REEuN4DYsj95O6WjUrMVI4ssw4tbs
 g823cn2NNoeNJ5Vm/HkneAAU0OHpXP+BbfIubrVVm2esKq1TDuHMJcPFo Q==;
X-CSE-ConnectionGUID: uVhW9lJ/SBGZ/dXamUid4Q==
X-CSE-MsgGUID: oLzV45eGSXG+UVXS1elmzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77023789"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77023789"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 09:10:13 -0700
X-CSE-ConnectionGUID: Z+EAOfbiQj2TfbCJfahmAQ==
X-CSE-MsgGUID: SWURhIT9QPm+OIc/AbFrSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="260573762"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 09:10:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 09:10:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 09:10:12 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 09:10:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nKjc5D1LLtTcYzWIOr8gzq5jobq8/Ug358uP5IPw0EWkcgpG0Aes2qv9IO7RLC6kruCF/oaXfHHMjiG8Uw8z9IvxIz7Bc9dHrWkiMiOIp9eE1fLsHaKgKHDlC4I1QMR0JBFl2dVPRsslXXwJEx2Yyh8hTtu+6eT8Pqys16FyfCEOIrsHokM8hj3RzySKgmMTeniB8VccMp5ELcziNaJzy5a9eogwkqx1nRzkDm0lSNoWbk9MdX6FzpEZpBj18apD2yk3sjLGvYpRm5hwyrlKBaU+MV5Rvi64HWJjyBOujT2XiRHBkHyVbIEMkCvVct5uRTo0r361UPjJHi1Vnw9/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IXVSG2cQPRkTpXet6QBlLlfsbkphqFVITtV95YOWrqk=;
 b=WiX11kHZ7++B91l5awyhLK6X7gALbyUo30tU8RkfysrnAngiG9p3HUm9Tux0RUd0HhV694KZwxXZLIlVhTRVQfgonBsaCetmfeDgvM4M2U+pmswmV16JzczhR0Ds9bmNOos+DV3IEYP2SN+EN/y5NyK7AH4vNV8k9DtZSKdbKwfvRDa1SontE4JF9aFaFh41TOPlVp1KBRwMrKYCu4p+Z7VjcYetWsNcIEdiY9+YwfM0pJ8KD+6eqTK9CMRrbvS/f5q7DCHYKaryOqOccLW5yBgfQJnDM7q0VTBl8rPct0NZOF7gMt6baMwC4HbFo2RKTHD1JEvtJavMbDj7hz4vnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6417.namprd11.prod.outlook.com (2603:10b6:208:3ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 16:10:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 16:10:08 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <87cy06wm89.fsf@intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
 <87ik9yx4kx.fsf@intel.com>
 <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
 <87cy06wm89.fsf@intel.com>
Date: Tue, 14 Apr 2026 13:10:04 -0300
Message-ID: <87mrz5wmjn.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0040.namprd17.prod.outlook.com
 (2603:10b6:a03:167::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6417:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ba468b6-548f-467c-2878-08de9a404c77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: qeovX+IDdY/+SPXUar8h7zQw4kz6JugolpBJyhPaTfoDePZb3VGYIN8sVHPMuRA2BJ5d3Q89LfDcl6yPNbf7w2DKsjs9U7u+xCE6jnrB71GQwvxRakHBRHRJQ0Oz7DEDTpHnfKIQ2jPqb8oLnBZthvfNc7tiUFSsULf7Vt2qxGjzh5LumC01Yhd50J6N7sP8RkyPw1AzvdZd1/SYHNFEPIuuCH781TYH72JM0ItJxJ2gSibXt7I7sHgMhA7+FDR2lYwoo9aRlidHGQtQmR/cE3W86utcdlgS9dNCn8LmtfkKbjIs/2TB6KxvpusTIEN6q2tHSRMB/Tygu+YNbWVIml57XGDRB1SR6CAx0sudeNBtzn/iolv2k3HJKEJmWfMerZ3YKq2wYw9LODnN3yRuX2IHfRhFtKiATYygWck/fNRQdGOSpsjqmY8BkM0O7wEgr7YskSeZyZXG3jLu8dD3fhSZAZCqj+/G0jQhahk+CEkhbOKNcbFuqjHhoSCwFP9RoLmvjgi6kA+iBIhJf1RRSe3s2Oascvc+I4P9BsV6TIAfX6OwS72/EPVns6Yalv+pCAyUw+jmIns124giSelLpHGH2WdDK4Zo8m8wqcPUiTYRSiP5b/chuL8QVt+bLSThcmvcG5wrcra1mfDr3CCUyS6qie1AQNBfbXeATXOl3QESqaQ38Qz4InJyu3Tmj5WfFfK29Xm6RRmtnKDMoaLm5Gv8t3cVEunjt/6FKk6omZE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zQu9+Ol9P4TCQCPYpciOBIySMYMCo70REA3Ip4lVwMsnCjT1lOu+zR/JVB75?=
 =?us-ascii?Q?QORnVmvN8EmPx0+BzBXDw0Fw1+cKO0U3gekOmf8bvH7CU/FkkzDy1UkFaIar?=
 =?us-ascii?Q?uLHqUZvm9UGo+GvsqAgDIbZhT3fLUsfMCzzSE2KwjAjS5eNDa6OZnk0AIvDm?=
 =?us-ascii?Q?ya1QVGOzxpZn1OeIIcFYTuTRC31O74F/2/31lwKn7Q3thdl9XSOtsVbn3E93?=
 =?us-ascii?Q?RIGrOGmaWktHEqQJNMlB0pijJ/XgxTnF7VPteud8jkeN8g/gmtWDsFmM4eey?=
 =?us-ascii?Q?q7sw31/5pHCYOBeDpV3Jb3fR0GSdEpfxwGG2Z0QhqZxT3QNw+a1T6gaqsqPo?=
 =?us-ascii?Q?lb9r5s/io8Ln4YOW3RsGO7mjG4DXiSsUTxbrOkZibZySMETnqrCQENJIH4Y6?=
 =?us-ascii?Q?EX1XTn5wDoaQh30oxsxE/vrKAmQ+Z7+DmTf1t2NC1vchSO7YTgsyiinlhnzN?=
 =?us-ascii?Q?gxG32loj1MARryNMu+q2JL1lB0iEVq+1ObHETwkVLN5CrI3KDQ5X3eLsmf61?=
 =?us-ascii?Q?ee5bfKQYW4oBINF1isVUakRHqVg8vSUDtz9I/kUZMNR41o6qraw1wdCRz+sO?=
 =?us-ascii?Q?93drEaDW2pOba8d3n2xi9q3aO7sTkSblOU7UrpGYKT7U7dLbEqvv3uqVv8MF?=
 =?us-ascii?Q?VqID7EYA740CRdAL62IyzyBpcQWl2rE5w0CuU2HJZSrnKNNoRnn+BgW3acl5?=
 =?us-ascii?Q?A4lEdfWMqXn87TQEP4Xcbjipq6T3Gixi7uEiNckeCAz3p4YCkuGqMOMFCPUN?=
 =?us-ascii?Q?TSQ3JE/zl9SdZMUxGj/x5F33D5LY2wlBxXkyu3OsW71ER2VgpLlJDwy6XB5r?=
 =?us-ascii?Q?cddLvUMjb0e//w6F0+mwpS93ZdIuugFlR0vwDhz4z/wX+lgD3MGXNdwH5cA9?=
 =?us-ascii?Q?zZ3BBppWNrQi0nJ3fGaKLOg5NMLDSfcwP6uBNQItxFwPD57oiwec+dTASyAX?=
 =?us-ascii?Q?iWxwmjEGcTWkFpQwhDpMME6+v00i37ZQzqU85x/Iw4yORATzISUK1TepKSQ2?=
 =?us-ascii?Q?4QwyylD6dcXukLD/K+0Zz7UrjNanHiO0WTMaYjGX/s/yuo8ZFx+VOuL5U1UU?=
 =?us-ascii?Q?Qc07EeGDxHNqGL3vG1BRnDfap2ordT/Cnnrt243OnQ8rbQv/lsIQLMBQHUNg?=
 =?us-ascii?Q?076pHiIfWFZguVZQpcyJ2GW8iLo5eZdlfn0bGzQ493qYFlEx1vYXL3fmQojY?=
 =?us-ascii?Q?OyxkevUC/TyXJkFPpO55ob6nhF6TgTOAHJs7ImxkgruPS9m7u/CjSS8goR+d?=
 =?us-ascii?Q?GaUBCcZIvo4MSf3kDQ9aP5NFa3G4SwtkkmJ2J4Lc32FJmeBcENezgllvFM8t?=
 =?us-ascii?Q?/mOtMG1wBkwC5e3nfWzTRIqiCCo3UrzG/FIOf157sKPwptzDGJZZEgQPzmFk?=
 =?us-ascii?Q?cHWC4TR2ZINW9w6UwErxHhWr/7/IeZJmhCMdTPqef1j+L6drTy7XNyPBVkLN?=
 =?us-ascii?Q?SmCZl1wsMAa+TQ4yetiuAN/o9VHg505iZU+eIoUqZdM+mfSTB4YHZ+fZecSM?=
 =?us-ascii?Q?I8zFbYwtWojYbIYNX+feL4NpnzkgCXuDv2+AlAtQ9xypTgWihnz8n626xIfs?=
 =?us-ascii?Q?My0GLhK364u8Reh5Ubuy47aPhQS71yTETmgo2pZ+lVz4wphQ8WZZFx+bR9Tj?=
 =?us-ascii?Q?BshX1Ar9QedOcYRFCeaZx2/xaH6ZIqHbR8K7gSM9Dh0wHR23PhuICI8kOt9r?=
 =?us-ascii?Q?QLCHBgojAJ1Fm2QtEKkDqpGWI+jGQyTZI5Uuzsf5e7ecJJ5EqSuWEyPF0jKq?=
 =?us-ascii?Q?zduMUnollQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: V1SYb9iYvdhvjWsJDrIEcHF0enh8RmGlm1H2IKim9i0xEvtJ7TTjRgBCOQgHXXlH9+5tnKliIIczb+5L8NJZTKRhgW9XoJVJ8gHeD6eLU2NFjxtgGVR76VBnWKTRIDIecPb5o0V7qc4emb4hG/UasS6g993LrmqeiQyf61uLEddSH5gLksY/HvCfTxLJa84AK1I1pGYwfhY2dMnYsgna1VPuexr56Jjz8QBwS+x2jjjS5LurZxubGM+i11qHQLScR/7nTQBDTmxIOYzpNCGdKxz+8p/z85fnJpPvXgGfjRMWqsCFvbmV1AcZPJhP1oDmfXZNW8SHWoFiR55TbRw69g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ba468b6-548f-467c-2878-08de9a404c77
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 16:10:08.9111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HkWcZ2GNh9Gz6MUaWsQ7OQaxwMxy3Q4EFWCzkNaVyhgPc0KBSS1j35ybYRYopikD+OFWKMMdubutciEbbae8Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6417
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.968];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 47CAD3FC5F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Gustavo Sousa <gustavo.sousa@intel.com> writes:

> Matt Roper <matthew.d.roper@intel.com> writes:
>
>> On Fri, Apr 10, 2026 at 11:39:10AM -0300, Gustavo Sousa wrote:
>>> Matt Roper <matthew.d.roper@intel.com> writes:
>>> 
>>> > On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
>>> >> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> >> > We got confirmation from the hardware team that the bandwidth parameters
>>> >> > deprogbwlimit and derating are platform-specific and not tied to the
>>> >> > display IP.  As such, let's make sure that we use platform checks for
>>> >> > those.
>>> >> >
>>> >> > The rest of the members of struct intel_sa_info are tied to the display
>>> >> > IP and we will deal with them as a follow-up.
>>> >> >
>>> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> >> > ---
>>> >> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
>>> >> >  1 file changed, 133 insertions(+), 41 deletions(-)
>>> >> >
>>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>>> >> > index 474438fc1ebc..ed840b592eff 100644
>>> >> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
>>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>> >> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>> >> >  	return dclk;
>>> >> >  }
>>> >> >  
>>> >> > +struct intel_platform_bw_params {
>>> >> > +	u8 deprogbwlimit;
>>> >> > +	u8 derating;
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 25,
>>> >> > +	.derating = 10,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 34,
>>> >> > +	.derating = 10,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 20,
>>> >> > +	.derating = 10,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 38,
>>> >> > +	.derating = 10,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 38,
>>> >> > +	.derating = 20,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 53,
>>> >> > +	.derating = 30,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 53,
>>> >> > +	.derating = 45,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 65,
>>> >> > +	.derating = 10,
>>> >> > +};
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
>>> >> > +	.deprogbwlimit = 22,
>>> >> > +	.derating = 10,
>>> >> > +};
>>> >> 
>>> >> In the above, "plat" feels like tautology, since they're all prefixed by
>>> >> platform acronyms.
>>> >
>>> > "soc" might be more consistent with what we (and various hardware docs)
>>> > do to refer to "stuff that's outside the graphics/media/display IP and
>>> > doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
>>> > of a misnomer too since a lot of our recent platforms are multi-chip and
>>> > not truly SoC's anymore, but the intent is still understandable.
>>> 
>>> Yeah. I intetionally prefered to use "platform" as a general term to
>>> refer to either SoC or multi-chip package.  Do you prefer that we name
>>> the struct type intel_soc_bw_params?
>>> 
>>> What about intel_display_bw_params that is added later? Is that a good
>>> name? I thought intel_ip_bw_params would be a bit vague, since we have
>>> different types of IPs (display being one of them) in the platform.
>>
>> Personally I think "soc_bw_params" vs "display_bw_params" seems like a
>> similar distinction to what we have elsewhere in the driver (especially
>> if we add a 1-sentence comment above the structure clarifying what the
>> origin/source of those parameters is.  But I'll leave it up to Jani and
>> the other display experts to make the call since they're the ones who
>> work with this code the most.
>>
>>> 
>>> >
>>> >> 
>>> >> > +
>>> >> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
>>> >> > +{
>>> >> > +	const struct intel_platform_bw_params *ret;
>>> >> > +
>>> >> > +	if (display->platform.dgfx)
>>> >> > +		goto dgfx;
>>> >> > +
>>> >> > +	ret = &icl_plat_bw_params;
>>> >> > +	if (display->platform.icelake ||
>>> >> > +	    display->platform.jasperlake ||
>>> >> > +	    display->platform.elkhartlake)
>>> >> > +		return ret;
>>> >> 
>>> >> What's the point of assigning and returning ret?
>>> >> 
>>> >> Why not just return &icl_plat_bw_params; directly?
>>> >> 
>>> >
>>> > It looks like the intent might have been to let people keep copy/pasting
>>> > the same pattern and have the fallback at the end always default back to
>>> > whatever the "newest" one was if a proper match wasn't found.  But I
>>> > agree that the handling here feels awkward and a simple if/else ladder
>>> > would be preferable.
>>> 
>>> Yeah, allowing developers to easily add new platforms without too much
>>> churn was the intention here.  I knew this style was unconventional, but
>>> I thought the intent justified it (and IMO the code is still readable,
>>> although admittedly a bit weird).
>>> 
>>> If that's not acceptable, would something along the lines of below be
>>> accepted?
>>> 
>>>     if (display->platformOB.dgfx) {
>>>         if (...)
>>>              return platform_a_params;
>>>         else if (...)
>>>              return platform_b_params;
>>>         else if (...)
>>>              return platform_c_params;
>>>         
>>>         default_params = platform_c_params;
>>>     } else {
>>>         if (...)
>>>              return platform_d_params;
>>>         else if (...)
>>>              return platform_e_params;
>>>         else if (...)
>>>              return platform_f_params;
>>>         
>>>         default_params = platform_f_params;
>>>     }
>>>     
>>>     do_warning();
>>>     return default_params;
>>
>> Yeah, I think a traditional if/else ladder like this is best.  I don't
>> think we even need to track a 'default_params' variable; we can just
>> directly return some recent platform as a fallback at the end too.  If
>> the fallback winds up not getting updated when we add new platforms, I
>> don't think that really matters since there's no real guarantee that
>> falling back to incorrect n-1 platform numbers is better than falling
>> back to incorrect n-2 platform numbers.
>
> Well, I would like to make a distinction between client and discrete
> (e.g. there is a significant difference between BMG's and
> PTL's derating param).  That would be the reason for the default_params
> variable, which would allow a single place to raise the warning.
>
>>
>> If we've screwed up and forgotten to add the parameters for a new
>> platform, then that's going to be something that's flagged almost
>> immediately by CI and will be quickly fixed long before the platform
>> ever leaves force_probe.
>
> Yeah, true.  Another possibility is to just return NULL and purposefully
> cause anull-pointer dereference; or even have the default being all
> zeros, so that we don't worry about updating the default from time to
> time.

Jani, I would like to hear your thoughts on these alternatives.  Do you
think it is a sensible way of approaching this?

In general, if this function is called and a platform check is missing
here, it should be considered a bug anyway, which should be caught early
on during the initial enabling for the platform.

So I'm inclined to raise a warning and let the null-pointer dereference
happen.

--
Gustavo Sousa

>
> --
> Gustavo Sousa
>
>>
>>
>> Matt
>>
>>> --
>>> Gustavo Sousa
>>> 
>>> >
>>> >
>>> > Matt
>>> >
>>> >> > +
>>> >> > +	ret = &tgl_plat_bw_params;
>>> >> > +	if (display->platform.tigerlake)
>>> >> > +		return ret;
>>> >> > +
>>> >> > +	ret = &rkl_plat_bw_params;
>>> >> > +	if (display->platform.rocketlake)
>>> >> > +		return ret;
>>> >> > +
>>> >> > +	ret = &adl_s_plat_bw_params;
>>> >> > +	if (display->platform.alderlake_s)
>>> >> > +		return ret;
>>> >> > +
>>> >> > +	ret = &adl_p_plat_bw_params;
>>> >> > +	if (display->platform.alderlake_p)
>>> >> > +		return ret;
>>> >> > +
>>> >> > +	ret = &adl_s_plat_bw_params;
>>> >> > +	if (display->platform.meteorlake ||
>>> >> > +	    display->platform.lunarlake)
>>> >> > +		return ret;
>>> >> > +
>>> >> > +	ret = &ptl_plat_bw_params;
>>> >> > +	if (display->platform.pantherlake ||
>>> >> > +	    display->platform.novalake) {
>>> >> > +		if (display->platform.pantherlake_wildcatlake)
>>> >> > +			ret = &wcl_plat_bw_params;
>>> >> > +
>>> >> > +		return ret;
>>> >> > +	}
>>> >> > +
>>> >> > +	goto missing;
>>> >> > +
>>> >> > +dgfx:
>>> >> > +	ret = &tgl_plat_bw_params;
>>> >> > +	if (display->platform.dg1)
>>> >> > +		return ret;
>>> >> > +
>>> >> > +	ret = &bmg_plat_bw_params;
>>> >> > +	if (display->platform.battlemage) {
>>> >> > +		const struct dram_info *dram_info = intel_dram_info(display);
>>> >> > +
>>> >> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>>> >> > +			ret = &bmg_ecc_plat_bw_params;
>>> >> > +
>>> >> > +		return ret;
>>> >> > +	}
>>> >> > +
>>> >> > +missing:
>>> >> > +	/*
>>> >> > +	 * Use parameters from the most recent platform,
>>> >> > +	 * but raise a warning.
>>> >> > +	 */
>>> >> > +	drm_WARN(display->drm, 1,
>>> >> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
>>> >> > +
>>> >> > +	return ret;
>>> >> 
>>> >> I don't understand at all why the function is written the way it
>>> >> is. Seems like it should be a regular if-ladder like we have, with zero
>>> >> gotos.
>>> >> 
>>> >> > +}
>>> >> > +
>>> >> >  struct intel_sa_info {
>>> >> >  	u16 displayrtids;
>>> >> > -	u8 deburst, deprogbwlimit, derating;
>>> >> > +	u8 deburst;
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info icl_sa_info = {
>>> >> >  	.deburst = 8,
>>> >> > -	.deprogbwlimit = 25, /* GB/s */
>>> >> >  	.displayrtids = 128,
>>> >> > -	.derating = 10,
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info tgl_sa_info = {
>>> >> >  	.deburst = 16,
>>> >> > -	.deprogbwlimit = 34, /* GB/s */
>>> >> >  	.displayrtids = 256,
>>> >> > -	.derating = 10,
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info rkl_sa_info = {
>>> >> >  	.deburst = 8,
>>> >> > -	.deprogbwlimit = 20, /* GB/s */
>>> >> >  	.displayrtids = 128,
>>> >> > -	.derating = 10,
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info adls_sa_info = {
>>> >> >  	.deburst = 16,
>>> >> > -	.deprogbwlimit = 38, /* GB/s */
>>> >> >  	.displayrtids = 256,
>>> >> > -	.derating = 10,
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info adlp_sa_info = {
>>> >> >  	.deburst = 16,
>>> >> > -	.deprogbwlimit = 38, /* GB/s */
>>> >> >  	.displayrtids = 256,
>>> >> > -	.derating = 20,
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info mtl_sa_info = {
>>> >> >  	.deburst = 32,
>>> >> > -	.deprogbwlimit = 38, /* GB/s */
>>> >> >  	.displayrtids = 256,
>>> >> > -	.derating = 10,
>>> >> > -};
>>> >> > -
>>> >> > -static const struct intel_sa_info xe2_hpd_sa_info = {
>>> >> > -	.derating = 30,
>>> >> > -	.deprogbwlimit = 53,
>>> >> > -	/* Other values not used by simplified algorithm */
>>> >> > -};
>>> >> > -
>>> >> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>>> >> > -	.derating = 45,
>>> >> > -	.deprogbwlimit = 53,
>>> >> > -	/* Other values not used by simplified algorithm */
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info xe3lpd_sa_info = {
>>> >> >  	.deburst = 32,
>>> >> > -	.deprogbwlimit = 65, /* GB/s */
>>> >> >  	.displayrtids = 256,
>>> >> > -	.derating = 10,
>>> >> >  };
>>> >> >  
>>> >> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>>> >> >  	.deburst = 32,
>>> >> > -	.deprogbwlimit = 22, /* GB/s */
>>> >> >  	.displayrtids = 256,
>>> >> > -	.derating = 10,
>>> >> >  };
>>> >> >  
>>> >> >  static int icl_get_bw_info(struct intel_display *display,
>>> >> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>> >> >  			   const struct intel_sa_info *sa)
>>> >> >  {
>>> >> >  	struct intel_qgv_info qi = {};
>>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>>> >> 
>>> >> Perhaps it would be better to pass this in instead of every function
>>> >> having the call.
>>> >> 
>>> >> Nitpick, "plat" is not an abbreviation I'm fond of.
>>> >> 
>>> >> >  	bool is_y_tile = true; /* assume y tile may be used */
>>> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>>> >> >  	int ipqdepth, ipqdepthpch = 16;
>>> >> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>> >> >  	}
>>> >> >  
>>> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
>>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>> >> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>> >> >  
>>> >> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>> >> >  
>>> >> >  			bi->deratedbw[j] = min(maxdebw,
>>> >> > -					       bw * (100 - sa->derating) / 100);
>>> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
>>> >> >  
>>> >> >  			drm_dbg_kms(display->drm,
>>> >> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>>> >> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>> >> >  			   const struct intel_sa_info *sa)
>>> >> >  {
>>> >> >  	struct intel_qgv_info qi = {};
>>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>>> >> >  	bool is_y_tile = true; /* assume y tile may be used */
>>> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>>> >> >  	int ipqdepth, ipqdepthpch = 16;
>>> >> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
>>> >> >  
>>> >> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>> >> >  
>>> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>> >> >  	/*
>>> >> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>> >> >  
>>> >> >  			bi->deratedbw[j] = min(maxdebw,
>>> >> > -					       bw * (100 - sa->derating) / 100);
>>> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
>>> >> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>> >> >  							  num_channels *
>>> >> >  							  qi.channel_width, 8);
>>> >> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
>>> >> >  }
>>> >> >  
>>> >> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
>>> >> > -			       const struct dram_info *dram_info,
>>> >> > -			       const struct intel_sa_info *sa)
>>> >> > +			       const struct dram_info *dram_info)
>>> >> >  {
>>> >> >  	struct intel_qgv_info qi = {};
>>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>>> >> >  	int num_channels = dram_info->num_channels;
>>> >> >  	int peakbw, maxdebw;
>>> >> >  	int ret, i;
>>> >> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>>> >> >  	}
>>> >> >  
>>> >> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>> >> >  
>>> >> >  	for (i = 0; i < qi.num_points; i++) {
>>> >> >  		const struct intel_qgv_point *point = &qi.points[i];
>>> >> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>>> >> >  
>>> >> >  		display->bw.max[0].deratedbw[i] =
>>> >> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
>>> >> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
>>> >> >  		display->bw.max[0].peakbw[i] = bw;
>>> >> >  
>>> >> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>>> >> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
>>> >> >  		else
>>> >> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>>> >> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>> >> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>>> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>>> >> > -		else
>>> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>>> >> > +		xe2_hpd_get_bw_info(display, dram_info);
>>> >> >  	} else if (DISPLAY_VER(display) >= 14) {
>>> >> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>>> >> >  	} else if (display->platform.dg2) {
>>> >> 
>>> >> -- 
>>> >> Jani Nikula, Intel
>>> >
>>> > -- 
>>> > Matt Roper
>>> > Graphics Software Engineer
>>> > Linux GPU Platform Enablement
>>> > Intel Corporation
>>
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
