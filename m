Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FKRBdDejmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:20:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B39133F16
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F231510E7A5;
	Fri, 13 Feb 2026 08:20:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXLVWjN9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE31010E2E8;
 Fri, 13 Feb 2026 08:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770970829; x=1802506829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gYIB1nUGE9XQG2T/PRt+O94e8tWn5EUROR71VocfSag=;
 b=kXLVWjN9lfuL/OyDdiab/TzuBZjfOCcSttm3gmx+7vN47QyfWiIjVLnD
 0MeM/kUe+Gm4lPTiGZ0B/yn4o+C0TuShE5gbWRok7CSNGmczue7dPa2O8
 Wq2SGBzZvmISPHI53Z21/hS1SFr4Pax9g++L8jzS7+PpUIryWgsu7nWxO
 jwjlXbkC4bDpA7NvgA3Zlg3fmYOpj/mRHNxg/Jk9GoG6sw/xsOvDLHIlm
 jB2bvlXJ+OjpItmXYk+cTH6hW3Rao2fn8u6p5atCGsQ3xwnScgebmVKyb
 RFgvLqhFU/cuEmSwBQ5Hjc4bP86BDc99QQp4y6ztcEkQ8H0xrmIpzXYZ+ w==;
X-CSE-ConnectionGUID: RKJ1P330SBi0V7dWFY4k9w==
X-CSE-MsgGUID: P3X/IJCMQZK8QZsRMYj43A==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72226642"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72226642"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:20:28 -0800
X-CSE-ConnectionGUID: ZhdwIpukSr+xZIvI+dlxSg==
X-CSE-MsgGUID: lnF7R/SaSRSr3AobdtyBWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212893406"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:20:29 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:20:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:20:27 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:20:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TIIlKIpFF/n/22yQqx7F+MITOXVy4KUTijz/gAbAkK07neh7cgN12L0QcFhZGmTAwEBIBITD70WjkgWGNMkzWrB3nYy6ipRM5ldRP5XFg3Mvk3QsYB3WTa4JBe/vIyUMk4mk7sOSqp1mTPw3GI1ZXMZWrIeYD3uktrZTRvBlfJPIYstL1+6LZntsJrcis6ArlBgM/n9PdRnUmS7y4N+fk36Zt7Xn+9pNE+Mt6zYSdxnOob8ftjNV3Nc6VyUIyuZ9jcBntoWNfpGOTjAuwL9EH2xlfeQ3nrZxE4IeyxLp8XVW/IRW94/RJg6dAV8AcQLPlwexxdQaqPlTgL1iTlIolA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1RP/u93gVmatxkmqqNeFzd9u6akp5qrfnh9g/8rPFGM=;
 b=Lr7h1YtRYbpTEUiLIOTbeDPMZiEnlX14huTyjiOBqPA+yjNTGVJfsTHn0xCbbazoF0yh49v1wxLcqeExRhywKPmWNPoxVCJzvsBY3J29AEY/gKcVIkNDSpPcyNYz9oAw2VJIjtsBrVnttfySWfrwO2r7LP/TTx85gVWvnbrI8jI5C/BT0dmhuz8kTk7M5FZxhCftCNPxfsLa/TghlJFzsOivNDhRdNJADckAa8hsBTFlpfuZOD6evTixLsQMb5J9SVvBfygZ29GQZ5Nca5lS8N6uaQdB4hC/pPPknhU1dBiLwwg+FJjFPsg9O+qkFTbnzWMumcgX12pTuY60C6UnSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4666.namprd11.prod.outlook.com
 (2603:10b6:303:56::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:20:20 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:20:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 12/15] drm/i915/display: convert W/As in
 intel_pmdemand.c to new framework
Thread-Topic: [PATCH v2 12/15] drm/i915/display: convert W/As in
 intel_pmdemand.c to new framework
Thread-Index: AQHcnFLZIGCrON4zq0yZsPIXD4CYYrWASmBg
Date: Fri, 13 Feb 2026 08:20:20 +0000
Message-ID: <DM3PPF208195D8D8511926B5EB5369D7255E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-13-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-13-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4666:EE_
x-ms-office365-filtering-correlation-id: 9722b0b2-7130-4e72-f2c3-08de6ad8ba68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ei2zF3QG7RWid31giYCacdXuicVrp9fdwj/uf/yJYwvTjyK00WbW+e2fd7Xa?=
 =?us-ascii?Q?pgqUOvHBBXemfkUJfMnlhkSeO2Zr0meh0Wf4c5PK4H38SyQdrFmtWkWKuZNq?=
 =?us-ascii?Q?a4Vzh4pU8XAn+rO3/1Mo02rl9va3BKDG1G5ZOcJDXmO34G/UcdI6keeVr4nY?=
 =?us-ascii?Q?+FFvhB355rsmIYNmcbCxq/qgtWXi0ZOwJbtHNSikpPL1h81gSHOp1q6WHVtQ?=
 =?us-ascii?Q?e9bpknz5j4Qjg/fNug7/1oVQGzm8/0IpUjtr94rwZwpu1zDmAQZgN+GQO9tU?=
 =?us-ascii?Q?b271VbwkiWdoYS48HaWtgpcR3fGpfFWEs3D0tiDAplI/cB2Au9avcPODN8FJ?=
 =?us-ascii?Q?s+ZkBZu2aSzzXofF20ZG2Jh9bNHfQY3NTqS/JSv9ag2ckRMGL/j4k1jGX0P8?=
 =?us-ascii?Q?qTAmkwc3wFrbZIur8QD9ICYvNr6VLOIfIahbjoZBmixyQLhaphdnuGU1grsl?=
 =?us-ascii?Q?05vU+PoPIn5P8B5vhOiy7hDkJC3xBww8gmR1Wx82oAoMwD1RS1qiVEXQVget?=
 =?us-ascii?Q?L+Xphpj93BhlL1aza3r8lEiVSiA5rslWaA/xomfjWHJ9TVVYe1aUxGgeViUQ?=
 =?us-ascii?Q?txZ2Z0gYzPnyXAYacSjSD4weSEwuRQon6HioUNR44Q2ytOSxnSoJ6yKgtqoE?=
 =?us-ascii?Q?7jYgvyW2ul/nqGNNWIL4AmG2Yr10dglyKsX85lYmkepy7nzHhWYduHShvruY?=
 =?us-ascii?Q?rkebtJW679FZ0TBJjf3ysGhNbXonH/4qf191CBt/l8RiAiX08HfFlRsayNk6?=
 =?us-ascii?Q?6FKt0BlTiWBw7mvjAFiMhVwm6+YYWrDlGEygWPRacE2YoXJg9D5UFGj0adIU?=
 =?us-ascii?Q?GPrDn4Mfq3AJKao4RtGMGGnLpHK34gYJyzrUxYjiWX4Vbrh4F3wAfbns3stO?=
 =?us-ascii?Q?4D7cbDwy/AgcWa1l8T2/UIuL3SNdRgpCJPWzGl7D0Gumb5lI+7lEuU7xdGzn?=
 =?us-ascii?Q?qGe92/QODlcp8mXUaBeSVXr2hlkCCQka4SQkPCJOKHWkLT5iXc59L7kN2ZUY?=
 =?us-ascii?Q?u/1VoZmm4l/sSgwvXx8cj1BCLLIvlk0t8H2sZq0j1uUgvquYygtfkQmMnw3L?=
 =?us-ascii?Q?Veh9Sk3SS32myIZ5oCw74L/04KQU+h4j8svOC9pX8pUg4q1sNQF8XHNBzwYW?=
 =?us-ascii?Q?tCey2Fx2nCEStG8AeAIMCZyj0o6cVpLcCq5CC8/EyUGWx2Z56CCbxQiroeaJ?=
 =?us-ascii?Q?hckH/FTkUm8VL81Nbf2EjpEY9LxE2He55DqtuOrikf9qGWKTqJdHWD5zIKrb?=
 =?us-ascii?Q?uWYVtJxpD0pJG0U46RtBMskk96Tn63081W6F5wb4sosusE+BAOPq56xSQrAy?=
 =?us-ascii?Q?6xlkmliIeY9mXw7UCsK8KapJ3yjEwCwscIWRhF7KWf9u6Oq4h47rV2SX7Dv1?=
 =?us-ascii?Q?aN08ZrVkTLhMEzzkvVctrMNSiwbhoSHiQTkpNdwfNeqcJ6cBT0cSO8MW7g9i?=
 =?us-ascii?Q?ANRZUwgq3r9fIldFFciB2M4MT8vEpSjtgPIhVq82zKokURXUskVmwyBSxBak?=
 =?us-ascii?Q?hK2G11tiHRoEo1kpml8MPePSJP9p9adlStKlcbZXVqwN6lUOaptB5On3fD8s?=
 =?us-ascii?Q?02K2eSSemMymrZX8W+Usaozv60pv7nJvdVJoPtku6QoktKKAmNLW/tGb0kBF?=
 =?us-ascii?Q?NbKDPVAmCAouO7fUcEHFoUo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AltN5VnOUnjPInmn2lRXCa7SDEqGP2kBt1kRbnY0cg5gRJa4TLcxtQa0OiV6?=
 =?us-ascii?Q?7Xku5HR543NdhXeag2NTzxfiXEBKsfLzYgwIRN520z8EI92VBwMuZMhjzXxK?=
 =?us-ascii?Q?akQi2qZRpGwgm43ak751NLpB7a77MQ91RnEJYJnmqqyn8hVJmWbSr9ntY0zv?=
 =?us-ascii?Q?5uc/oaMEgWPFDWVrlllqtKYgvH1aOwQsNURUlkkqqVhzhNYxHmoUWMY5dVLb?=
 =?us-ascii?Q?g7kjpcdMUAyU3DQt7MkuOozWEkOoOC3cEa78eiellKMejvt54hcikhUasViO?=
 =?us-ascii?Q?Eys7N3jJFKb9oG6szLiLq+KJjJiwTamfZR/Ur7hbtP3l9ALcT5m243yNB6pP?=
 =?us-ascii?Q?nKFnx7OsU4W4DdqMJ+htgxWeQ0KrTHihWb8HSCLwNGvxxM98BPhRNCK2yHvz?=
 =?us-ascii?Q?JuA7+VcnxLeyITWsd4u9QQSjrnsupqBJX38BwzzFlLwDtJ8PO+J6rZoZHd+Q?=
 =?us-ascii?Q?lEHbLSMOa4Xt7FnaUPismwlZ5lWmsD0q8QV8v02OTfQ+Tyvut+MWxyX/HZXK?=
 =?us-ascii?Q?VcVnVwPfwhMMoXja8DF/DywYJgfLkvhIqouhNSUWr+Pjac2geNAZr/MSig+Q?=
 =?us-ascii?Q?OSXM71YS6QhxbhhpDaQGS03m7qnRNzgeull8ZqR5JPp8zwlQVWBzNo1jsQaY?=
 =?us-ascii?Q?QDiGY38fj00I/6e1rcirlmhs87yopVQN7fIfAd4j5oWrpUkiQ1KJNtilmLIG?=
 =?us-ascii?Q?+zfz8qs56kyVfCTyXnL//XsgjEhNLc5UK3HdtWSzOY8e/f56Y2J+w/yu5qUh?=
 =?us-ascii?Q?Sr0czk6cYgNhQp1chSMSN/IcQFmEbbWmdtv9QohO3LZqyXc8s5fXm0VBXr2R?=
 =?us-ascii?Q?xZnphNwhAbuy/FB0++mKaHJhIyAoNkTKs0jVXyYs4MtR6MRAfQ64FG3GND5O?=
 =?us-ascii?Q?Bl6VgaMm4FHQkqPxv/916gvX0Wf50zjbNpy+6perDaiQxkUTiBnWLPCsUbkv?=
 =?us-ascii?Q?jfigxa3rCEfKI/0wxnFWW7rxW65pWg3alPXqE1p5n+pWEdNGaQe0zTipquaY?=
 =?us-ascii?Q?zHjfpa3megJYFx9bS8Vj/6H21m/EzVdKEoDL7QzyqYBaIjXro6eOcVhRCasd?=
 =?us-ascii?Q?qmoi7b+/gIgJq6+zJOgjjbBknEzSi6hqILdab5hWB5KZVdesouM3xXcCBxRn?=
 =?us-ascii?Q?7CT6bX7shnMibH9YjdrHQ9sH8+5Nxco0bX4OBisG3uZp4hKYJwZQyHBWcSN4?=
 =?us-ascii?Q?81MBhmvXCVotJPCQf2eUI6s+ZvMfOngxX1HJYsf9KgvCc8O/ksOMlDWO4D8f?=
 =?us-ascii?Q?X5CjVKFk53/gdtfvvbVSlCGKQDdxd5eo+om6SCxo5Flg+oQHY6BCDUtf9vr6?=
 =?us-ascii?Q?gJouKmsYB5bP9odC0ej/i79OlW+LzSlfUGal/Cy308INPRLsC67i8bq1SBLj?=
 =?us-ascii?Q?h0+xIJBkbUgiv4MhJcrr7YBsOHKPqkEMQzhzgRow8FQL1o0rg6yvPDTFsbj8?=
 =?us-ascii?Q?CBbTu2N/tgjkA4SjGrIF76DE4BhIB6zkIB3DHAnnxbDhBTlT+PC39W2y3aSu?=
 =?us-ascii?Q?fzRtK3HYi/qliLlm72c/eAFTaWVvkMRrQdAbL5aUl/vNtZYHouDrE4YlpeH0?=
 =?us-ascii?Q?WXqZJp3M/vvXEDQy3SMBTmF4zHGIvMTKie6erKS85uDN8Z8//z0/BGVa+vSQ?=
 =?us-ascii?Q?gqU5sEIEStwtrNKSvjyv6V3AQ1dp20dSvtehjZteQnCQaPAqTCVLZ4JG/Idm?=
 =?us-ascii?Q?mu0BTQMj12D/GAChVbth5PSTOSja3q8JnyHknHaDTK1Mu851tBWywiRQwwMq?=
 =?us-ascii?Q?eCVLCL4kRg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9722b0b2-7130-4e72-f2c3-08de6ad8ba68
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:20:20.5812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIeEDC7QL02vqCEIdH4nTB47RVFEsjz/PH1klVrDYkHY1sDqbm3vCrmm0+A6XQF9cYpbbVTvB/7TqypVvK3Agg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 75B39133F16
X-Rspamd-Action: no action


> Subject: [PATCH v2 12/15] drm/i915/display: convert W/As in
> intel_pmdemand.c to new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

*intel_display_wa.c

With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  drivers/gpu/drm/i915/display/intel_pmdemand.c   | 8 +++++---
>  3 files changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 72f645686efd..77ea2e5b8144 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -100,6 +100,8 @@ bool __intel_display_wa(struct intel_display *display=
,
> enum intel_display_wa wa,
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
>  	case INTEL_DISPLAY_WA_14014143976:
>  		return IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER);
> +	case INTEL_DISPLAY_WA_14016740474:
> +		return IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0,
> STEP_C0);
>  	case INTEL_DISPLAY_WA_14020863754:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 2000 ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index d8359f88de29..3d2cf05ffacc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -39,6 +39,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14011508470,
>  	INTEL_DISPLAY_WA_14011765242,
>  	INTEL_DISPLAY_WA_14014143976,
> +	INTEL_DISPLAY_WA_14016740474,
>  	INTEL_DISPLAY_WA_14020863754,
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index dc44a7a169c1..3b7471df6287 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -15,6 +15,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_pmdemand.h"
>  #include "intel_step.h"
>  #include "skl_watermark.h"
> @@ -129,9 +130,10 @@ int intel_pmdemand_init(struct intel_display
> *display)
>  				     &pmdemand_state->base,
>  				     &intel_pmdemand_funcs);
>=20
> -	if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0))
> -		/* Wa_14016740474 */
> -		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0,
> DMD_RSP_TIMEOUT_DISABLE);
> +	/* Wa_14016740474 */
> +	if (intel_display_wa(display, 14016740474))
> +		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0,
> +			     DMD_RSP_TIMEOUT_DISABLE);
>=20
>  	return 0;
>  }
> --
> 2.51.0

