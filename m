Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGjqNw4A1GlypAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 20:48:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A53A65D6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 20:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC81C10E2AF;
	Mon,  6 Apr 2026 18:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5JduT0C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A325F10E2AB;
 Mon,  6 Apr 2026 18:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775501323; x=1807037323;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ErtPd1prfBKd8yEzpyIdv/zQjLAID10TpIJzWkT5HBU=;
 b=G5JduT0CGc/MnIi1g305Z4b998mI7CW/84nctBextkl5byELIJtUblnj
 oiS1LdAFYHA4CqacHsfjlf1WD/jv2YhyAjlyDax4FF3Q4X+z9LHi9qiOo
 U4Vv1JtoahvtP3dL8kEHFTuQ6fYRPurxu87d6MbDY7IDPsfl3P2QxRl3z
 nMtRWufLZY/3n0GhfcJ19aK7jjsqj7/FGNpyyZgU12pOe8vVWkpNvBAKJ
 gZ3fvx1oPM0BIcDYog9b2MiKujDpm2FD/P+ylaOjrFA7TZM+w67PF2Uy+
 2Ac/0XxDUwAhepz4Y1Wa2CE9peFv9aKSzpljAGPQqJVsFHdg08y0sKjWD w==;
X-CSE-ConnectionGUID: BH1IHImTQ76YDWjLNPd9LA==
X-CSE-MsgGUID: GXGAOMEtQAGOE1q/YdZT1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87079188"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="87079188"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 11:48:42 -0700
X-CSE-ConnectionGUID: EM0RTwmnSSKgZSGjZk36Fw==
X-CSE-MsgGUID: 9Hh21FM4SzaY+iAEuyhlgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="226944391"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 11:48:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 11:48:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 11:48:41 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 11:48:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TS5N0OWkMRl8cLu33dHyLLbZoZmNlK0MykdUFg+vhPKyqX0JxscgjZCatQfabt1BqUS9HEkDJITMx/tY6+kJpm3gZz16bKNlO1Ne+f7SJlhJ7pzTOwbNpBRjE76JeegwuwIhNmew9Cm5L/I1LnAQt9B6KjI51T6o1wQ6ZoBnpO1nEfxttFTEjuRTVXTYKzZPUwEf26Zr/FacLBID07DPFRiBsoFm2el+jNgSZFN3movU+X0hzsS1J3e4+sZprHzPyKi64g0EpZwVpjyjyXSZV/gNJt8qaa5vfKurRDrG3EwEquXRpBWl0IshuXGX2j2etNnNH+6s/hvd2t1laAzCcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SD7ZP7Atak+XH3QjKlDKlsL9KJb7D5s12CwC10aDQYQ=;
 b=NeSuMt8mK/2UAYB4BO7p1SDKoWBMC0SSjZtPGRiM+Okh/4FwrS+z7CtX/LCVOMtvTz1CgDsKlJaDzMDbmRWkm+rTBvG0WxKWQ7n5AdP4sXlSAijoCSmPCEP2u0wQEJDVPxYMIvJJ1WbMYQ3F3y38cwOVZPW+vwQkqKMb/S9kTMOx/svmkZXHVHiQOu0oDfqjY/9V/Xv599GcUvlyEqWqpYM/ZYMM72OcPTGybjK15mtovk0M+DzcEn1U6AfrAQlxUJ2+DAyArxBTfJaEbp+C6VVhKk0mCk3AC9Wn3ArvPqbJC0nvVqOrOvRachsRTVTjHhU/D18HEZFLL0gc6YcjbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4882.namprd11.prod.outlook.com (2603:10b6:303:97::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.21; Mon, 6 Apr 2026 18:48:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 18:48:37 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg
Thread-Topic: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg
Thread-Index: AQHcswMD4LuewcRg4USE2zQr8H6fArXShI4g
Date: Mon, 6 Apr 2026 18:48:37 +0000
Message-ID: <DM4PR11MB636036CB7922982F875E3C91F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-2-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4882:EE_
x-ms-office365-filtering-correlation-id: 73be8a30-9adb-47ee-d0ab-08de940d1cd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: nobBgjYQ37b9AmF1j0PgtyhT7UcA2dvvHw3URF7e5LmAy300xOtHB5JQKCO3P1ALok3z0JlPjcC0rH127rURwsPlbaDJtKPu3kVgzZtVNENICKkKMtQ9sxH1xTLDjx6rJKYsXnSGJWwYLWfy6iisr8EA7aWEeXX9AVyFAXGjy+u/FczuuhMNb5x5O6wQUenttzI+JoOkVbE1c26VgAdlWbauPXojusKl3mcfGk21MoIVcpdgh+GLDe42UqLeM/Cdm4wTvmumigM9KKutKI9hUMi7DuKiiCBl1IX9mI/7Uc7bgrrKNsZai4JNbLzMXxdk96UQdlEwSS42ZAQOrFgq8XYj75weaqg+4apW1be0mIXkkQq8GHc1x8e/YkZZTsy/JTQ1/qgUJZ3byhE00t86ilJtTx1bF3uvTpD4GFV/7BTRxsBbFyc7WaVGOltoXaaQyg3J2tl9QFTjZ2Vqh1LpFFeupmhMyVASvT7fZD2bsBE4dGH6xixFiLvHRgb+gk7e7wSD8Ky49blt3xaBzh0QKv4IOajgsy2rDCApwYia8u3jFmTTYcKoCN2PKJhIo2BlGvQ8NlPOpNtdYxSl2zKeCcHxBdOq02DVgVzRCDZlBqfFbOJnqCle/EcHJIet5vw3IJcBf2VRh8klw+cp1gbCZmNU7K6sfG1fibcju2iNdGnu8M24RV9335aQHnUXCC8/Cj5wgVn3JcSm7AzddDUoM+ZNQpEdSkbW3GoKPGub2GFHhqWiIoqtnoVz8L/tKHH5i9YFyYnrQIgKYgedACbmO0BTG0HqrHXDJgAxnEsGk84=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LP/gjj40GpVl1cyjoiSgIgsxmLLP7FPmBk4M48FWTR2oxrAmzS69J2JaID8p?=
 =?us-ascii?Q?wcSr9/OAFIU2+9cnG0iF69kCTotxRjZQU00qBAfOdfHP9pYlnsGwjSv1yu1z?=
 =?us-ascii?Q?M5ug2Hwj9LQ/VTympH2agPSBLwgQ3koxZf4aEYGAfTpoLOo4GM9hR1KiVPn/?=
 =?us-ascii?Q?fIZNJgcYMwB8TJoC/iV1D0Si9KWvu3TsrvfOaWNKUaQnFKupeeZyG/oJFWvl?=
 =?us-ascii?Q?YgTYkxnKHYPuGRDhh7XEUmOXehS/3vVIEX17meEt4E9pXdb0YDbOZQpzezuU?=
 =?us-ascii?Q?gxNlnyJz5rJcKLOCi51dzTe/+pcsreyjwpnR69s2rRtZZ6AQBDyELR+qlCtJ?=
 =?us-ascii?Q?MqeGWpRwtx3AZWrFkND760f03FU4XdeH7vC/hiYp8obUolBGWCJrpi14Zp6q?=
 =?us-ascii?Q?P300Mfe7BxZFYNdYlfyXyFn4WAbuEuO9NAFMZiy7sfWsqc8lINiGZNpsr53W?=
 =?us-ascii?Q?pihdcYD+J0Hvgdhap2pFPZ0/PxN7X1tuzKz5k7aORqJ5RPIX3G0jmxcflRWO?=
 =?us-ascii?Q?p/ab4a68Bq9sYFjH0/HfFQqA35Bs0kt/K4qEYYtRcPatm9UZCZVLvd0DuGDU?=
 =?us-ascii?Q?nohbQfjhFfIT2szdDLfd/V65NNQL2g/GboKkBHZ7b3f+2JxbHlKH6tyLSinl?=
 =?us-ascii?Q?cVySyMuaFsrhurvhQ/O2WJ6p6PlsxgboakVkFnpzMCvYOWEHuScKZaIxTc4z?=
 =?us-ascii?Q?v/UmLNjwLOOhy0/FCtulITvpk1iuT0zekzUaw6OVpj4TURi5dzU2ss4fLF9I?=
 =?us-ascii?Q?zKtNMuejdL4mSknGlqAfZmk9HRBTTi6BAoREEAwcP/MGie89rn+s3R0E4WeW?=
 =?us-ascii?Q?DKa7UVIWy09wBxBAqjQP08I3/HCRddjuPHTyF17i4dF6KJ/H3N20V+9+9uAN?=
 =?us-ascii?Q?9Y/023fHtjO4qbRQ/TLbHxdfDo7KkjtMfTEGfPKBlo4zTPxlJBhgjDt3xllD?=
 =?us-ascii?Q?ScZx2Ij9YbVsPcGJdhz1mgjTIxdVgB7+mQLRIdtclgYEXC6Vu/Y2hx9guhJb?=
 =?us-ascii?Q?GesT4HJwwx4X1d5ckNtph1MxVltP7VXYlaunfM0CgLl5DV+LS74ajDR2F1Ml?=
 =?us-ascii?Q?cgGd5d4Z5VMXOQlhnjjs3dDGU62BB/EkfyAWKaLYlB4HnnDqdlWFpP+NJyW1?=
 =?us-ascii?Q?ZOO+mkdU7TQdFc30JHVGQF1otp+GTZJnJu/boK+bCCa17kLzpPkA2Xb9VyFu?=
 =?us-ascii?Q?ZHzQMgwOQ62WtAm1TA8crnjPRnt7rijaNYmZQh9J6df+sI9R+VLE8u6u251B?=
 =?us-ascii?Q?YQaxmFMCnUzeqBSVUsenO8l1XIfE0ZBB/PfYsgqsGlf0tuWhAAQMy+w/H1m0?=
 =?us-ascii?Q?3uFJ5iF0HtC/1f8lUbmyvnWtmZcigMUYGaSyABSG1XMSnI3m+G8ZonOgKA7E?=
 =?us-ascii?Q?e0DMTBhTyDkOCq6SFJbstwvcgnPrAbaHa9o0HE/GNkXzzPjckQgtQU8/IR6d?=
 =?us-ascii?Q?Y2zOFqNKBF2DtrGjjZDono+KonLcoDECdmq2PoFucNZrN5lwBm+BKixTXw/y?=
 =?us-ascii?Q?DJeSMVLqPU23S44DtE+FCQc8iNWq2+jYI8BO0oHLqOn7ARZcYBA/V3LzEr8d?=
 =?us-ascii?Q?9U4IzKx/u+FdC/EpX/kAfsB8gNxZwh0w3IyiY3ohEJAWGA6lTJIGaBN6b7Kb?=
 =?us-ascii?Q?gKoF9tKiMvmlWcwgAkLt+RQPppuWclPw2alJcAEaYBDfonOL10Q8pwyO8j3w?=
 =?us-ascii?Q?7SqjC5vBS72+4TG/+quyCPZq7QN0/Xn+Xx3rVG92Xt5ZHLasFYRKFzf2AbnP?=
 =?us-ascii?Q?2awzra581w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dHwALv4255sp/2G8bjk5Od7GZ4d2Hn+ad21GNV4STUZagbKp3mKrnmOae4D4e13/bNJLSQBdh7jTeYRO9w5Fsn6MugtEJyDhX/ffm19lZW3EiqXSEkiQrrDUyLrpOac+nozE2hfCJ6/OKl5/iKY/WR+fq8PECUjcy7azSeRss9tOcNhCrMnpybEks/5fcs4+XxIdSJgYqunIuzSis4c8iuTKfIVg4Y0ywb4Zq3sr8sBG59/bQ7ejJmwpJrqsL7tdZcWg0BieCGuqg7Wcy6wlunol8hsTyyqQuGaGTxV2rDMLRNDjzv3gQ0TXbZKJk7xW4kDKp1IQ2C4uC6Br4m45fg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73be8a30-9adb-47ee-d0ab-08de940d1cd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 18:48:37.2203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xjt4RJmtF3jDl2Z3v4qOJNVzksXJ1jWlCn/kF4HHRKvHJS6j1WL8+OO16+YHFatpXvIiBZlfQOOeJ1bmSvqYRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4882
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 203A53A65D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg

Nit: Name here in subject doesn't match the actual function. Better to use =
exact same name.

> Introduce a flag for DC3co. CMTG will be enabled only with DC3co so add a
> separate function is_allowed() for cmtg. DC3co flag will be enabled in a =
separate
> patch.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c          | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h          |  2 ++
>  .../gpu/drm/i915/display/intel_display_device.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_display_types.h |  4 ++++
>  4 files changed, 21 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e1fdc6fe9762..024d753eca55 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +186,16 @@
> void intel_cmtg_sanitize(struct intel_display *display)
>=20
>  	intel_cmtg_disable(display, &cmtg_config);  }
> +
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	if ((cpu_transcoder =3D=3D TRANSCODER_A || cpu_transcoder =3D=3D
> TRANSCODER_B) &&
> +	    HAS_DC3CO(display) && intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_EDP) &&
> +	    crtc_state->dc3co.enable)

Don't think we need both HAS_DC3CO and dc3co.enable here. Later should neve=
r be set if HAS_DC3CO
not true.

> +		return true;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..7692cc98cf87 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -7,7 +7,9 @@
>  #define __INTEL_CMTG_H__
>=20
>  struct intel_display;
> +struct intel_crtc_state;
>=20
>  void intel_cmtg_sanitize(struct intel_display *display);
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e84c190dcc4f..35e06fcf794d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -189,6 +189,7 @@ struct intel_display_platforms {
>  #define HAS_LRR(__display)		(DISPLAY_VER(__display) >=3D 12)
>  #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9,
> 10))
>  #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
> +#define HAS_DC3CO(__display)		((__display)->platform.novalake)
>  #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p
> || DISPLAY_VER(__display) >=3D 14)
>  #define HAS_MSO(__display)		(DISPLAY_VER(__display) >=3D 12)
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
> >has_overlay)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e189f8c39ccb..8a92ea4f1438 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1434,6 +1434,10 @@ struct intel_crtc_state {
>=20
>  	/* to track changes in plane color blocks */
>  	bool plane_color_changed;
> +
> +	struct {
> +		bool enable;
> +	} dc3co;
>  };
>=20
>  enum intel_pipe_crc_source {
> --
> 2.29.0

