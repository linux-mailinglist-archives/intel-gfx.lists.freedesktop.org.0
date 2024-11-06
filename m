Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 720C39BF3AC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19AB10E742;
	Wed,  6 Nov 2024 16:53:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxEuwBAk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12BF110E741;
 Wed,  6 Nov 2024 16:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730912030; x=1762448030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eC6chfafNKugU3neHrWN4xlVDGXIQbNxpMbO9eldjUM=;
 b=NxEuwBAkZUaAiQpG+fBVCI7ObGPgq+bgVgWno4O2YN1XNTBbZN+RKprU
 mIy9tdOAhuf2GSybKjP/TOYT5IEqhVn1RehTN2v0jr805V2CSb7xUDYUW
 7SEYk0tD2GoyaIGRthszZAOkYlRk2sN7QHG84Yr59TxU5e+T7QB0rIwJS
 odbhKcxKLl+x+Ea0Om/UvGuTveE1UVbEp89ncCOMcYw8MF+UwvCOXOc8W
 JRMliCrbOFd2vRDgMlJ1QWSwjz8KTY4Pw+9FQKNKJT4b7hdwEMBHrSnFv
 X1ev7zi2STKBzBofP3DnLWjSqoG+7rQTKzFfc9R32qZeECLS5vwWNpcRe g==;
X-CSE-ConnectionGUID: X8WlYUIcTJmeNEB2qFStxA==
X-CSE-MsgGUID: fVHetPZnRwGo7BmwEKhDiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30836428"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30836428"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:53:50 -0800
X-CSE-ConnectionGUID: oGwlhO/pTPKtQP666eqbug==
X-CSE-MsgGUID: kWo/B8dbQMigj4qTufaNyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="107957710"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:53:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:53:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:53:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:53:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ep/LQGWAHhQNDhXA8F8sFO3BEGGki8pu04DPhPdtMGB9nDuzVTBcYj91Y1oQu5Nxoi+nxVxWRFXzlbjeKD9Hf8oto7IbrpYP7np00naDoCYan7NOiKrqc7G/kOVN5Iya7cKG/s1un6PIKAEl2VSNY3lBDnY/yanqZ0jkQhEgIv8aheO3A3ZHg+UIeM4KvRyJBsYV2NfPGQqWXO3sieZMqfgYFyB7C96btYhubF21zn70whRtgABOlCHpa+w4ro9Ku2SMiPoB3X98bGe9AHEhR/ITTZMbCXdJWCK0ik1nY/eLm2PQCf85wOo9dRaPX5W6bam52jDPuX7wtbkFSDvfSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=csb6pdG5nraecF29V77f++z1G0NKLynx+fr2mh6kR7w=;
 b=GzgyPtrxGZr1ObGHOGTUA9bjg96ZbAy6aIoHQ6L7j3fTNZG2DP1bXrxvQnWFeM3aE1TaUyxNFiMGNLYUX4GCmuEUq1SJxLTVmsDGy8n7Z5KFvZVhnq8eV4cB4jVQmOuXUqn0Nky2+xgNvxCm7FW4OGSijTIvFUJISfvZ8v3HBFjm2+HhmCB4pckShq+gihXGZdvfYBh5zufOpf7lsBUs2vMDo+QHn7eav3O1Nb3zC/A+8g15pFaEX1y3a9rKWY9dVVIaB/3BU9ufQmcxDTZEjx7e1C+HGCq9Fw0LXJg6ijlq2KcXcxyJBArTdyNI7D7oYZo3LX6aNIEZyw/7PkiXag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7316.namprd11.prod.outlook.com (2603:10b6:930:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 16:53:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.032; Wed, 6 Nov 2024
 16:53:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Thread-Topic: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Thread-Index: AQHbMEqfzxKpZCIT60udDQ03iHkYUrKqcYWAgAAGUqA=
Date: Wed, 6 Nov 2024 16:53:45 +0000
Message-ID: <SN7PR11MB6750A2E02B5E883F24045D21E3532@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241106125100.852609-1-suraj.kandpal@intel.com>
 <87ses4fhqu.fsf@intel.com>
In-Reply-To: <87ses4fhqu.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7316:EE_
x-ms-office365-filtering-correlation-id: 938198de-1549-40bb-3133-08dcfe83942a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Iqa5fwnfyz2h3ZByEcZdIL31BdaGucX6OuW5QARMUoY9SsAm3FUK3oKoAIja?=
 =?us-ascii?Q?0PXintF796Lk1snA6rRPVklTf8fmFaXVwgaCAE2/oQZdbK0x7Gfwn2ypIGjS?=
 =?us-ascii?Q?m9/RYxg94geH5qyoSkYZXc0SmVIVRvR3Zv/NwGiZ+aE1B9b8lpwtzqQTLe13?=
 =?us-ascii?Q?x0pnUwtooC5tkoe+cwgr6ohjQ90jK1ZqzgQXnmsHCrwLlfJWo4EypjEqoc0X?=
 =?us-ascii?Q?0Kv7Wn1yZeOCf1Jd99DD39TeJ3eQLWE5Tg45uUoSubduH8QU1IHOGfBK2Ypg?=
 =?us-ascii?Q?7b5E5czhEILwbHCdnxK4wkoASX/6MCfmRoG4spuYvx+d66I2pzsd7Z3HDqV7?=
 =?us-ascii?Q?yoP+9znzZ4ATQy9teS+tqRKVbeAvjQEvW8VH1tRduVJRzzzgLGnbyKpITppx?=
 =?us-ascii?Q?BoocZCHKs/3P+gvC9hW9ZiM3LFeAefsqwStfgpv9wDrrAIzgGjyOvLhX50rw?=
 =?us-ascii?Q?ORCWIWfaG2oAvtXRz5A1ZsdSbE5CWcv4bQevkDfHiud0R3AV7O4UxGFAZ8xB?=
 =?us-ascii?Q?LYTDfsf541gcqeuM9GOGlouiPVLc8qIUZZFl0FSrPziIur5M/MNG2adwJYpH?=
 =?us-ascii?Q?fmLdZCW/M2ALhAAxsukcVi5etv9KzevOzyJViPcFOl00pICpymWcTkg938pO?=
 =?us-ascii?Q?1gUCFtrTclW4B1+NomHo0IfbmdkylCF9vJoqHNb2POFWVNKNVPkGmmiOaO0v?=
 =?us-ascii?Q?xxWkhpy/AxUySMHD60XGe5cvdzwe23h2impsOTziNbszNtIJ4FjB4o/+BqtL?=
 =?us-ascii?Q?+fnh90VyEoaXonH3HwWea83zdxh6kmSB7vgnhB1ZkvZLaIRtauFfVFFSKehU?=
 =?us-ascii?Q?GFIdYE5HEFBhC17b9ROQaCFf6O1afKqtH+yjUyov5s+lP7Y60eShempMVxrF?=
 =?us-ascii?Q?jHz4qBhe6NxOPC3KczWt0cl9+hJktnB7aevAJlwyjonM8HK1nr/f/wx1qnS9?=
 =?us-ascii?Q?lQ+ejAnVMckJTqqme+NrTUoV/oBENsrSS2xiNES2mMUEZGEloTMBbPhz9REw?=
 =?us-ascii?Q?4fcDihf6KeCLDQlUmJgXcwSaj+sbAikvL1ROo3cYwMLIaWGvWW4VQxsAQ8pR?=
 =?us-ascii?Q?3UePDEkHmItUtJ9YKK9AcQ8QgzOWhdnFkNVT2FQNm1mut/n2xRIQADqCIj+c?=
 =?us-ascii?Q?s/oIZJQXvZ+qAXcykxNWmiEX/9+Qync2yplmxemVpP0uWYFkjZjBGJVEhm2r?=
 =?us-ascii?Q?NqGETtwAyUuCFPlBhSCEHNgHoK9i7zgqW+ASJgt5Yny/ZDTtR8TRXGKM3RVD?=
 =?us-ascii?Q?jKA4DyoIj2njmDQfPRvGTKMP/EGa3rKEo7s1Lm9dXgPaUyDZzlqESPMQK7G9?=
 =?us-ascii?Q?UlkEdxhfynJUThpeYhnXzgqK+sVCMtGNysH/JvsiAMD0NAupUQXmP2TJ/JTn?=
 =?us-ascii?Q?zPlMmKs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vCMameGUtmjuensggcgI4jqzuUrBJ+LyDZ3nstcrUStMrF6dFxK3i/mcrH3J?=
 =?us-ascii?Q?i5iXAWUKIhEuxBXFjMGUt0UJwLlBff/2X3XUK9yo4x1KDtYXbLVkyvG1QSf5?=
 =?us-ascii?Q?9KiqtI8WU00nPYmw60xjvsM41XT2cnnAdkyyNpR0HE1TFqxsbYt4Vx1/vLgb?=
 =?us-ascii?Q?OKzdGO/jM0LS1HTbpRXpZ/SYz0mL3VJJRa+brFSCqQncViI5nJOaXx4PzqTf?=
 =?us-ascii?Q?IeJEa3GEJknCRUrs2FhUC2xgDwX59UreIj4mwefXmnNc3yPxyR6VbE9vqgYt?=
 =?us-ascii?Q?4PA7UrZSM8LJVUp2f+uSCjaLz6/y46YPQFFjd0FBlBq7voR+Hs1YHilIQ13/?=
 =?us-ascii?Q?G3FRCEFdquqIF6qoFu/1F13ZDQhDt6N+MrRpDuG4F5Ya4oLQ6t4AQ+zhRx5p?=
 =?us-ascii?Q?11AiDFnbahAxe6VtnhkBulqN6f9wE+nmiPi2geBmTZvfnzCVqscfLNYIkDH+?=
 =?us-ascii?Q?6mB10KYGyPSCoub0MyjIIC9hF081N8ChM7z5sS2a0iKhH67SKEO1KT+uHcG0?=
 =?us-ascii?Q?sx61XVLyC0wPzhguCih3ZS76obdiKeShBAQBSAEuUKqQlL5lmADFRM4eIo/m?=
 =?us-ascii?Q?0deiZ70ScKfnE6eA12A1R09KeQXQbahNEEEG2uSm+iGXdNzHNegp+js3e7yL?=
 =?us-ascii?Q?VIYhe2sZVEIcJn6u2o2kNlOOwz5NDuz+Op2MuD0ZPdebhwHIZkWZUImvIoRa?=
 =?us-ascii?Q?PHnziE7/BABKMEfgVMzharru7jUby77nJV3cMsSCAEFkJMgoVnQPX/0u1ABZ?=
 =?us-ascii?Q?KfNrQCdYXvOrihmfuVftpqseBICs8hntXLUkPYw1Cn6l3TC4s5cXt27ygK19?=
 =?us-ascii?Q?inDQkPlzJOEGKTG9r6rStUgkUjTrnvg9ymlRw88wTBBMYrPNmzJcPaUw/pbK?=
 =?us-ascii?Q?aOVEJeS+plnKlC0PIfpsqZmnqfdWvzqnGM11/4xMksEDEfzFOzu7R9coTGPy?=
 =?us-ascii?Q?Fi4jYbmoGaVtNgLWD/MO/Gzo8UrMvHmfWI3Z4n2XY3UxFS0Ap4DHzPDOdaEA?=
 =?us-ascii?Q?Ih8joINBCviaoDCW3htJ/TU51a78tURiObP09KjDjUy3hx8sl1KPxT+iudKR?=
 =?us-ascii?Q?3RSOYqjLno5BPJ3fZLQHTZ9QxcwnPJK50kxmo1BzE1zetl0GZ95lCv4QMd1n?=
 =?us-ascii?Q?hSpu6HVyOWTkfAm/S/uvjdas5S2WKlJuYwobOxB2QZccCnCS80iwgXla4EU5?=
 =?us-ascii?Q?h1/1vN+dN/N+sScbv6wCv81p6UNq+8VzVeFUy6Gn+FWSV54QXJdnxRJt/RpC?=
 =?us-ascii?Q?G7yjQfwH16FMRe0Ulhobkg21lViwb9rPYk5QQywIdNDhSXyvV+7JGWRNE2fb?=
 =?us-ascii?Q?2pKlNZQxRdgENJK3I9+31Qt/nNoLz6WWqV+Ye65Bhh4PV/YLzQmBLJYvtnVZ?=
 =?us-ascii?Q?UgMPOiBAICbvlCZaaAcb8sH3kXZYtXcvVxWXf0FloFx0BRdHAhFN+ApJZp41?=
 =?us-ascii?Q?hD46+1542Q4PAy8Xqc0VoMmY3/yCDZ4cWRZfJGPMe1sT1p7ba9VdtfLe/D0k?=
 =?us-ascii?Q?1QpvZp9jbiAuF3z0jyoW9Zc09KQmj4AAZjYu5SML+7U0fdLUaNTn16ksEhT1?=
 =?us-ascii?Q?5UxAhwV/Jczx8bv7ZkOLSgNkfsr17k8RhADAwEQz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938198de-1549-40bb-3133-08dcfe83942a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 16:53:45.9505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DcBLMaSSLRbQ8R66uMyyESxwtjpqniIS3VbGU9HtIcwfBmKq52NPU7wVx31Ix45Xy1A1NIaMQF/WJSCHQBYhTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7316
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, November 6, 2024 9:59 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.=
4
>=20
> On Wed, 06 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
> > hdcp 2.2 and we are not using an hdmi transcoder and it need to be
> > enabled when we are using an HDMI transcoder to enable HDCP 1.4.
> > We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
> we
> > cannot depend on the value being 0 by default everytime which calls
> > for seprate handling of HDCP 1.4 case.
> >
> > --v2
> > -Use the exising function and modify it based on a bool rather than
> > have a different function [Matt]
> >
> > --v3
> > -No need for kzalloc [Jani]
>=20
> The code still needs to make sense! You can't just remove allocation and =
use
> whatever stack garbage rekey_reg happens to point at. Look at all the oth=
er
> code that uses i915_reg_t. You can't possibly assume I would've needed to
> say "it shouldn't be a pointer at all"?
>=20

Sure Jani ill fix that, I thought I had changed it from a pointer to a norm=
al variable,
Seems to have missed it.

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
> >
> > Bspec: 69964, 50493, 50054
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 36
> > +++++++++++++----------
> >  1 file changed, 21 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 4e937fbba4d2..6ad5efc9711c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -32,27 +32,31 @@
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> >  static void
> > -intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> > -				      struct intel_hdcp *hdcp)
> > +intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
> > +				     struct intel_hdcp *hdcp,
> > +				     bool enable)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > +	i915_reg_t *rekey_reg;
> > +	u32 rekey_bit;
> >
> >  	/* Here we assume HDMI is in TMDS mode of operation */
> >  	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> >  		return;
> >
> > -	if (DISPLAY_VER(display) >=3D 30)
> > -		intel_de_rmw(display,
> > -			     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > -			     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > -	else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> STEP_FOREVER) ||
> > -		 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0,
> STEP_FOREVER))
> > -		intel_de_rmw(display,
> > -			     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > -			     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > -	else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> > -		intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> > -			     0, HDCP_LINE_REKEY_DISABLE);
> > +	if (DISPLAY_VER(display) >=3D 30) {
> > +		*rekey_reg =3D TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder);
> > +		rekey_bit =3D XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
> > +	} else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> STEP_FOREVER) ||
> > +		   IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0,
> STEP_FOREVER)) {
> > +		*rekey_reg =3D TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder);
> > +		rekey_bit =3D TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
> > +	} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER)) {
> > +		*rekey_reg =3D MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
> > +		rekey_bit =3D HDCP_LINE_REKEY_DISABLE;
> > +	}
> > +
> > +	intel_de_rmw(display, *rekey_reg, rekey_bit, enable ? 0 :
> > +rekey_bit);
> >  }
> >
> >  static int intel_conn_to_vcpi(struct intel_atomic_state *state, @@
> > -1049,6 +1053,8 @@ static int intel_hdcp1_enable(struct intel_connector
> *connector)
> >  		return ret;
> >  	}
> >
> > +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp,
> > +true);
> > +
> >  	/* Incase of authentication failures, HDCP spec expects reauth. */
> >  	for (i =3D 0; i < tries; i++) {
> >  		ret =3D intel_hdcp_auth(connector);
> > @@ -2062,7 +2068,7 @@ static int _intel_hdcp2_enable(struct
> intel_atomic_state *state,
> >  		    connector->base.base.id, connector->base.name,
> >  		    hdcp->content_type);
> >
> > -	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> > +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp,
> > +false);
> >
> >  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
> >  	if (ret) {
>=20
> --
> Jani Nikula, Intel
