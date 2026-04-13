Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DwmHB9d3WmadAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:16:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CC63F3789
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5451610E12F;
	Mon, 13 Apr 2026 21:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PrdJ/q55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6785110E0B1;
 Mon, 13 Apr 2026 21:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776114969; x=1807650969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XEIDL4NRDZSnUD2LfhoLu7gPmYxfyTVn3gZmwbAcsY4=;
 b=PrdJ/q55+Go2O0dKw1JHdSFe9/3NMLn+37DjC8ZwpFaZaKtHNQOgUDwV
 vtqr+l1uU/7AQpFi9PcPrSBU2wHb0RoqC0DhtwPSxs6ceLwDP1c77kUOt
 5ep172Q9ky9zsDIaGRQ8ximp6J4NAf06AQJnFgW2B0cY5gXp13TTgfqXG
 mhFhwNgrOZqgs10ki/qk0RJTDiqbs/ND5O+a5jm8tmBHfvDj5Ca3TnhWQ
 ITp6bjnWzN8w7qZSGd658f+SF2mqgf72TZPRZlFCAF2k9chlYqBg80sby
 dZ2CBuCQ0ypCbSN+tMMKCUEgpGrl2mIVhLyDHNIKzFiRioIHwdnpAj9q7 w==;
X-CSE-ConnectionGUID: wo2oduQ/TuudCjtSkZhyYw==
X-CSE-MsgGUID: 7yKiCd2kRjOy7x29biDDrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77129834"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="77129834"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:16:09 -0700
X-CSE-ConnectionGUID: 23EgV9c0SeSDX09SuwaxjA==
X-CSE-MsgGUID: lMkXM84+Tuiq1alLdrvOlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="230139610"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:16:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:16:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:16:08 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:16:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M++uhkZwrhEqOn5ddzhUEOsMopCf+kP+KH8k+6By6f7hy2IpUjN9GfxQ1h8RXpnVq1p22RcbjjcT6m8jaYqJONUnZxD7HHX7Hj21H7BGtzddf1J1Pp2OMf8LB1q1m6p4zi6jxm4+wqJj5re6aWqp+e2eMQsDfyetMlc8jlvMRGivXGnGQY0Gp91tRa2oL3aAzhwg5lw/UtkCwYmIaZpxAUq/n3qkn9TICrmi9WEFc35+gwrH0egsvsW8tq0O+eyUBtlMQMFRGqqY+vaRKBvFJQOGMcHDemn6o36IDTdJQargJbSnzfumj85b6MYw7J1sJ1GSWt/mWbXDoc7scNoWjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TcwkgLcV+eDK4Wv5eCx7OSTENfMHJvrCjGv9RZy6ny4=;
 b=GJ+/Cc0lWqOIKDxOpabWzxwiUhFi08UQrY8FGmb9qCptXd8d1kMGNLtDuKWKkzqlMmqJWZYD3x4znC29CHP6b89l2iWcrLKq4ymY1auM87GfWA498VW4hGk0xd6rCM1Qi4LxL3hX6VJM+jyHD7I9IcNNdKWLdTMA6BfT4kq9rLLGXZTziz5yFe9mJyPJQO36y2zgU6E2Fs30UkrmhGW87l/hXfMUXdntIE5zYZOMjqHX+vRlC6eTNhXC1Wv5RpTrzRn7MyTPOYYDY/Iq3aTEZfQlTGcQzz8v5q+hbaVlP8Z5aIisoo6eRMuKRCw580BK9XpIFmf5Fv1StZ62CuWlzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.46; Mon, 13 Apr
 2026 21:16:05 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:16:04 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
 trigger enum
Thread-Topic: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
 trigger enum
Thread-Index: AQHcvUQsFSylFYluS0Wmm7tsb3UJXbXdmkeg
Date: Mon, 13 Apr 2026 21:16:04 +0000
Message-ID: <DM4PR11MB63603F0F4D3138FCEC27730FF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5899:EE_
x-ms-office365-filtering-correlation-id: b35be27e-466f-4e7c-131e-08de99a1df5a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: c3BUyZoXFEW0Hc87+ZdBFDtGu/RfSM9ZnakljMdYlDSggksta3qkRrTgcl8W0xMLHluibI7kxiwItuGW3E2YKJUVEqMFPvcrSXd8yfzU+uBS3aUzNvRqaGRZm2XzHxifsZXFN6tO55F0PCTjR8HUavUAqtQyIe/vXICR7TH6R1P0uxHSd0xchfcOtUpLRL19ouIuUVNBsYqXaOU2HETt3avXEN5QIGqx7zJRJZVYmtJ3rUWTe8bwVq/6BVQ4JFPMqRBAKmBzBDV/8RtZnVEeGfQA/rWnm4o4j3+Eij2NfQAoxJXsHqXcw2nI4EOQ5vUua21Irzpu5DcM/on5nekWxLSwM/Hv3wE02mcTPOpT6o9MxCbagDnN4xnauiD/hsn9meCMglAYwWVfYYSBXgWCVkyIAuYkGr6U14kCXRyowc/H0hlQQVwwRAhp6MfH+jWzy0l38K1bYCVpJ59/Dd/h/5/RSXyFbgb1mAcoiVqGRM5q5YJm+DUmkrFEaXc1ThBbOpOzuetE875ylOWtnOgB6vvW2s843frBAbzl+EfpUa7l/z8TRsjY8qvgVbC82tX05bbdLqq48hU1jOIy1SvGeG/rki59qs4lRs3sOgNMMvkYwKOF2eEg5ybRujzwZdr27xsYdVTt7xEnaz7pGh1ArkknObihQ0ARbxGHag5aZ1BYiF0GeKynDSOQz/x7r1ICksW9C5Ux+3kWHi3kKPFWh18oxjWm6uSK/dXfqqzdaoIk4IcGHYzwtt43Xhn1m/Td57ykxA9b14ngR/ZKbHSFwHJqG3re4u/eS5PEh/jnimo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RrDeQQ6DDqLiHquaFa7rCSo5QQAtNnNl0OegrV/Di/Sv1cyuoO8BTQMXmXS7?=
 =?us-ascii?Q?iwPUOfhOmB61sYnjP7UARUYG+WrgHRNHoI6xTCgh7zih76DqxtAnTWRW9+j6?=
 =?us-ascii?Q?QPv6MokPNs+V/2XU58eIrnUwevoJzAJ40SUAOf6KSGJpmIuNLVYRZPs2YEbc?=
 =?us-ascii?Q?RkA+5x1HQozD7C/AtQX/R4/3kMOR53oiq5niAawigfFQpTfiKQQlWPKQJeap?=
 =?us-ascii?Q?sxnvA5zRs71PHtcsPVRY7n1fVi2cntgYSEIT2HPdqXpCgQdbwRdHdM6+NW+T?=
 =?us-ascii?Q?QberiBdmakAnK5cRSqrDV7UzDTiKUOd3f5G1qeiQ5jJdvX6RKPr8P4YkazC7?=
 =?us-ascii?Q?gxJY4AjBhtMGY0A9Y96+4fXm/HFfPkFQq0BeQK4G/hi7uZwXmYNEwiNo7nVd?=
 =?us-ascii?Q?WMaAaBrXWMHJk5bJsKdpiCjH/Djx78PIsN8qA1r7QdxPfAvpXGm5FN2MIPvW?=
 =?us-ascii?Q?ACyf3KpBM/cN5khlrlaIrNEeB8MQgOqQfplV3NkTpOheSgZ2J4hzsOgqT3+l?=
 =?us-ascii?Q?P6V+B1acq+XsRMmFCodRt7rmh4DB9yfWfmM6cBLZgYXtiw1SScMhvu9ekwBF?=
 =?us-ascii?Q?3wMV2K6fhHik0a+MfMLVcQFvlkLbRYlt4+AD0JPpNrX9EwF2bhpd1iqAYDS7?=
 =?us-ascii?Q?hwfj8Ft+P+qiIhirFHeOQqup4Ne6f9ThYeaCxRAf4W8SohAFM3N5rJBFSXMM?=
 =?us-ascii?Q?Jf8z+vpU4fhsxCSUSRUGOFzZG8DgOEyU/n5cLM3eQclJYhNlaS0q/m0N/otZ?=
 =?us-ascii?Q?ZWB2wnmCvRhu0sQ636Dxk3JiTJsDHXmZMHJhhAqt8G7Q4cME0fS22xmBMIPP?=
 =?us-ascii?Q?k39EihOitD/q6CEc0kMejdZu9fmE9d8pDq6uSYqlJkx7daiShQilDYfvh8rR?=
 =?us-ascii?Q?lkEGxQtamvg7a4As0e4lCfY+peSkk0Yj1bKfxyqfn8+pk06wyrLVMcaSnEpJ?=
 =?us-ascii?Q?BjNUSLuPA1kWAKH11XFubt3XmG8ML4B+Tq9yoMMaIZg0vUN+fkYExMWq55fw?=
 =?us-ascii?Q?AUXS8i+k8fbJBesonPvSYwiYq7qNvYShCoJV26wB4r4FykpVVDmyQHHsvT1H?=
 =?us-ascii?Q?fh3ct+hIcrWb11MnIgfHYnfKwvGXfutLYPgXUDUjVta1xtIBV9XrveWhYfsQ?=
 =?us-ascii?Q?minxZt0s8HQMVdMcEEwseof5M0B3eyafCDcwKzxkn5AiU272C8YQp/4HDExA?=
 =?us-ascii?Q?KkqEydyLWXVlhqf/SDMruApYZnSAh7iswRof+nX0gB+9aKL/My083yEy3+JN?=
 =?us-ascii?Q?f7IW5nFs1bUkwsBUpZQONHvG7vZ+vmrpo0ESstMdpy7uipkSuqc2fm3EHLo0?=
 =?us-ascii?Q?l2NW2R5yws9sjUhd7mTiThParduqboGMY3FTo2dnAK3tZpPfiLagu/Mtb5uo?=
 =?us-ascii?Q?oAEt38dQdDVCP5YRzfiVmbqy7V/dP4Ewst8nqUlEQirTfw9j9MEWDA4s31K0?=
 =?us-ascii?Q?X/x6b4GQlxavI5QOeEJO+Kqg1VWc0a2InvnXcoIVtzkCUQoV6/1SHjHM4hen?=
 =?us-ascii?Q?j2hZm93+IO6uAsxrWJB7lGu15HuXH9lWi55O1TkeLF8dNqcVfj2OWSi99QOL?=
 =?us-ascii?Q?RT1uYjQeq5rdfywfDgmD7WMawe34fqXI9jE8SD5f01RJOnr27R4YlBo4vfBU?=
 =?us-ascii?Q?XCVosxTTsQ3PpFN/HbQEq7WILNKH0SilCXCOBmcjmwrG7y+rRmuJEWtIvD71?=
 =?us-ascii?Q?z02eqxbRZNBq791kDjIYvtcrmktHv7Uk/eN1Mbm6oOZZobyGx3hiwCOyK5Yr?=
 =?us-ascii?Q?2a/QA/7QXA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: V5L8npznNnHsNmFDPBEElPAUHBXb/1sB1hRk08agXSyuPJuS8R9AkZoGxxePOkaQxSFP/eamrX3bd87zjkkBtDWkg8QsQNWbwUpe/ZP/PCiYpM1rCcQrzFU1qQxLaxcKusqY3ds1B+kRHnKYujTTOnVFKCPSU4x8XZPcdMLR8T4tayfcnftIFC6taNeH+ZsNjFi76srUNfCXSiI2M9mNcxBrB9FChSzo0fQAeppA1d3f4tF/S+VHmNfBkyXG3/Wj2n4eJiDn5wkgTbCH/d0GxhJg1aGUCopUZZuyCy+ignV7gNPFmsvffAj+Xg/tuyMORvhmmZ57RTTGnhLsq39OYw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b35be27e-466f-4e7c-131e-08de99a1df5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:16:04.8838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EtxGh/m53rJqtBpAzi8XW8b5LaDHdH4VhBnLBIAtcVuMy0wA8Q8y914DZglI8I7AYQc8dOAK4G18MCYpnyws1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5899
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 85CC63F3789
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
> trigger enum

HAS_DC3CO has not been introduced as part of this series so no fix as such.
Sync with CMTG series to finalize a common macro.

> Fix HAS_DC3CO() based on display version and introduce an enum to track
> DC3CO enabling triggers.
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_device.h   |  2 +-
>  .../gpu/drm/i915/display/intel_display_power.h    | 15 +++++++++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 35e06fcf794d..002fe0ce951a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -189,7 +189,7 @@ struct intel_display_platforms {
>  #define HAS_LRR(__display)		(DISPLAY_VER(__display) >=3D 12)
>  #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9,
> 10))
>  #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
> -#define HAS_DC3CO(__display)		((__display)->platform.novalake)
> +#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >=3D 35)

This is the trigger for CI build failure. Fix it.

>  #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p
> || DISPLAY_VER(__display) >=3D 14)
>  #define HAS_MSO(__display)		(DISPLAY_VER(__display) >=3D 12)
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
> >has_overlay)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..3fb45154864e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -131,6 +131,21 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>=20
> +/*
> + * DC3CO enabling triggers (bitmask).
> + * DC3CO may be enabled when at least one of these triggers is active.
> + * Additional constraints may still apply.
> + */
> +enum intel_dc3co_trigger {
> +	DC3CO_TRIGGER_NONE	     =3D 0,
> +	DC3CO_TRIGGER_PSR2	     =3D BIT(0),
> +	DC3CO_TRIGGER_LOBF	     =3D BIT(1),
> +	DC3CO_TRIGGER_PANEL_REPLAY   =3D BIT(2),
> +	DC3CO_TRIGGER_ALL  =3D DC3CO_TRIGGER_PSR2 |
> +			     DC3CO_TRIGGER_LOBF |
> +			     DC3CO_TRIGGER_PANEL_REPLAY,
> +};
> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend
> --
> 2.43.0

