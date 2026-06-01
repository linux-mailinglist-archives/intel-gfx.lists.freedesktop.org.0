Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6lgkF56LHWqKbwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 15:39:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DEC6202AD
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 15:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C40B113363;
	Mon,  1 Jun 2026 13:39:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XnMm+cG0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B08C113363;
 Mon,  1 Jun 2026 13:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780321179; x=1811857179;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5JbIOii+KvJYc4MvuEqhKcjyiZ4JK0IoFy74AlLSxjI=;
 b=XnMm+cG03/0NHTaQHlkqQKneaMlnnlko3AbgKcmikuDaUJXo+IjyBRXi
 htvpk7+ikk1A5GcgFZ1QvX6ig3wGskjEgtrXB54LElkXuO+fg5jheXSDO
 vY+K9IWJGCiwDGZPQP3GiX6Vza3Z1rswXymf2Y2bK0Ug480Ax8PcdVOIk
 aPAWO/IKrcxH0xUNimnVrK4DEfhwc5xfF4W4QkMNKbVfzlqpI4aBZ8TOr
 7HIjeZwAsYQejIopT3BPDAg4+z8+bW5laLLfVEPYpMV7713qG/m+UJcGV
 Vb7rnajph51Lbi44JXXv68hKoZt2eher1j9Z62NviILmIM6azsqsbZHUQ A==;
X-CSE-ConnectionGUID: v9soRXFFQseHt89q6ojyXQ==
X-CSE-MsgGUID: lnzZInNTQlmsXUN9muwXYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91649766"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="91649766"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 06:39:39 -0700
X-CSE-ConnectionGUID: dKZXe+H2TbW58McD/MkuWQ==
X-CSE-MsgGUID: qSm401q9RGSJd17n2UvnDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="243696585"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 06:39:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 06:39:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 06:39:38 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 06:39:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=is68InW5SVzolU8AWtJWqF/gVPKtNWBOVPy6HeMKmW4RCZb2nixsLAeWPIzdS3wppr2j3gi6XSZ/nEolo1CeALfuWCOr0SNPmS3a4LrSGb41zVK78I5f+YfqJ7Frhu35teoETO2ZS20rQDitE4ypxkVWTH61QCFf9tuiAOMy65YUPpBOn5AMeJ3Wogs0EAaDjTvPcMSACe8nhvSwrGeOy5kNBw92IcgoLKjJPN/MMCfUbUAgnZGwBhcCSpg/SybH4fNAcVArAe4eC82Xz9Sax5ODEoUrEtClPQw8EVHdjemUfqf4KwJCDko8O195etPPTWEQxvQYVtne3jQX3C8acg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IMQIvO7r/Ly3paT+fLGqoT/NAb3DateUaKiFrmse6P0=;
 b=dixFF/lOdX8wd4tMBv7oa7DhG/Bgf2Sa88aQyNE/i5KtKzlNmXNVnrUbnErNTWsiKblRO5u/ljyDkDpZDre7EqHtJubMBHEoutOHjdEISnjJeyVw8ImpHSvt+ki1y46lNFSbRAsveYK7RoQLNcSG1lXcfddnyaI/nn2Zv9G2YEtJ7UsYHx3scGLR2xSQDC5J1WCbz8BEEyTo0VDefFxklJWFNJRcOPIRs08yvVWTq5vEjcXIU8n7wqse4DoS+T4iGsj/eR4r7hvjFV1w4NkAWbUnal3y+5SWZSWB1syS9kx7q3P/wHZiFxMm3gMTGy3mmqpmmlQno2f7jhiZBZRmCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6308.namprd11.prod.outlook.com (2603:10b6:930:20::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.14; Mon, 1 Jun 2026 13:39:29 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 13:39:29 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v7 08/15] drm/i915/cmtg: Add a hook to make eDP transcoder
 secondary
Thread-Topic: [PATCH v7 08/15] drm/i915/cmtg: Add a hook to make eDP
 transcoder secondary
Thread-Index: AQHc7RlcXF6lohw+b06RMtXN/ktvLrYk2CwAgATknfA=
Date: Mon, 1 Jun 2026 13:39:29 +0000
Message-ID: <DS0PR11MB804963FDDBB67275A6697004F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-9-animesh.manna@intel.com>
 <ahlv1JSW-psLZ1Lg@intel.com>
In-Reply-To: <ahlv1JSW-psLZ1Lg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6308:EE_
x-ms-office365-filtering-correlation-id: b63d3d13-8e67-49cf-51dc-08debfe334ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|22082099003|38070700021|18002099003|11063799006|56012099006;
x-microsoft-antispam-message-info: PsFspfvp2p6YoaCO7UP4SQ5ezkWwJDsP7NRes/XLaUjv0xRM2vrwiy/hT9b4dz5MYmy8U0+twRHYmSyyhEKLABhV2DPBtbTCnbflHHwP2qkXiCKDmICrYX8W+UaoGElqovOQdh/s3yBUk3LSdZMhoEFPUwKrGQv5NTgaE/JVSsolhO7321a5lCtdEkC3n3zhWL49iyMuP/ocPuW3loQBG0ecDCfozbhUobvTvobcFk5haGJ6cn2t8qh+nUl/5TDgxhGhWLxXl7h8c1CQI1IKLVSxMsWeMM8vdFfpGiNDMYB12sU6D+QhxEDCCL3kzPTdXEIrXiCJ89cXTV+4tQBhsgi/pm7l+VAMrvNUq7/Z7BLLkTYx3pzLnyRvoiw1P4Li1upkSnVVDZAqZHvc7PR7ik4M7Peno9ONJytRiFo3P/JqoMcTcvW7CIA8gsT0iNfG3bRNofA5Rhmdh7qA3f/A5ecqOU7C8/G/FpT/29C4Qw4n/H3BMDMCkLMozNoCpWR4LM09APIshlhnEm8qiBnbvqsO9NOnoRBOpqSDPg3IFdr0u8IEaOCrPyW2eCTo8noWmVqAhPr/ahJw1HK37mZiViE+3GHqy4aEl6I+6Y2ObNSDF8gBBCocLUOPnqFjR/IbFTii9mlSeETfsxGLcWKPe5uU3bYQkdP+AlX6oVr8KnLq7EyCUk5gkhvrBDp+cMSusWZ1GDrnBi3pUnjCv5R9U/9rWoQuYgqCDJ3mnxYAnxPbs7NXZkZhoOO+T/9oNO4V
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(22082099003)(38070700021)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HI45WTaddP+RM838SteoV78P2cW30Mi/2+/jwzotWzh4Hm0z56zs7wWdBQ?=
 =?iso-8859-1?Q?H5mbvJANfCwtQx0n48J4yICQveyHINZUR7zarKPry9VyieFOlIEDifbyQf?=
 =?iso-8859-1?Q?dezdl5ED4FVke0bvIVoBjwi1kaM8r5nIaWJJwHJffWPMfAmWqzbgEvKpmP?=
 =?iso-8859-1?Q?AMqFwEbF8NVmf31zsA9EFgoyjAFJmAh2nKSvdd0qRzqfu3wjlWhcPQGEdI?=
 =?iso-8859-1?Q?w3J7qC3jkybTcqNgGeKbBtAV6pj4trgDODf7DPo/8vIFuwAYlNZcmk/0xO?=
 =?iso-8859-1?Q?a9pxPtstaftgb45oqheRbJhCb8/gpCsfEZETQx8/zskAO4Eg8ovDJEcAjp?=
 =?iso-8859-1?Q?mvdlGGOOhasN3iGa8lE+jWHS3UXgKI5AYUG9IJi4df+smEdD7SdhpbNyKM?=
 =?iso-8859-1?Q?jgmUbNVo7SeqquNl6fY1CSya91ldDJAgRPlIHZ9nHoPFz9dPU5Jn2OdZqq?=
 =?iso-8859-1?Q?A7HQ9haF+FcgX6oBVOMHYKT5XJKG76xRh3H/9aMEYWBbAVNcuqgsLmVoLn?=
 =?iso-8859-1?Q?Bl1mZMbBOqf5/c9zAEkUzermwAneo4vdCOJW3eLHM2hxoR5GF8DBLfrgF4?=
 =?iso-8859-1?Q?bGHIfUc0YLSSItsU4LU/i83OLBD22DwBy2uqZ2q7uCX3looA5Py5OuYQi6?=
 =?iso-8859-1?Q?Da8I1Zto3mRhU5qygZr1orHRlWkmBatvcMpBUz4F1bp1Xx6X9UPWdgGNqx?=
 =?iso-8859-1?Q?5kraf0k2QHA6uwG0UhcKSqe1okWHwz05+vy2F+DF+jwTIfqvDXp2s3wouA?=
 =?iso-8859-1?Q?J1ReLEfrtgJxm/H/OVqLW5kz2D+FMHi/7qge23Tqaz80zdTbvdVUIU1nnp?=
 =?iso-8859-1?Q?82cHZoU5gPG4yC7pCSHqMpaZfRzs6gRg6B3hFi7BLPCa6EtqhtWKPIdV45?=
 =?iso-8859-1?Q?ap7pBAgBtG8jnYVgG+ZDFvn6iL5NNF4ifAg1BXiiGtiLGTX7Ysad4RfS9b?=
 =?iso-8859-1?Q?kq11leCGCAovib3T4azsHblebVt8yzu+TWc9qmF9cfXQgIW0CKwCIQYCCL?=
 =?iso-8859-1?Q?XstV90sqbEMlKrcfNi6ihiUoYe9kghdt0/0s9WAPgHkAUzHQPWcdr5UPh7?=
 =?iso-8859-1?Q?wjq6r7VVPtZlWXDcBHBSTkXi2GEhUtRM6gVgyl+uQEE2QBAHk1iKJeR8wW?=
 =?iso-8859-1?Q?Hf46RFpd3tXWDjzDIdQ1AFsO/djFHGWbGmOu4YnW5XPN1DRPxhB5GAYp1R?=
 =?iso-8859-1?Q?QaNMYIwaCTpKp9PwVwu8ll6BB6Qovxw2Wk+/dEQSWZqR1yMzb+ue3hgUrQ?=
 =?iso-8859-1?Q?nHohUnZ6qpc9ffT5FsfdllWv+EgMWNjUmMs84bZ4ZpRbHykGS0aInIznhs?=
 =?iso-8859-1?Q?m0v+fNLxIotq4AYCjYlUspHiwXQq2xObTqq3+9ReKU527ZD2oARpU5W4yV?=
 =?iso-8859-1?Q?JzFI7ib8YbzYLeO32mSB/csUEQxHQqtS/9VkrWRzsO+BQqSfcQv0onm7np?=
 =?iso-8859-1?Q?spvpHa74Q8AldqWM3mlp/E6R69DkqAlLUSAaZY0v9c7L5mrzkD4GaRAALi?=
 =?iso-8859-1?Q?ufpvmvtmCTCoLNdwvWafCJ0lt0SVwam3atTFJEE/ZsW5iRhs3wZhViOvE3?=
 =?iso-8859-1?Q?iYBMDaa4S6t6ceInQc50REbLhwBMpmPP4IZlQVmNDdDEb+whGoGkkEmi1q?=
 =?iso-8859-1?Q?SYDX8yyMazAuwpFwgczjoIHP4M11dcp6pk4Vbv1sR8HIEkkE0w9GMfs86+?=
 =?iso-8859-1?Q?n4f5Tu6LpwCeijgaNczvE736renYvPZXRogvguJE8CgqtXThStsfTpB0+L?=
 =?iso-8859-1?Q?Va0VVKI5FLSGm84OEvnkIHd9/1dpY0AdluY9WYcUMPXMt4Kq6LBzcFUpi0?=
 =?iso-8859-1?Q?uZpBZrs8eg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Vhj7ctoHRBCap27fNJsgRgJ+y6IMiRkiyvD0b7XLOG7Ha8LfRtc6P596M0lkpZa3CoASLmuADKESjbysMb3syEWto/WdOfSJVj8RMspvJpC/d9tx8MFeelGSO+Tg2b1wyWbh/Dg/AXe3//GcmbJ5TkIYFjEr7Od/IAZTgZwdMzdBxfY3Dkx11wwBl3P58xlaK2coL5jwr0JSuHQDxxXYX6XHF7YgRgY2RKGS7Jd7hid2PA8HVCrY3vT6et8avNmolT9KDbdrT8fE60eiLHs56WkzFsz7mZh0E01fi2/PSR58f1uTueCWxgfl9HfP2DO9a9uLn7prinpTtvsF1pNulA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b63d3d13-8e67-49cf-51dc-08debfe334ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 13:39:29.5005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f0MUdBupfIm9k63Jhh5qGup8hrWcE39JJuzoaDsEVnGmMC+C3UxV1UvUlI0x8RV9xeeskqUGB696alVuRt+ufQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6308
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A7DEC6202AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, May 29, 2026 4:22 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: Re: [PATCH v7 08/15] drm/i915/cmtg: Add a hook to make eDP
> transcoder secondary
>=20
> On Tue, May 26, 2026 at 07:08:04PM +0530, Animesh Manna wrote:
> > Program DDI_FUNC_CTL2 to configure the eDP transcoder as secondary to
> > the CMTG transcoder.
> >
> > v2:
> > - Update commit header to be more clear. [Uma]
> >
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c | 13 +++++++++++++
> > drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
> >  2 files changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 63e430f7e63b..34715280d65d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -359,3 +359,16 @@ void intel_cmtg_enable_sync(const struct
> intel_crtc_state *crtc_state)
> >  			 transcoder_name(cpu_transcoder));
> >  	}
> >  }
> > +
> > +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
> > +
> > +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> > +0, CMTG_SECONDARY_MODE);
>=20
> We already have a place where we configure TRANS_DDI_FUNC_CTL2.
> Why is this not there?

The idea here to enable primary eDP transcoder first and then enable CMTG. =
Later make eDP transcoder secondary to CMTG.
So not added in intel_ddi_enable().

Regards,
Animesh
=20
>=20
> > +
> > +	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> > +transcoder_name(cpu_transcoder)); }
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 64ff6a19948a..12abbafa7d08 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -11,6 +11,7 @@
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_enable_ddi(const struct intel_crtc_state
> > +*crtc_state);
> >  void intel_cmtg_enable_sync(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_set_m_n(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_set_vrr_timings(const struct
> > intel_crtc_state *crtc_state);
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
