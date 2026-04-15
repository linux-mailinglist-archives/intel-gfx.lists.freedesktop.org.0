Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNs6DZHF32kmYwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 19:06:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 513F14069F4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 19:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9451110E726;
	Wed, 15 Apr 2026 17:06:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PtEsw2z9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F3910E180;
 Wed, 15 Apr 2026 17:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776272781; x=1807808781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1VMJ49GGWgndFbHnLYgjY0M0AiX/qws4r1g7mRcdIg=;
 b=PtEsw2z9ZHlwS7z11UkU6MOvJD3lXAbQukD2mL72qsIFIJtwJ+NiGuwu
 Lqmnehb/VR5qmS+stB76PYXtpIxZ4DqdIE5eCoJGnz7v9XMBfPqU7+tUe
 mBgvNtrYm08haCvqvgxJrxgpa6GrhuFn/XWSHcN3qZbV1WfinEGwqXYcm
 5PkXgMPLh6Ujgigu/9QkJz7lQDKINNj+iIEkY8xYPriWLTK0dsmg052aH
 NQZxMz+cY6Lp49vF1tTaTyDy1E29mWoPTLcgyzvm1bE8SR3I0WMQk3aCf
 L1ikeiCsN0AGurbHJ5oWomJabOx/S6eeDzBfDSaZxP58ugjZkXI8RXL0e A==;
X-CSE-ConnectionGUID: GWUC5cESS9aDmTv10qnQ3A==
X-CSE-MsgGUID: wUzMTTgVRCeOdTshg5Lacw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77442765"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77442765"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 10:06:20 -0700
X-CSE-ConnectionGUID: vCirj6xYSfmltDJqRo2aLQ==
X-CSE-MsgGUID: a4dviA/yTVCDE7vTuObjPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="226164343"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 10:06:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 10:06:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 10:06:18 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 10:06:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E8sjrD6eW6Um04IPHJ9dd7Td9f/iSD6uHm48x2UhL5JaiByIXdZL5nfxwiKFfDN/Ck05Ex0xdgiV13vp8Eyl9AkuEOuStRJpGM7d7RYFwXewzVPOerNBnqkiqvQ62X+OV/PwCahR8Uea9zaICDWX9k0afwYueGhuSkg4CN1+1Nc4VEd7XHkR3qqKeqdxHI1THnX1oBpHQqelOF2yyULE1lgwHrvr59IPzLvxqRmLvfv1tCCid2lYQFwCYz61vUYptHCZQbS75CqTKAZBQ9MEzeA7l5HlcivjqGr77ibM/LzoL+rPkAD2hmeeR2HEBPxXHyq4KChcgNYQnN+8ZQHwEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4eo8XClQEkgJHTh0h5T0w0WNGvMaXbqpocA1BRiAuk=;
 b=k3iYsL1ubkl3gaM4REw38phpQRib0thn+qqC7exoP9+nig460UAgDBBRQHhfFpz1IPJ1C0aLAefYDGzsVaWIjSIF3bUawZarKa8py4VirfrB6KDPM+FhINQp3wEvSdVuvyj/DFaqh6fo6+/ppBbyDOVQ22+GZ6sFH7RmGbFkUEdEFvjrUjX0t6o73Q8rHRKjPn/bOnqoAdG3UoJrwbJZwVQvSVX7+6NDfh1ygU5hBnduOKrFB8K5TBOb0RqMb6Z2qZxU8IZs6wRf3ciPUem+2c8D1PU2Ju7RW5+tqhC7OVKWEWDpX87X77nqJFDxKTq3rwvGIbWWtT/SCBol4S9ABw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 17:06:16 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 17:06:16 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12 UV
 surface offset calculation
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
Thread-Index: AQHcydeH95mm/srKq0CqfRo0nHMO8LXfRluAgADEpQCAAFUn0A==
Date: Wed, 15 Apr 2026 17:06:16 +0000
Message-ID: <PH7PR11MB8252546F4101CB34DB7368FE89222@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <20260415001553.181329-1-vidya.srinivas@intel.com>
 <7dceaf9f794e3e2bb9c2b12f435f4cad4bb16deb@intel.com>
In-Reply-To: <7dceaf9f794e3e2bb9c2b12f435f4cad4bb16deb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH7PR11MB5957:EE_
x-ms-office365-filtering-correlation-id: fd982923-aae9-497a-2d8a-08de9b114e4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: lfOM09Kvd/KFN0GbvHr6Q6Zyoa1gQuYsh7F/FkvDp8pucyFdrcqHV400W2eZxbX7Ih9KeA1HuO95JeHEkZ+ZfV4cZ5YPVQWX7Kp/WmIvfARt5aF/Ohru+n72TOJcgghC/2Kg9n5mz5GxXiU0HgUvIc51nwvVe4wC9e0TCpO9Sh1512ETc34//Q4om2xv/GgsGPuuHRBRKO+N5JNy4oi1WqBz1FGlohFxR8OZY5RM9uVHlP5Z7qnv9BWVMHNlLLFPYbkkZVUXALV0nmEGCZmjfKE4YJwbUMzYOmW8LwOVcm9fwFLtciRvb6Q3wg6jZADEINvNCOKK58DSIe5EJYiaiX18gHbCDXTNaWEYBv3U5IcDg8BfBuyUHMNJ/OVBUOfsMhwxV1j44afD/ZpjRTjSZWcqslhl+9I+rcQiQkPDbZqwYGXf62nkmE1+mgS4JXeJJ/Ks+5ncmjuVrE3n8WeWseLaU1LWrwe0k5+GgE9JQKHJR7fKbE2q/pIwfuKfkHPugNcsSCJtEkKWJ5vZx8Xg7OjXLrqFmpNbNIPtM8xxV8m1g1NeLOAlb28xm6bf8FTkZROE61iKjR3q/2vhSsno3o08Nfs+9wfL3BnmdGthLh6WTBQdeWArV+cQWGjfVWKZ78Q6lnCrDrvzUdEh7C1UCnj4b6x+ujsWgqAhvCvbszEyumdCROSZZ6lPUQ7x5lHce0SbZHcWSDobND6qFz2YQ2l/WyymEtjDxOfUAdJxZIRmMU9ajpnxIZJKakE68l77
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rLIKFyHEplfSlc+c/DRZb5ZryOhXjG9IMLYf3iwMbtOnSKMtezAPshlyBbr8?=
 =?us-ascii?Q?6l3gmIAghjeAz9MdqqvuqWeQaTNaPCIGSMi12RUUFt1VInOjwEkpR4thd2MB?=
 =?us-ascii?Q?L7Fy/OWiEVBBuo3aExyNjXTN9n1QP15pdiP+XhssCpCDVg5GVa+J4dSxLqBU?=
 =?us-ascii?Q?/zaAo1/lOrnjhC8e+fOHsdebTF9NRvoft5xUTyJh3VmrCqUY2TAgxlluLYT1?=
 =?us-ascii?Q?FZIpfyxF+AdzIQpGuk/52495hXU96618CR6kkaR8hIcOqKvbuw1gtGn96UZH?=
 =?us-ascii?Q?+G6WsYvhf1OOuUuzo0RLSvBjBA6sudxSE49U7lhIYRxtNvLgKc2HV1g28jfz?=
 =?us-ascii?Q?GTcpZjtub59XWqkzn/eUWVPYEJVGKq7Ryd3zJT1pxXJ6bb6LBHjOhFg9n5AG?=
 =?us-ascii?Q?SM1jjqmpuz839wkyk5ukm6L4a3lj1atdIPIZiS5dd0I5duVFrIETZEkd3rOM?=
 =?us-ascii?Q?XQXnrov2I3nPedkZivCRhNN34guEi+nFSUjUo7sXDaQ9ZLauBFFLjltmOcq2?=
 =?us-ascii?Q?mry0ebrmiOgTGU6HtF/SPa0wOzJOAShW87+FXsbO2LQgJLmK8bxRhAc3iSk1?=
 =?us-ascii?Q?R+WWT55GMlGi4CH/e3QIFxLruqZE1w7bgKnCYaLlGGYooy4qep0qjPv77zju?=
 =?us-ascii?Q?r8ebmcUHitddhhv5T39uWaUfcKjhnHVG+N+5ab6x59TSSxhtt/zi26uOSxF+?=
 =?us-ascii?Q?OVN+leNe2Oo6/o4G9ZIhasVQZJscJPdaVELLYgCIoMysLF6MOK3pP/6c77sC?=
 =?us-ascii?Q?yzNko0wu7rYNP4wVDXAyHcHMYGyn1yqRmjmfI8xitiE6iH1aTT43jV2Ke9qk?=
 =?us-ascii?Q?4j2Wh2orfS7tQMzmC0PZ57whXQ9ObJWtOWQR5xBS2nP+ut9tYpCQDS22MJ76?=
 =?us-ascii?Q?Xm4OoxsgHit4qv4mWgQEgf+DCFUL1gaGTG6nmr5DwVrqyK5UzAhi49gs2n32?=
 =?us-ascii?Q?Q7p3nn/UF9BgA0NnfKSypywnjFWJTjYXKmxV7o9MEO3K1UB3GS/s0GFwB5io?=
 =?us-ascii?Q?p4khouiD5Yzq2OjQQuQgt+8tE38ooP2ioMcsVCvURYh/yH7iTv/WMY3lBEHO?=
 =?us-ascii?Q?Ei4NCTyOQB/KfhDMSZfkNvjSJjLBI2oFZZIo0yCyp7/ZdlU7OsOawBCxmvRw?=
 =?us-ascii?Q?+U7Gel912vKelyG6imqrnl+GwK3rIQMQ0l/2ZXL3p4qC8VHXttylOyaUcbfJ?=
 =?us-ascii?Q?ohrOHkL5Cv7kpT2utPzdzktcUyxmB8ukCoHdln9fhOb3GBjqg9KjV3hVUMlA?=
 =?us-ascii?Q?w/OA23DMTZNvP32njm9fe/blIjS9m8oXWDMwiYnRgSzdjdxowxnDkG9MzlOb?=
 =?us-ascii?Q?V7bWp8PCLOH5CSQ3o+SJmBPdqjjcIHkXQwzeOwdDvmH1+rlwRXkdpQ2jWsjY?=
 =?us-ascii?Q?AWRw/GmqRKlTbPakDcH11WWemo0SuIILPWyAHNva1jJS1laZlknucaECoMxl?=
 =?us-ascii?Q?SFaFWaEi8dKlx+pFXSU4hHXUJF/V5SPDSJN8Y5avrjrbG9P4LVdLDYYOYqPj?=
 =?us-ascii?Q?i8cVzOYUwzcNaTTuniRUc7S+vXdZjQ4VKREfo0gPAJrRYhEK7fWLI+69I9hB?=
 =?us-ascii?Q?+TmTt3RykCbWBbpVacYTpZfHLV+6j961fgSEh6vpWm3vp8zCVWWBtpa+5Gr3?=
 =?us-ascii?Q?+YZx2YzHHIpHD3qgcYmT1LpBhLBwd1QDdsHGDuJGZWcxDsnEaAKwZwWTXzJ+?=
 =?us-ascii?Q?6P6IJsts0/FSgy/eI10QKKVEXAuKFnXgbdlZ9BPB5Z0aPqqJKpY0bgP5vx4a?=
 =?us-ascii?Q?GdWsInI1Nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IlzL476kUlhxkw11tuRMiADi6bghVSuULP+QJVEvo8aZx8XcfdKXINOBJHWA2yHMqAFM21lfipu5xEi3Lg6jV1XMyTCnbSxnSwkAw6jyMsbY+K6Ihg6x8pRJCSoHws2kyDs3UrKwakI+gOY9q+9ThU+66uN29dHAGlq7Tx9mQDRWdowWTs1oc7kUdo01gIW1ejHunniDcT4Cgk2tZplSybEIfKaVXa5NLsoWTGHxsUyZ3JCpdxCIUhH06wU42kcKv8wtWG3QGGcIeS7S93bDFF7mIpEvn/BLMs+qEPhpvLS+q0cZfrBxrjE2GwZm47MHH9IeMK/RpXNc4nChYLnmSw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd982923-aae9-497a-2d8a-08de9b114e4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 17:06:16.3390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1O+O3862GuwRdSZYZOU9LTQSC+FNK53WnUprIDLQoIsxlYqJiGuNZb1/aZOMOs9dyFEaCM2BV68xndspSQGqXogR6ojvdvM2htMtFBqBrYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,patchwork.freedesktop.org:url,lists.freedesktop.org:email,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 513F14069F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: 15 April 2026 17:30
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedeskt=
op.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Srinivas, Vidya <vidya.srinivas@intel.com>
> Subject: Re: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV=
12 UV
> surface offset calculation
>=20
> On Wed, 15 Apr 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > For LNL+, odd source size and panning for YUV 422/420 surfaces is
> > supported. However, it requires the UV (chroma) surface Start X/Y and
> > width/height to be calculated as ceiling(half of Y plane value) rather
> > than floor.
> >
> > The current code uses (>> 17) which combines the U16.16 fixed-point to
> > integer conversion (>> 16) with a divide-by-2 for chroma subsampling
> > (>> 1) into a single floor division. For odd Y plane values this
> > produces an off-by-one error in the UV plane offset.
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
> > Use DIV_ROUND_UP(value, 1 << 17) for the ceiling division of the
> > U16.16 fixed-point source coordinates, preserving sub-pixel precision.
> > This is a no-op for even values since ceiling and floor are equal when
> > the dividend is even.
> >
> > v2: Use DIV_ROUND_UP(value, 1 << 17) to preserve sub-pixel precision
> >     while making the ceiling division readable (Jani, Uma)
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14
> > ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 7a9d494334b5..1de79ff65253 100644
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
> > +	int x =3D DIV_ROUND_UP(plane_state->uapi.src.x1, 1 << 17);
> > +	int y =3D DIV_ROUND_UP(plane_state->uapi.src.y1, 1 << 17);
> > +	int w =3D DIV_ROUND_UP(drm_rect_width(&plane_state->uapi.src), 1
> << 17);
> > +	int h =3D DIV_ROUND_UP(drm_rect_height(&plane_state->uapi.src), 1
> <<
> > +17);
>=20
> Like I said, my main problem with the original >> 17 is that it combines =
two
> completely separate things in one: division by two, and getting the integ=
er
> part of a fixed-point number.
>=20
> Ideally you'd have helpers for first doing U16.16 division by 2, in fixed=
-point
> domain, and then getting the ceiling conversion to int.
>=20

Hello Jani
Thank you very much.
Tried adding helpers in v3
https://patchwork.freedesktop.org/patch/718493/?series=3D164739&rev=3D3
Kindly have a check and suggest.

Regards
Vidya

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
