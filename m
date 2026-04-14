Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6N3sHyF13mkqEgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 19:10:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6493FCE22
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 19:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C359310E5D1;
	Tue, 14 Apr 2026 17:10:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i85jwxJf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B7710E5D1;
 Tue, 14 Apr 2026 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776186652; x=1807722652;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yC5AR88dJoG+e3rG8bmS+6jBqxAd8uVTaOh5IP6T+Ms=;
 b=i85jwxJfEALptoH7IsH0NZB7S2kNVhQORzxV+SrTDQ96wJP/2H3R14eE
 ksavRK6N/8AmkB2f5UyJRpj2Cp7co2xT/dZsjShryZlsEjQRuAFAYwyJ2
 XFmPW1Su+8N/EqvWo8a6O1tFObZf+EQXN0VXel0H2uzqyhi3GcSs9WciX
 SGtxREsq+wCIpm+zKd9k2KUGMsD3YyN9dvOaChIVevcCm45pmXbD38uFo
 8NgfZ7RgnNluXr+4532VybREfshxd7hhLahQMmszQUAAFFwxS7ld9gkoT
 M8j75d2T6oiu3fQuzuGfTKe6flRUwL1m4pYRmxQpV00Ad89bRqnjkA0jO A==;
X-CSE-ConnectionGUID: y86zpQpPQhqz6AUuQcxMIQ==
X-CSE-MsgGUID: Jl+041yGQxOoii/2H7IKbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="94553542"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="94553542"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:10:46 -0700
X-CSE-ConnectionGUID: 4S1oid9BShKf3JdbLyH7eA==
X-CSE-MsgGUID: 6BNjKD2vRgmj4vxil9M9EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230374998"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:10:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 10:10:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 10:10:45 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 10:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hXrYcHV14WRIpNCGmjmZrmFkq9TIVYWt7zyliFYKXQjGmJFDyeaaoBmLLxSi8DWkmLCYUFQvSpvtDxP7lNmkrIbkZ9JkBSWPp89sWYbx7VM3M3D3Nro2a+ToJBm6WEYH08Qc+ht5yjzhR0yTiKfwLYn4jGpGJdKbRLoJVu5BKBYLujZ/nCD5N+f3G+liXy2Q6ZGZr0JStLpZOcukd5QRO3ozUSoDfgwI6abagvo2x1nDA7P/3u+LXJ6nfrY6W8+ANfXr/bM7clUxFHdoN5NBBQPe6LzNYbVE892LkcvJV9dgl3nAPTssad7zN2VQKMUni9cfOjwm4K0Wkp5Of0y2Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVVgRUDpldnrMN12Vhab/4DQWiNs4E2ozNzU+MVzHko=;
 b=Um0rbHVv3ZmWsJ9iIYh/aF6J79MW9LtNLM9qCHV2iVTji2muovyp0hRKEw28ua2NiJJf5IApdOrf+5GWpdlDoSAZGouRqUpd1GjgcYnNuo7QzwIajHj4WJmbfJr8qhZ3lkPso9FQ+77iWmNSdXAeDrPE0AYfXeBB81gknP98AuFstDgJVrD4sUxymGDBcN7i6piVEaEhKG4sEu8MGvi44bEYhYEYNdbg2QSF5uTKr4qKv68lErFjWir2oxddEUVLYYGL9t8VFupbvcYslF6fy3byQvqWdmCuQo46FH4PwB6S5giBbFGlDf6rN8Yo9J6T7UykpjLVYrtbWVmLo9dTXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA1PR11MB8576.namprd11.prod.outlook.com (2603:10b6:806:3b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 17:10:41 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 17:10:41 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12 UV
 surface offset calculation
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
Thread-Index: AQHcydeH95mm/srKq0CqfRo0nHMO8LXetv2AgAAXdCA=
Date: Tue, 14 Apr 2026 17:10:40 +0000
Message-ID: <PH7PR11MB82520337B2387D40ECBC4FDA89252@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <bf735bb719753185479461767d7c077bd9c3bfda@intel.com>
In-Reply-To: <bf735bb719753185479461767d7c077bd9c3bfda@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SA1PR11MB8576:EE_
x-ms-office365-filtering-correlation-id: f5a6c862-d439-4c8e-df23-08de9a48c1a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: ac+VZP2cuGd9HIo2Om05CL5d11WYv3rLarnjbuXwyx+f+u0cRQvhuThGublUc5W/Vm1DQlcGDJCWunclZWzy6En05ipr+6MwOXbLBU4//TipEMri9MfwEd0OhslJ7/muS1Aq5mM75PF6Ok8RSBhCJ5JC6MRduNT2Ej2x1ZT9qQFYIzlCX9rUemts/3mjWHEG8Ocdhbq+JsDLNLajNE2pVksciPzBmwst67/YEZnh5mSGcfBV3ftXg6DWU3OOqBIRZiy+yRUyiNA97rUEnwvXfUd5Q7mqU78CQMaXcUgXoIUlis4GrTig2LT44vkPkfYyszOs/+DT/N1EGNbzNC1kylOPLt+hCEo4tnrPEXKkOJYVvQWG3gKXBCwPbFVV5YHyi+mn0O1hHMIspchIJNnthgP2IMXz5lzBZy253xJ/THneT1j9l1lSsOEftViD2U8FMmD+ukz/ErneWyr8zQaZ70c0pGyjL0RLAErX26PBDBpoB21DD3dr0q2RVOcYrr2KJJwbiBaki3nuHf26NYH/Vbu4Lbh6CEc3+zFMJDZY+ywpO7clw5C6h1JR03T0m/eur02ndiWzVlLo9LWWqblW7Oej5LclmXgLyUEw7c4WL5ElrzSvJe6VlLinLykkIemtixo5lupwStcCRPO/hzYkoEQsQRmoPe4pmVPcMJkN1HreEgKwBL2NjCVoHTKc2niNSXe+0shMqjqn5c1dDmGCC+WcbXPVb2r9fYQhPMlGfqwiZDwTZiSjqW3YX8pi+TKd/2GUu8dIzMbxXsp0njsFugX8Lxb6JgbHkum9qii11WQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zPLML9aLYpReUnQ24vS6gssL1i/UtsSo+n6Ate7LoTmQmu/5hXmpUprtwpv4?=
 =?us-ascii?Q?GTKbyDkzkzxwWbzv8Z0x0GT6LbuPAkpoTGRT9pvcBtSeC3dHjnXd/Wm9SIJs?=
 =?us-ascii?Q?hrf0Cym5YQUMOCPdGG2zmRCITwiVkYbfDFeXLPx9U3fITboHKS/5fFNtWV0P?=
 =?us-ascii?Q?LsvnKuc7YSK/9j/lgXvIjVRtqtM06FDDjhH/hpBe4OYEs9lO75SKy6u3vxF7?=
 =?us-ascii?Q?4CT5ItTKGeUQz4WwuU01DXrZyPpfew9L4gMdXg8U4Nc9s1G8CCCOav/llu1m?=
 =?us-ascii?Q?cNnS+PVzfyiUn6EjyrKtNzSCggty32s8StMftWB4xR1MYLTAgIC4odghAYBM?=
 =?us-ascii?Q?yO7cPmSzLZO36J+y7290+AZWgN9v1ksz1DZqkSoqh7ZvwNWLACQKdghCen6j?=
 =?us-ascii?Q?Oh/Kl+EQ3tHmOFwGauvQy+bC5Eu05XtLnbEyp5mfQ5tgrvWna7EoBWfbulrC?=
 =?us-ascii?Q?6exm/oorc0WSxR3OKiPGI6PXwDo+a7My14SqQM2y1Xu/k7Wa8ItxiJNTdnDh?=
 =?us-ascii?Q?YEWV9SXRjXDnpK55h5tjHB6yFLQu3SVIeywFxt2EhPcmd/ADMr9ttyap9ZiX?=
 =?us-ascii?Q?OEOt8LXOFoSYksJc/bPjArFrkYWXh8kX0Kezb3PGPiODxqfwe7Sgfv63ekNy?=
 =?us-ascii?Q?eHVe1T5R1d6sUMO8ixts/RvHvrSiINyJFTcsHuslTWn2ChF2CDWCgJmH+tev?=
 =?us-ascii?Q?Uuji26njobcIe7l0OP5Ckm2k8I1q+CnWpgU8dcgSTZgnaLIrrmEGLXi1q9sx?=
 =?us-ascii?Q?n4NCAc6ypke1C67dHrPfaRaTLWOSyt2gBexrXYFv3aDPrKoWve2o0hCHyaCf?=
 =?us-ascii?Q?NV6rKbEDjmdRbGK3NY0PFk6K4t8NNByNbGfktSqCD57nc1ITykiD8Db1JcO9?=
 =?us-ascii?Q?xiKXUlazbq/3JFeaCI7nttfuijEVA+qESLO5WbKCB6RyvUHz8wMUJA6p+JLO?=
 =?us-ascii?Q?E8s8iAIjuxcypzOwG4T3hL76f+cFOgPis0Zc+/DUQcRiaWLTAgONofsUIKYt?=
 =?us-ascii?Q?odNtN7AX2cirWi9cOnLqf99rzTS86uycXp9KqfiIBnwS7iKCWkkGTZC2ogr9?=
 =?us-ascii?Q?eS9tzVUdYcLVrRtP9Oh57ujDxUYOMTw1RFP9lYIHpZEPdKBN0k3Tav2AvG5M?=
 =?us-ascii?Q?J9lElVh7qmJCpLDyG4ySLFVKeEZBKt2Zn8dS+/Mb6l0+wvA5iNiHFT8vaElW?=
 =?us-ascii?Q?IShQbtb5BwGvXjcMPCcJiw7b1sx4hFMU0pNCWnqKRGPRo9eYPGb/j8z6Y/aq?=
 =?us-ascii?Q?WoQM31ypZW0WCIcp+G1JNejJYm0ZVd3xgo/Fp2/aDRtf27mpQqjV4vYZHaIQ?=
 =?us-ascii?Q?/nG/9noPHe79RYgkE5+AdX64rOwlnTES0rvsGGc+/kFtLM/U9I4WKPizYcLl?=
 =?us-ascii?Q?p6vAcMXy3x2dQkS8Zsz1aQdRkNzp8ZwGSmNpSsv74imN2ieYOP+hBFTb+rjh?=
 =?us-ascii?Q?+VrpGDRTc0gyf9UEjFK8C/CCdWQcOtphAYLGNigAG0K2Y35EwFNMYyl4SWxL?=
 =?us-ascii?Q?xXSC2oFJ0q8sEhN3X3RjoO8CA86gUmEe57j1fmxKzO21B7kIVKa4gL382T/S?=
 =?us-ascii?Q?GPTb47TgLtOshHQzygPTtlmkqdnj9P0tZCLv2sThKE9IHVSID+wO7LfNWJQw?=
 =?us-ascii?Q?/i1bpBZQX/RbLAAhHCxgsJTwcK3W0laJZQVgtJMx/FZ4qRugHl9jx5D86SUl?=
 =?us-ascii?Q?gkIboJ84DIyQ9SiRQWczkb4VBjwboHNF/rDjI2dFO1mfn8Gb5am6E+KrzSTJ?=
 =?us-ascii?Q?Ke69NsHttw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jgySOCb2deWLSSig4XkZ05KZgCL/b8wwRmHiumVGeyNbv9vtC6ISepEY6dYLCvwynrd8hLqoPlbLMtja6CzO+6xaiVfgugiWPJj5beFSqSmgDZbOlU5sqQMxpb2swva0DSQwOHzm24qVGoAZG1aNn1dL4v5+ccQDGYUqMf3iDZGeHkv4u0404gM572g6IGWWU9irlZISohDwo3jqr0QzK0bf2mEgR5/IJkS24+NxR9rBSCJ5dJbD58tJgEjHNXLLj/1ZvsaI5rfT//qsBxrrHQL4tqPdUwxYPeU8nol+KDUOtu3DF2p19buqmJqVbECm62GXI3SIIbyzisGR1ciofg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a6c862-d439-4c8e-df23-08de9a48c1a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 17:10:41.0123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xhq2FJ/oK+d9gAL5cKI3aBeiZfhozqw+ZwEc+n6w3oxW2KrvCISz4i9nV/2bsYh6DscDnMTQKG4ndt8BqbMH1jZix4UijEROsfCbvdiUZlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8576
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AB6493FCE22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 14 April 2026 21:13
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedeskt=
op.org
> Cc: intel-xe@lists.freedesktop.org; Srinivas, Vidya <vidya.srinivas@intel=
.com>
> Subject: Re: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV=
12 UV
> surface offset calculation
>=20
> On Sat, 11 Apr 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > For LNL+, odd source size and panning for YUV 422/420 surfaces is
> > supported. However, it requires the UV (chroma) surface Start X/Y and
> > width/height to be calculated as ceiling(half of Y plane value) rather
> > than floor. The current code uses (>> 17) which is floor division. For
> > odd Y plane values this produces an off-by-one error in the UV plane
> > offset.
> >
> > On Android systems we see PLANE ATS fault when NV12 overlays are used
> > with odd source dimensions:
> >
> > [  126.854200] xe 0000:00:02.0: [drm:intel_atomic_setup_scaler [xe]]
> > [CRTC:148:pipe A] attached scaler id 0.0 to PLANE:33 [  126.854617] xe
> > 0000:00:02.0: [drm:skl_update_scaler [xe]] [CRTC:148:pipe A]
> > scaler_user index 0.0: staged scaling request for 1279x719->1340x753 [
> > 126.854837] xe 0000:00:02.0: [drm:intel_plane_atomic_check [xe]] UV
> > plane [PLANE:33:plane 1A] using Y plane [PLANE:123:plane 4A] [
> > 126.854926] xe 0000:00:02.0: [drm] *ERROR* [CRTC:148:pipe A] PLANE ATS
> > fault
> >
> > With Y plane width 1279:
> >   floor(1279/2) =3D 639 (current)
> >   ceil(1279/2)  =3D 640 (required)
> >
> > Change the UV offset/size calculation to use ceiling division by
> > adding
> > (1 << 17) - 1 before shifting. This is a no-op for even values since
> > ceiling and floor are equal when the dividend is even.
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14
> > ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 7a9d494334b5..c455bf92ae99 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2139,10 +2139,16 @@ static int skl_check_nv12_aux_surface(struct
> intel_plane_state *plane_state)
> >  	int min_height =3D intel_plane_min_height(plane, fb, uv_plane,
> rotation);
> >  	int max_width =3D intel_plane_max_width(plane, fb, uv_plane,
> rotation);
> >  	int max_height =3D intel_plane_max_height(plane, fb, uv_plane,
> rotation);
> > -	int x =3D plane_state->uapi.src.x1 >> 17;
> > -	int y =3D plane_state->uapi.src.y1 >> 17;
> > -	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> > -	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> > +
> > +	/*
> > +	 * LNL+ UV surface start/size =3D
> > +	 * ceiling(half of Y plane start/size). Use ceiling division
> > +	 * unconditionally; it is a no-op for even values.
> > +	 */
> > +	int x =3D (plane_state->uapi.src.x1 + (1 << 17) - 1) >> 17;
> > +	int y =3D (plane_state->uapi.src.y1 + (1 << 17) - 1) >> 17;
> > +	int w =3D (drm_rect_width(&plane_state->uapi.src) + (1 << 17) - 1) >>
> 17;
> > +	int h =3D (drm_rect_height(&plane_state->uapi.src) + (1 << 17) - 1) >=
>
> > +17;
>=20
> The problem I have with this is that the original >> 17 is already too ma=
gic. It
> divides a U16.16 fixed point in half, and this is completely non-obvious.
>=20
> The commit message doesn't even mention this.
>=20
> I think this needs a clean separation between the division and the conver=
sion
> to int.

Hello Jani
Thank you very much.
Thought of using DIV_ROUND_UP(value >> 16, 2) but it would lose sub-pixel
precision from 16.16 I guess. Kindly suggest.

Regards
Vidya

>=20
>=20
> BR,
> Jani.
>=20
>=20
> >  	u32 offset;
> >
> >  	/* FIXME not quite sure how/if these apply to the chroma plane */
>=20
> --
> Jani Nikula, Intel
