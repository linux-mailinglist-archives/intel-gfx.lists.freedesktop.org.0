Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E861A3FE06
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 18:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DFB10EB16;
	Fri, 21 Feb 2025 17:53:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ArpTNohQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B3E10EB16
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 17:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740160437; x=1771696437;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HLbTZjMWIrUDftEnVmkWkahSOtAq7XdPtbCYp2RF4No=;
 b=ArpTNohQlpw1dPDoTI2h4Fn0ajHQ0BrAJNjv2MAhJnUjiJk8RNxcwd4D
 eEIM+gpqf+n29onbh1ZAUu4mGl2ME4SU6waH29FWROf/3JgmhsgSPpudv
 CvodbKow6lJzTWFF/hipS2jl27f3cQYLeEIHbXMnYUsnGEzxU1UeVEh45
 nX1hcD4dtxwsOe6i0FrzzDyx63v3OmXPXhl7mx9HxGRPm0nI0LL5lgUD7
 rM2O/oCZO/eHhf5ciJ+uOZN4cM8LAXt6GOVbHov7JzICFYCqpZWRcuuJf
 hC01VRr0AXxh78E0If85hthB1FG9Yxlwdfjqqu5UWdYg86aaaZmaIofsF w==;
X-CSE-ConnectionGUID: rHKxrY5rQ4GWIYao8X/JPg==
X-CSE-MsgGUID: LVH2FPhWTSy/CglCR1HjvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="40908712"
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="40908712"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 09:53:57 -0800
X-CSE-ConnectionGUID: NcdmcGRZRumf/XUqiFvy3g==
X-CSE-MsgGUID: ujxv9icDSt60WQBcCyRmjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="120534175"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2025 09:53:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Feb 2025 09:53:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 09:53:56 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 09:53:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AjLwgYJHejunTBuyjhRgogZoBJYzysV//xGsGua3Ma2gfOOneJuasu3tSPHRDYRR4VzMDVBSkJuxcyc5pLKhBeSuxHocEKmpgEX1T1uYCfNqx0YvYKC5W2XGaykduF2JwCx6DjD4R24XZwdfk9XuZvcCv9M5Yb8G7XMm8sDPuLv1mBFNG8wvUs731Hmv4vVjxkarA9jIsI6Em/fjDejCeHkCt/J1kfkNCC9Fp7WYS/YJnDyfxCEn9bWrR6Jz2TDFBMEYB8PNqRR4JaEBOB7Rnl7A5ItAy1MrKdWAb5DcybQOm/YpAY2asN57ZT+e8m2/qnxFVrvRMQHF/62kMBlcqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+qEPHBG/DWI2V0Gkm1JepTc/O6C2yfkT3HelphPwJrk=;
 b=mfa7rycXpmrMyv6bOUWNiPk+Jv4XxBL2tCPTtAkztdb7Miu04gx3XJzMgkSyGNnZPyGqdqcDhvIEaaWryHETOUBvz6/nbJ/ToSg/cWWVnq977rmQJUXewXUwRQqLu7IpdJN24Qs0RhQ5NRRJ14pQ6eC8Ex/2evI13+p8ONsyGcRkXJCKHoUZicYaUXeBXToOV+TLt8j0WYyHMBBFl6nx+D79P+0yrNZP84uIhW0SAzjFxM3Dp3iJHokLKmCowhjznPje+NINCrPpxf1WrnZXB7FhJUhk86fFJPNU8joLAPz8hW1y/ntf/FZ6kbLzGAQu/+vj+Hga33gqL18ID2wi3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SJ2PR11MB8565.namprd11.prod.outlook.com (2603:10b6:a03:56b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.17; Fri, 21 Feb
 2025 17:53:53 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8445.017; Fri, 21 Feb 2025
 17:53:53 +0000
Date: Fri, 21 Feb 2025 12:53:49 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
CC: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Lin, Charlton" <charlton.lin@intel.com>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [v2] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z7i9reo7UNZihHro@intel.com>
References: <20250212114935.21231-1-mohammed.thasleem@intel.com>
 <20e96e4b79511157ca5f093efcd732a91913d1bb.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20e96e4b79511157ca5f093efcd732a91913d1bb.camel@intel.com>
X-ClientProxiedBy: MW4PR03CA0290.namprd03.prod.outlook.com
 (2603:10b6:303:b5::25) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SJ2PR11MB8565:EE_
X-MS-Office365-Filtering-Correlation-Id: f21b2a4d-ad67-461b-e56d-08dd52a0b488
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?4R4OBQ8EyJfyjw2C2hjYkdloKczNjzLkW6ZBZOYUB+RqijaSsuf+ZhgDff?=
 =?iso-8859-1?Q?TG2CNL3LB1yJ5Oh7Xc/HdyGNqLamZZiM1KQntQVr6pemEflp23Lsbh1znX?=
 =?iso-8859-1?Q?BnAz27hTLp9CCxlgJ33wnYZeFOqwaGaa/3fTd1h3KsK6yaTHxADfI/uiwW?=
 =?iso-8859-1?Q?69trM0ansxnSdtdws0/PBJ7NNgyS/DhEHXWlMR6AOjod26v/uBs+cTXCML?=
 =?iso-8859-1?Q?+LdXg234ic+/b1aKlEHgbaMxHoSEG6ji6Kr1nYqzsRW788quSxA1Sb+P3A?=
 =?iso-8859-1?Q?I8HmKG8wbVIxQdY5HJRxIUguB5vR2JuBLZQyOwq8erqGP5mY38zjb0ggOC?=
 =?iso-8859-1?Q?Uub592bcOgZxcZlY8XD5m4sRhbodVkToQ/4ieLlNk04DTuqP9BT7q99Ta4?=
 =?iso-8859-1?Q?mJnewek8o8z2JBeexxcQCsoM6YzDG04OG7thII07U/t31g3gFwAM3Qc9u3?=
 =?iso-8859-1?Q?Q56oELfjS0U/YMQCC3uEWOqZZZ3rrKWdsXseRprWXfZCU56rACxpkQUVhq?=
 =?iso-8859-1?Q?hTM1E/0pccHMvFY2twhnUfKXao2SFio8AK8KB+QOY+rsxUbfd40RaUM339?=
 =?iso-8859-1?Q?jDGnKoU2+Tg5PGjsxXfP2ZFO1EOtDCCQVvrtbPUW2dRysO2qII1jkJAjz6?=
 =?iso-8859-1?Q?N6NfBsI89xtp2Og9D3A2xlC253NZIg4bmtn1vq8RImvpDn4NkwDcwQw16n?=
 =?iso-8859-1?Q?A++AJ8CrfuO3V7ldCABFshVCT/c8sbUhhbUG5rf/pPU0CsV+yXltw6ia8j?=
 =?iso-8859-1?Q?b7RPr037bNwrNGJ/FawSNAcemcVwl8NxzZqiZM22sXz///xRCLWrwXP2yh?=
 =?iso-8859-1?Q?4qakmtff2Wr5LKwUJpSH21U5EnQodbRlIHPDsXRdbCyFZ9yfFlZMNZTLoi?=
 =?iso-8859-1?Q?Yr4fKu71j/hiWDt0dBRQN939gYdLbX/C3J8/AB5wwEKmaHP0DD5e+gais3?=
 =?iso-8859-1?Q?s5w550+MCL5EnA4nudstAzkEW+YJ7fVemquNOzDQUSqdsZ7To1EG9caxVW?=
 =?iso-8859-1?Q?0RWgFqBI3HGP+J9lp/PTTiK1Iz7dDFWYhO4bp+tnIMY6nxOieN2jW3PFWt?=
 =?iso-8859-1?Q?BTAy96fVFN31BvINehMPjO83E7CRs+XKppEi8eg0Nsf6EvA/BMjE6j01LB?=
 =?iso-8859-1?Q?2z4Thh+dBXgbpGDghNPc4mibvQhWYwD2boZw3KLXKUQGcN2/Ad02FeDNwc?=
 =?iso-8859-1?Q?CFiTZynzy1JRr2/+T8Wk4z93zUAJqIe7/R1KpPWKHQUA3DyDs1DhfkbZ+c?=
 =?iso-8859-1?Q?WRhoczE+LWElAA6yVIB6uTVWdDU/mdQjtk7k6mWoyKsPSW6O1f0U+AGnyW?=
 =?iso-8859-1?Q?YszND8MFNj1Sy8sOyu2C5LGSrq1DxlgFy5RXLMviFJwN+NmS776Zjv5XSZ?=
 =?iso-8859-1?Q?wkL3HtttszlyV3ARtHBYI577sskOeIKaipaZP4+bxE8z8fjKMUPAnZKI8z?=
 =?iso-8859-1?Q?CPwFYxzdf8V3eGyP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?TdffgjSpfJQl0Ps/DWjKv9sENNxcpTYYm1Wdm6ftkrIR78iby5xVWCQ9Ot?=
 =?iso-8859-1?Q?eVnDYARe4+kLBue2dH9i4fIKYzeboqQcMdM1S4nS6Ik7SuvMRjNiY4Mq5E?=
 =?iso-8859-1?Q?1GppL09A/yGQBwpX5nOZXVoc5jMnpVtiH9BYetzI0dVZIMaQnY8RWcGVIL?=
 =?iso-8859-1?Q?8+fLrr4LcxNbuMrJHNvS45Lx9sznhVdVSj33U/+Of8CDj7rnDhuRQbZiWL?=
 =?iso-8859-1?Q?sVAsJUa5C2TNWMQpjj5wXz6SPYfB7PRHh+/bw9dBgkV/9dx2Y3NIwU8uGI?=
 =?iso-8859-1?Q?nyLDqAEwWeviTPURq9lLGQQSbqb6swo4M2X9JNqh1XwjoFlJCcDRw8QagS?=
 =?iso-8859-1?Q?tnr9uNvlk/tOGCAUrnaAp/7rHzpEY19rtn00PZ9EYibTo+us7QrsVerFac?=
 =?iso-8859-1?Q?4ldq4DWRTAB4JTi1T6ZMP6/5cyFhygSrvmBr0C1pU1Q9n1z+EOvGZDJwgB?=
 =?iso-8859-1?Q?HDpKlDcb/HFswmtQ5V5W/guTf/Q2bUh7b6mx16WpI1zjBi+RQRLEn3j7yB?=
 =?iso-8859-1?Q?gUAC4tZD4zYCNperz8hWxtTzes3meIMK9uDxtM1L/qjfghZXhh6gYusMZk?=
 =?iso-8859-1?Q?tX1TWTG1tihLdJ44CpI+fNftklH4wDyTFxRXZp9rEPRG0Gh5pVsS28d8ZD?=
 =?iso-8859-1?Q?U5YdOCdS9FPSts55NuEamqyvg/VY3DN8tc6ASRQsTuSX7AUirqbyg6LQp4?=
 =?iso-8859-1?Q?ah4kUQk0Twi+qyCcPLkSdW+ltKum/ihWUCyaKtRrpdKorL+tEeTw4dTPxc?=
 =?iso-8859-1?Q?+O+xu1Q8rTZHsDA7q2NxJakjLrqOkvPFMPkXKFbcWDV3P5S5tGMBCZCU+7?=
 =?iso-8859-1?Q?iJgd/Noq4+MsUXH1pg01Sz3uu7bXWMDyqbDnbvI47dEwc8Zc/3q8wxJ2zG?=
 =?iso-8859-1?Q?D7L5J/X8rCXLjB+az7hOoKKFYE4r8TVscOXRIqjqUsAAmPOGhBuNHGKfGr?=
 =?iso-8859-1?Q?hjAxBnhgxreIAv5WougMxXw9O33upIIG2kt1woQSDB1+qOEdKxaRc/Zhze?=
 =?iso-8859-1?Q?t6c14yAlkPL+iG8mewGarlzujXF0QytMc0Uwww3YmRvkBWQH5EIZi19PFp?=
 =?iso-8859-1?Q?iKv7lmRhCZEMMfy3Wpm6Dg0I5FK0X5c9Ysg35b0ayHpMlNThTNE5fx2rhW?=
 =?iso-8859-1?Q?8rt3GKdCXYfYx0LaBD4ZQFpSqHOojJNjhvW354e7dx4R8EYEuXeIAnNBzY?=
 =?iso-8859-1?Q?ivPckq5EJl7I7HHGX7h4xjlirZict7p/WpYYeuedkm+ZlwKOtfb1FIZQ4C?=
 =?iso-8859-1?Q?vV1/Bc0lk5UK+uX2Fklmd7hfEn6QdeKZz2S1RFkk5GSG5FRHJ5FAd8ixcB?=
 =?iso-8859-1?Q?wOnLvLLfjy6NSkSv/9BMLx6flwxb7opb2ZVSC4Qu6UaV1tQbc8e0o6b8ff?=
 =?iso-8859-1?Q?7Ut7Z/nOTmty00bqg+D3imLHqOMT0Sgib46Bv87KPQfnQMBAn8mdc/E7d6?=
 =?iso-8859-1?Q?Oh8NPlRUHba07zOOH+BiEkt+2VOUcXCPLQ7rXI/165lqjJzzzRPowVPjU6?=
 =?iso-8859-1?Q?JAgP0f56ERDwRhrvf2a7ASMYyAuTkC34ig8uneFqf17ulX8cbFDA4QwC6e?=
 =?iso-8859-1?Q?hHICWmgLW+uxQa1GBbKWsn5c1jx0JJZL28J1fsHUzecuIIRZO06GwI6Ig5?=
 =?iso-8859-1?Q?B58ofXKRi4OvGERIh0sdCPAAFQSKjEmAPAguqYYkbJ1ApGRgn3JTG+gg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f21b2a4d-ad67-461b-e56d-08dd52a0b488
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 17:53:53.6764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qq3Vf0ySMGpWwmZF8vNynwPndoS0xos6afYmixK6U9iQGz1VisdPFUTk1X8Dg1fE0/8Cfmwvc7E6nNKYMh/cMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8565
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

On Wed, Feb 19, 2025 at 01:33:11AM +0000, Almahallawy, Khaled wrote:
> On Wed, 2025-02-12 at 17:19 +0530, Mohammed Thasleem wrote:
> > Starting from MTL we don't have a platform agnostic way to validate
> > DC6 state due to dc6 counter has been removed to validate DC state.
> > 
> > The goal is to validate that the display HW can reach the DC6 power
> > state. There is no HW DC6 residency counter (and there wasn't such
> > a counter earlier either), so an alternative way is required.
> > According
> > to the HW team the display driver has programmed everything correctly
> > in
> > order to allow the DC6 power state if the DC5 power state is reached
> > (indicated by the HW DC5 residency counter incrementing) and DC6 is
> > enabled by the driver.
> 
> Historically speaking, when it comes to debugging DC6 issues and
> involve all other teams, the communication between Punit and DE is the
> sure way to prove display is innocent especially starting from MTL.
> Latest in PTL HSD:14023469804
> 
> Trace of PM_REQ_DBG/PM_RSP_DBG registers normally is the first step
> needed to shows the comms between Punit/DE and LTR configs. 
> 
> So, can we cook something with these register to follow the BKM of
> debugging DC issues. 

I like this. We should probably put more thoughts and effort on
getting this analisis when we find a dc6 bug. But this is orthogonal
to this series. Having the counter is the first line of defense to
tell that we don't actually have a dc6 bug. Then if it is really a
dc6 bug, then we go to these registers.

> 
> Thanks
> Khaled
> 
> 
> > 
> > Driver could take a snapshot of the DC5 residency counter right
> > after it enables DC6 (dc5_residency_start) and increment the SW
> > DC6 residency counter right before it disables DC6 or when user space
> > reads the DC6 counter. So the driver would update the counter at
> > these
> > two points in the following way:
> > dc6_residency_counter += dc5_current_count - dc5_start_count
> > 
> > v2: Update the discription. (Imre)
> >     Read dc5 count during dc6 enable and disable then and update
> >     dc6 residency counter. (Imre)
> >     Remove variable from dmc structure. (Jani)
> >     Updated the subject title.
> > 
> > Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
> >  .../i915/display/intel_display_power_well.c   | 20
> > ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dmc.c      | 14 ++++++++++---
> >  3 files changed, 32 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 554870d2494b..0a1e3dc2804f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -490,6 +490,8 @@ struct intel_display {
> >  
> >  		/* perform PHY state sanity checks? */
> >  		bool chv_phy_assert[2];
> > +		unsigned int dc6_residency_counter;
> > +		unsigned int dc5_start_count;
> >  	} power;
> >  
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index f45a4f9ba23c..cfa53ee84323 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_dkl_phy.h"
> >  #include "intel_dkl_phy_regs.h"
> >  #include "intel_dmc.h"
> > +#include "intel_dmc_regs.h"
> >  #include "intel_dmc_wl.h"
> >  #include "intel_dp_aux_regs.h"
> >  #include "intel_dpio_phy.h"
> > @@ -755,7 +756,7 @@ void gen9_sanitize_dc_state(struct intel_display
> > *display)
> >  void gen9_set_dc_state(struct intel_display *display, u32 state)
> >  {
> >  	struct i915_power_domains *power_domains = &display-
> > >power.domains;
> > -	u32 val;
> > +	u32 val, dc5_current_count;
> >  	u32 mask;
> >  
> >  	if (!HAS_DISPLAY(display))
> > @@ -775,11 +776,28 @@ void gen9_set_dc_state(struct intel_display
> > *display, u32 state)
> >  		drm_err(display->drm, "DC state mismatch (0x%x ->
> > 0x%x)\n",
> >  			power_domains->dc_state, val & mask);
> >  
> > +	if (DISPLAY_VER(display) >= 14) {
> > +		/* If disabling DC6, update dc6_allowed counter */
> > +		if (!(state & DC_STATE_EN_UPTO_DC6) && (val &
> > DC_STATE_EN_UPTO_DC6)) {
> > +			dc5_current_count = intel_de_read(display,
> > DG1_DMC_DEBUG_DC5_COUNT);
> > +			display->power.dc6_residency_counter +=
> > dc5_current_count - display->power.dc5_start_count;
> > +			display->power.dc5_start_count =
> > dc5_current_count;
> > +		}
> > +	}
> > +
> >  	val &= ~mask;
> >  	val |= state;
> >  
> >  	gen9_write_dc_state(display, val);
> >  
> > +	if (DISPLAY_VER(display) >= 14) {
> > +		/* If enabling DC6, store DC5 count */
> > +		if ((state & DC_STATE_EN_UPTO_DC6)) {
> > +			dc5_current_count = intel_de_read(display,
> > DG1_DMC_DEBUG_DC5_COUNT);
> > +			display->power.dc5_start_count =
> > dc5_current_count;
> > +		}
> > +	}
> > +
> >  	power_domains->dc_state = val & mask;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 221d3abda791..e4d3ce796c99 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1242,6 +1242,7 @@ static int intel_dmc_debugfs_status_show(struct
> > seq_file *m, void *unused)
> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >  	intel_wakeref_t wakeref;
> >  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> > +	u32 dc5_current_count;
> >  
> >  	if (!HAS_DMC(display))
> >  		return -ENODEV;
> > @@ -1290,9 +1291,16 @@ static int
> > intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> >  	}
> >  
> >  	seq_printf(m, "DC3 -> DC5 count: %d\n",
> > intel_de_read(display, dc5_reg));
> > -	if (i915_mmio_reg_valid(dc6_reg))
> > -		seq_printf(m, "DC5 -> DC6 count: %d\n",
> > -			   intel_de_read(display, dc6_reg));
> > +
> > +	if (DISPLAY_VER(display) >= 14) {
> > +		dc5_current_count = intel_de_read(display, dc5_reg);
> > +		display->power.dc6_residency_counter +=
> > dc5_current_count - display->power.dc5_start_count;
> > +		seq_printf(m, "DC6 Residency Counter: %d\n",
> > display->power.dc6_residency_counter);
> > +	} else {
> > +		if (i915_mmio_reg_valid(dc6_reg))
> > +			seq_printf(m, "DC5 -> DC6 count: %d\n",
> > +				   intel_de_read(display, dc6_reg));
> > +	}
> >  
> >  	seq_printf(m, "program base: 0x%08x\n",
> >  		   intel_de_read(display, DMC_PROGRAM(dmc-
> > >dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> 
