Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 49q5CCOSlmmOhgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:31:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7569A15C058
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:31:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2476910E677;
	Thu, 19 Feb 2026 04:31:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOfz9nC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8095110E677;
 Thu, 19 Feb 2026 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771475487; x=1803011487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SeR6GZPA/EgUlke21Q7468vGSiIfQGaKmTuA2dcJe+A=;
 b=YOfz9nC3r/XtEEYQH/EkHsfaYpO0KFTsGVoaNplWFkKYkEQqftfx99wL
 kTw5DWeP952xJKCDxwHyBfh7p8NqYA2lgsCxaI0SV8xN4QU4mLTLJgFim
 4ugFqBMOOCWaFK8Ruz2SEdizLAh0HzIL8O6bqS2sYVRdNc/+YNrZpuEhI
 JgV5st6t7fYHLaEnpdAKhwKwSWZZ4Zftxmuu4J6faA55SQlUpOEjnR+z2
 kxO0whoUhD/uPSMgStuam01VR44lETFyabE++c9t1ro5jE6eYO0Cj0S8H
 Sf99Dd+iQnqDVvQdW7D06uUopah884C/5DHlHC1JwbLdhyNsAHYP08Yy6 g==;
X-CSE-ConnectionGUID: s7oKvt8wRZWXF+5zITwHzQ==
X-CSE-MsgGUID: zrPEtiCHSZiP7ptdHFVLkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72623174"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72623174"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:31:27 -0800
X-CSE-ConnectionGUID: 5wm/cvp0QTmUcz6PpR27QA==
X-CSE-MsgGUID: jLVhdc+NQ/SEJCS+X8IrFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219404055"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:31:27 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:31:26 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 20:31:26 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:31:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQNRZ8+49lvY8VW4ofjZ6oNwz6KKypU2gfvl+RWAp1P/8Yu3MAgGh7EYlMPjEH0sTQWqroTS39rbPK1vSaL5Cwr83JHrH7cc9c+/9empMiJ1N0w8hg+HzhowluEXt0PsiltX7cRQCjwjRh0NbmlENkHK/I7n+Vul2CY+SW7fW0shjRdqH98RanRnJ1n3t72Xgp02ZFDjwHyJqTQkoY4zvUOHo9Wug32JuLSUHjbwnT82bamF7DntXhyTX0hkgKwUbRL++c3JtxcCxawX4NCcbScfJ+CU8vhtoX4wX6h4LO0Ik90Icjs1ZlBxv3ITomyN3/6/gt5UoApG2eBpwX8SKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2k8N3DUyv8xsQDqq/nZj4Qf65kwkz2ElEjdsZVmdEE8=;
 b=e//R/PEoXItfGYUL3dc3nWZEuRr9tbicPE/fasVEkmaO6+IEtT43F4aLIpUYLKLq7O9Q8VcCntpeaKbV3klrXHDjj6aeH2LRsJhe8EE8ReDiKwZ6bbofSnIXtK1McCQEmLMOExLIbH9wag0Z1+Hf4IUAz73SrVaoxPOdpb6zTrVYePUrFQzyXrlmBf4378SRssoZIGXhz/IPomxvSbvHZMmaC6U308rJ/SmwwGMbQR6F0lQ8olqtpVoyTJs7di8JYeBm5FbD3lP1cmLfZ7TgmcocI2V9nKiraA/gg1v1HyIm69J80X2jUnIZLxfDk08TUCDFwp6J33+NO/q1LRPptQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB7100.namprd11.prod.outlook.com
 (2603:10b6:510:20f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 04:31:23 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 04:31:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 15/19] drm/i915/lt_phy: Readout lane count
Thread-Topic: [PATCH 15/19] drm/i915/lt_phy: Readout lane count
Thread-Index: AQHcnOTZa9Is//UxXk2LKu7U7gPlG7WJd0pw
Date: Thu, 19 Feb 2026 04:31:23 +0000
Message-ID: <DM3PPF208195D8DB92A3F73F71C7E1EB23CE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-16-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-16-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB7100:EE_
x-ms-office365-filtering-correlation-id: f759bbcb-629b-4b21-ffea-08de6f6fbd15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?dN0rASInJKtk4Rih1EiqJU1SRz/W9jRde6Ero62sTY+rgwAtK3pPnGU/NGzK?=
 =?us-ascii?Q?vGyvOmWwrP8xaAnX3PLeV9+HFJo3MWHywh4CTkgaFZC4dMvSpVbocGquBXm6?=
 =?us-ascii?Q?KKLzR+PmFeVvk8tvbL/Xku3OuJGtY0DigL06LUbxnyT4vMl8233cqcglT4Si?=
 =?us-ascii?Q?823PXAW+c74xvQHm6o0179U4U+jCvo4/bzItvGwJqIoE+PSbxAG2g4k7ZE2M?=
 =?us-ascii?Q?RHRQaDDsAna4dpjI5UriUmPMLv/zO4+UZknb5IXYu/mUHYv4oqJ4AigQ7Gke?=
 =?us-ascii?Q?R1wG6cqiSTi1CJhsrqQ8fcXTZ20ttpP4nanhk2Nb2mv/NtzMTFjHY86dMUyn?=
 =?us-ascii?Q?tgSL/o/OjGZ6jZqEnc9K2Kjc69QaPEwAncqu8L+Fd4n4JeHl/gfVZ3bKpTbF?=
 =?us-ascii?Q?LtOTlzY40QTLCfIRQ8pdn69Hux0npFcgKofOvsB26AvIvyvQJEFY3Xzeefxn?=
 =?us-ascii?Q?dc80h2bYUHvY7mTF35sjBq6LdMicFgKd+o8GhUmZn76uMJo5zAFiXk4ChWz4?=
 =?us-ascii?Q?3WeL8VrFv2w287ooks7jU7EVV6LqVAb/nmFX27sain3BMrS3nPzhu490PYjI?=
 =?us-ascii?Q?qYwpvmf5twcp7JvNEgvASGo+FvFL3oADEiKO8kMJEyV8llg56FIvWxf78t9i?=
 =?us-ascii?Q?F5fS2PqDIZl0fA465C2RXq/691ydYZsFpqBmGHGAXrv+8yNt37ZkhBEBxI2K?=
 =?us-ascii?Q?KhaMMhAVAkU0BzG1wvF6gVE4/Nx69hpjdkVqsuHc4YOCd/BnnRPbhQogaeMS?=
 =?us-ascii?Q?SY6VFwOGGIdVebCps87twUWXLPLDXDNg2CuWhsiJPWcpYbhB/VjkbJobfCjt?=
 =?us-ascii?Q?r01hxyTzAzx+DyV3WkjDOoJaJ9R2m+/wX8y2xKTyG2jaT6QxAth2tr982K1d?=
 =?us-ascii?Q?gvKzTCQnXM7vIOncEwu5aHJkFw9fMCXbM6YeSXmht8mNt1TNh/PXKs+4xOCD?=
 =?us-ascii?Q?/a9Hvr0bWexuqwAY8z5wFRM5IHTR1kAhK7NYDYhvFvfo8ceYLk2KbbWss5J9?=
 =?us-ascii?Q?WZz7T/6GikZI7FefbUqPldH/IlVgQVm9DHT74YAWnMxrbNxb1lj+j1VqKZu2?=
 =?us-ascii?Q?/8wCA7f4NeFqfX71RmlvokvzBf2rAZtjEMxoL7YPz4U2nZ+FOoqRNqXSMvYH?=
 =?us-ascii?Q?gwn5EbH9AEtYFqyfeQZh4rnDhVwVFFhJ4NytOfUVlBh/qTtK2mVML7qQsFdY?=
 =?us-ascii?Q?6zcPErDRtYIAcRvnujU0HUmXGD3tyfa/RFvk1hj8MwcABh9vmv/bjMCNyGJr?=
 =?us-ascii?Q?YB3/mc6eERwjCg0Ac1+UAXjGQScUg0UrdsUxHFl3O+pcta5GuAigEDNzejcH?=
 =?us-ascii?Q?1S+HxfLEGtr60Xsg8ShCsRFf939V1BkjSFkugza02qTAQhcznKWL8G61+S+O?=
 =?us-ascii?Q?At35TNJS6Y+2d6oekuvE5oeRS1nmuW6rYnuaOcxEUe0OmxPbRDrnUEtqvNUT?=
 =?us-ascii?Q?6WFoLJh9Raqo6tIKnamjj+kck3ZzFsiIdUbuvI1VtWmKFIJi9IwfBxXRjmZK?=
 =?us-ascii?Q?Z164GogVbzxdjJR832s+p6XwJSaU24tNj8TDfzzklqcsR/huVKIEEMXN7cmB?=
 =?us-ascii?Q?E2ScxhKIvKt5uwYhaqKG3fPddQTwZPxtFR/xIbZ2iWtL4WJqwkQOG9Q+1Dve?=
 =?us-ascii?Q?K3YBv9F16A4PaZCF4N2NeNg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?afzBJLWjJR2R2VZYzW+2BD8Y+qe8smX6RodFGwe14H76ShZTeQ+2sryt81KN?=
 =?us-ascii?Q?J/Da39Es8PXROxu5loBR9/rBoBAaLK5kLo8o9uFFRafVGlNjepOsLtk+JFjB?=
 =?us-ascii?Q?t/VqMvlKQWXW2rJ0AoNf27FxplWCnFvxbxaQTrrRlUg/GDdTd/u3epyg4pl1?=
 =?us-ascii?Q?WxSRWqrAOaIkdIL+/CeEFOVJ4MFG80jeSr8fmq3CJ8kV3i0zwpztuUzZEzdG?=
 =?us-ascii?Q?HxAmTmniUwn3rc4AKySK75DmaZAn6DBfuFCDVJi7Z4IsI9ojBx9NMA6NdeO/?=
 =?us-ascii?Q?5mHoYq6uZT3hfiO9kEeWL0v6BTqkrNAw+yUWIi2Y5EJPsNEnmndzUFT8UUS1?=
 =?us-ascii?Q?/GObApAnYBZ/k3lfvRnyHJ5RbXhMJ6oc+0HrqdC9vaYMwZ1BkBTMPe7p4QQe?=
 =?us-ascii?Q?Q5sCtKaf+N60BO6A2i4CHnIsnpRI+1+7X7ADu1A3EXQOTHHEXHxNkA6UdTCm?=
 =?us-ascii?Q?kd7NawQD6otHW7c8ZzNf0jEka+o9DEOeTeWW18/RAOA0DoT5U9eoiF/uEx/F?=
 =?us-ascii?Q?f7rf9xqlv9MXeIHNdwvnH3gv6oCxPKi99eqq3te5QVrzmxZQtgpT/1XYHpIY?=
 =?us-ascii?Q?pLvSQoSd7xTKnWWTDV6TZmjFZDFbYOCmkZ2iapiCJV1DSwdMRWbAlCNYt3g6?=
 =?us-ascii?Q?et5p/QLGn+XHcerDCHXEZmbupueN5P5uaorIXMOXPDuMqDtUE1ArJj73+z4k?=
 =?us-ascii?Q?EFA9pnaDUe5ZStrG1gtJMheKeJOnHN5UfvE6YZTmutbBlFDt7mrstm8f4X4W?=
 =?us-ascii?Q?LS0LjeoJRMWAEAHMqVdcn5p42BxsJGJWas8pObzQkunnP7/DH2+Ti+wDi/+z?=
 =?us-ascii?Q?PaJbdw6kUvLHfw73+pakXLqxjI1gQK3/CghCrIsCPR8jwAeP+YjReGSo6l9/?=
 =?us-ascii?Q?Iy02Tx9s23E6va+zEib0xskiIJGlidex9py5Xw1orM+FlTUPSLskoEGsszAw?=
 =?us-ascii?Q?qTvrragaCSpFOryCjyUdGXBexwZrGhJTMASNE/L213rUs4J9EgWnh3YbVoab?=
 =?us-ascii?Q?h0OlqKonaWj8PIgIqCrYybLNmfUyXW8XU0Ntc+lmDSN/lJNrUxXvTz9NCM9N?=
 =?us-ascii?Q?ogXK+5s85IzAOigHYTs5bRnUSW/rh7BNjqhRbpUPSW7ZwkP/Lg3mlKxRNTBo?=
 =?us-ascii?Q?J2goUuACytzhwHV5QDrh3oZ4KlEk43pFlAlfuReB4giUkl9YrydlDkyI3RKC?=
 =?us-ascii?Q?9c1Jvfa4QCNn/eG59SgcOq/RQO9sr0tvf13rV95M+OE4r/Wg1SVJSl3ScnDx?=
 =?us-ascii?Q?jn4LYxEoDDw3fhFxOLJz8wQXTv3mPOr+aFDJXcBdDdcVb5+p8PZspbRS8Ord?=
 =?us-ascii?Q?90y/E467INwJIVznTXo+JCKwuv0+GUfzOn8cjyxyXMHJ2LlL5QWQ3kkM3nHd?=
 =?us-ascii?Q?tcwMfY6rUF9Cx0/IFoCSCMntSJkrDj53sHcyCom971UPzQqVtw0FkNNdeApD?=
 =?us-ascii?Q?BRn3cpS7CX4jadPYn7aDWLxsRhTh9zjYkn5mkDVwd76twP4HPaRfhSoizHG8?=
 =?us-ascii?Q?HT1/0WMO56KjKmGvHiXM9b5H4M5ULMbFUQICRpSowqe4Rb5TE+H+wt9lDxXq?=
 =?us-ascii?Q?Cxwvsw3ZvFmOfoq6MFMpRSIdC830ZTbbzrmbAgSlA4sXc7Hh30eelPRpE2Kn?=
 =?us-ascii?Q?lVtGQ9oPs4DwJxjPK3RG4MYNHpVYkL2KqQF+cj8lPR6zlBbwVEvFiDnD3FIE?=
 =?us-ascii?Q?d9R3w2Pgw15otBvyQDN88mGo4lo3iDbvF4N9icV1E5Xs2EzY84DuSd5mak9T?=
 =?us-ascii?Q?VtoZinVpeg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f759bbcb-629b-4b21-ffea-08de6f6fbd15
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 04:31:23.7147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l1Ek4yIDlIeTWbN4C+4rh+TFa7jWR+7GstYqKrCiw/VhYZDaSAlf7Vi8GafGI5ENPKzlRRXT9xvmDKWhtg6GtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7100
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7569A15C058
X-Rspamd-Action: no action

> Subject: [PATCH 15/19] drm/i915/lt_phy: Readout lane count
>=20
> Readout lane count back from HW. Reuse existing function for Cx0 for LT P=
HY
> case with minor modification to add lanes as function parameters.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++----
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
> drivers/gpu/drm/i915/display/intel_lt_phy.c  |  2 ++
>  3 files changed, 9 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6a471c021c0e..7e59409bbf01 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2180,7 +2180,7 @@ static int intel_c10pll_calc_state(const struct
> intel_crtc_state *crtc_state,
>  	return 0;
>  }
>=20
> -static int readout_enabled_lane_count(struct intel_encoder *encoder)
> +int intel_readout_lane_count(struct intel_encoder *encoder, int lane0,
> +int lane1)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	u8 enabled_tx_lane_count =3D 0;
> @@ -2212,7 +2212,7 @@ static int readout_enabled_lane_count(struct
> intel_encoder *encoder)
>  		max_tx_lane_count =3D round_up(max_tx_lane_count, 2);
>=20
>  	for (tx_lane =3D 0; tx_lane < max_tx_lane_count; tx_lane++) {
> -		u8 phy_lane_mask =3D tx_lane < 2 ? INTEL_CX0_LANE0 :
> INTEL_CX0_LANE1;
> +		u8 phy_lane_mask =3D tx_lane < 2 ? lane0 : lane1;
>  		int tx =3D tx_lane % 2 + 1;
>  		u8 val;
>=20
> @@ -2252,7 +2252,8 @@ static void intel_c10pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	 */
>  	intel_c10_msgbus_access_begin(encoder, lane);
>=20
> -	cx0pll_state->lane_count =3D readout_enabled_lane_count(encoder);
> +	cx0pll_state->lane_count =3D intel_readout_lane_count(encoder,
> INTEL_CX0_LANE0,
> +
> INTEL_CX0_LANE1);
>=20
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->pll); i++)
>  		pll_state->pll[i] =3D intel_cx0_read(encoder, lane,
> PHY_C10_VDR_PLL(i)); @@ -2707,7 +2708,8 @@ static void
> intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> -	cx0pll_state->lane_count =3D readout_enabled_lane_count(encoder);
> +	cx0pll_state->lane_count =3D intel_readout_lane_count(encoder,
> INTEL_CX0_LANE0,
> +
> INTEL_CX0_LANE1);
>=20
>  	/* 1. Read VDR params and current context selection */
>  	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx); diff
> --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 1d4480b8bf39..1428e7a5a318 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -28,6 +28,7 @@ struct intel_hdmi;
>  void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
>  					 int lane);
>  bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
> +int intel_readout_lane_count(struct intel_encoder *encoder, int lane0,
> +int lane1);
>  void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  			  struct intel_dpll *pll,
>  			  const struct intel_dpll_hw_state *dpll_hw_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 365c6e07a257..68c63d680e23 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2231,6 +2231,8 @@ bool intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	lane =3D owned_lane_mask & INTEL_LT_PHY_LANE0 ? :
> INTEL_LT_PHY_LANE1;
>  	wakeref =3D intel_lt_phy_transaction_begin(encoder);
>=20
> +	pll_state->lane_count =3D intel_readout_lane_count(encoder,
> INTEL_LT_PHY_LANE0,
> +
> INTEL_LT_PHY_LANE1);
>  	pll_state->config[0] =3D intel_lt_phy_read(encoder, lane,
> LT_PHY_VDR_0_CONFIG);
>  	pll_state->config[1] =3D intel_lt_phy_read(encoder,
> INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG);
>  	pll_state->config[2] =3D intel_lt_phy_read(encoder, lane,
> LT_PHY_VDR_2_CONFIG);
> --
> 2.43.0

