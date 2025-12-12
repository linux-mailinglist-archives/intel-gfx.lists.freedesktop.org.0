Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0135CCB807C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 07:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CEC610E092;
	Fri, 12 Dec 2025 06:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGp5cU/N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707E710E092;
 Fri, 12 Dec 2025 06:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765520748; x=1797056748;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QKkHbJHiGmNCu6VQDxnYo0rPbq5asjuBGnBqcPLGtjw=;
 b=jGp5cU/NTnR1JU1E3+0SO0gwnPeod4f4S6UciRQWWJOSV2ZFozkmrpCP
 Yu8+Ke9V3cdobg8ayJII9aVOT97W0E/w0LnBSmEYHHZqC0a6ybLAO4sHg
 lYQ4cR7N/0UlZiwzIkAvJWdqxmwU0xCZblcuaIbAvGVZWKUNlMcy9WTGi
 3BDa5kMrQjd1tGwrJ+ppcpqh2cOHGg//vuOWFdsUDnMMRvSnElad6u4CH
 +HBK4FlrWUDpw4mOqQtVSkuLi/jVruyz2b8z4aeaRpsCusCc5qYkuSJii
 pINTo9FWDhsR5knpYZoerPVanoL3yDZYLRuObQU8P0k6kkLue5T2oqorz g==;
X-CSE-ConnectionGUID: 4hVQfkRsT5qBXNrm2+1NoQ==
X-CSE-MsgGUID: y5PlKOjqQtecZuD2LTI3Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="71134207"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="71134207"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 22:25:47 -0800
X-CSE-ConnectionGUID: W/91jNanSCi2d34XrTUiBg==
X-CSE-MsgGUID: QyfxD1llTRiWgCKB0Zn7Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="196091106"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 22:25:47 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 22:25:46 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 22:25:46 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.52) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 22:25:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vrcaXDD62fjUfiExAAgduCN7UMqjGNor8RbgvmjY95yZQuj7C81R8+Wc9j0IeML2WYBd06U2jDlk+uqgdCpdRUCb5qfVJsXL/eaP21Uu0BMYggfMcRAmIsCF8us8LHeKYeY28c8YlhURto1uZek/rYZWPSdQ42OmE66YBVQECfqoYfLekCM+lLxKey15F8IeDRfj3qqQfD4SrWULWtLt3VV2WhICv3CqRCPI/kcXvw7/C1zM09lgVlCTqczm33zaFgvPQHhGLSt9kDacRwn6w8L6+VJpCxHEgLJpinOBEs4iaNEowGlDhTk9es6CZo0DwdZ+1l1TWhFx/pRLX8iSxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xB+LGAzQZ9P8cUb0I0ZidqVXQrs8080K5DpUzBuCTZg=;
 b=qVQGXoyPBVVPev8iEklwt0ekWIpwV+Xd47bsdJvGLDHbtR3yCiXtEfekGcCRS6F3pWdafmrBja5E+EMGue2hEhSSgtV8J0eOuPBkmPjzYtUAAV0TdsxRhFXZr3Ut1mtO2x4q/icu+3SQac+Pfv9KOt4qFvxUzriIrn0fXtTDSdHUdfj7nonnxivow8XQXN/5LTYWo9BrzhDjYZsnIqGtWM6vuOiYWZY1SDWUf1nCy1HdMa7kkLKHSHs4RwGpmKw3Nnj3duGP0qWLacUC2ovMsCXBxSnjjt9Hrnn0iSOgMOrbgkzGSXAxvG407DXAk1fwuZH2iyZFPnL4pqJaWD5L/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 MW5PR11MB5763.namprd11.prod.outlook.com (2603:10b6:303:19a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.8; Fri, 12 Dec 2025 06:25:44 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 06:25:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Thread-Topic: [PATCH] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Thread-Index: AQHcaZjCgzc63S4O90eNCiV/4W/qSrUakhUAgAAhoKCAAAO5gIAC1NRw
Date: Fri, 12 Dec 2025 06:25:43 +0000
Message-ID: <DS0PR11MB80495227DF00C6B6F61097A4F9AEA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251210052128.1857581-1-animesh.manna@intel.com>
 <b6cd982649633cef5f878054e35cd8315b04ca05@intel.com>
 <DS0PR11MB8049E5428BA761F99FB5A7B0F9A0A@DS0PR11MB8049.namprd11.prod.outlook.com>
 <75e3a87a24ff92c02cb62236a821a91e9e5ea81f@intel.com>
In-Reply-To: <75e3a87a24ff92c02cb62236a821a91e9e5ea81f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|MW5PR11MB5763:EE_
x-ms-office365-filtering-correlation-id: 22404407-3c35-4e7a-e109-08de394747ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Mt69Vfmn4IKpzDaACzYiFTSRkax4W+ygmRh6glV+ZdTWI/b4upV57M6aePfL?=
 =?us-ascii?Q?lzae/OBscrJuUyIvEme5p2j7JMBePl+Q2ipJtudShUlAfq3B9BZTjjiRwTvJ?=
 =?us-ascii?Q?yPbowgIqa+Ea68uZimSlKXRpN7qWDKvK2R4GYRkoSuBVzbGnVe6dwPBuaP+F?=
 =?us-ascii?Q?E+LWE9eTPqm54ZefgRd603oV5Fi9SdnwGfzavYZUx+V3qIcObuipB6QOY4z1?=
 =?us-ascii?Q?InrEWF3xKzcdMRRZrlRBNOOQ69c+RvI4rd7clJkVmxoKSd0riYuUaNsVVh5H?=
 =?us-ascii?Q?3rhfW0OTd18KKysZZ+DJHAg9sp2ZXV4MRa2NDsoWfnd+jAILsv6ovxKaDY34?=
 =?us-ascii?Q?jHPromjSd5ccJR19dwiOb2009DY+vRoh58ZTkiFLasEECsM73rRF7gXPbZUH?=
 =?us-ascii?Q?sWUM93W2TkY3Ac7jTI7dO3YUut+v0fklginkbKgjjRMk2UPfdduvySGqgKJg?=
 =?us-ascii?Q?IObs1uEoUvrl8jVcM+eAnPkEQ5aJURSQuCiX47pQA9MH2eksZP7lRhjFko4C?=
 =?us-ascii?Q?L+fXlyFoVoMBu5cnrtzCSe0ttGSTgIksiPVc9XTz0vgoXB3YkymWjon8644Y?=
 =?us-ascii?Q?Tlx4e4hd6GloLc+XMcEZCx3kdE6oqRLFpBdzuMDyaz0gx8FqYfr+xO88Fq9R?=
 =?us-ascii?Q?A936OPonZl2CbuKRG56BGrdLMJXDv5XTF0isk0WtXmGsZKiNHQm4qjVPVXUc?=
 =?us-ascii?Q?0CuO6J2h32yOYaU/5qxJMHMycVVi8qHW+u3r446xVLcykrF9OHZ8J2V/ojjd?=
 =?us-ascii?Q?nSg5+jXYdcAOGhXJiHQ5u2HWh2LWFhmhjviMACCUnpLu5L/4n8bfVvIcSux2?=
 =?us-ascii?Q?4ZRCxooVsWj7369xKurAJv4S+/cpy92KWSgN+jpirzgsxoT+B8dSTQnC8fwL?=
 =?us-ascii?Q?2j4Z34ZGUqr/PCOsMmzDf5jteIGrkqxQS0U7C3qzutIMXu6cv3gUF8trsuf+?=
 =?us-ascii?Q?4vobzOAr99ajmRzIDYjZehKncLCkWGMbLE14nx2486lnrquWm7SsSNwOf8eK?=
 =?us-ascii?Q?DEou7/QG+i+KTJnoIyga6igg61cJ+pDjqauwq39zUSCYqXDe3f9szDdkdktW?=
 =?us-ascii?Q?Fl+281l5iI+XklK8qeOk/DyMT1c54WVUByfnf7fq18uNV0rjVbN+XPw2O61K?=
 =?us-ascii?Q?SpAgcn0Q4ClVPoeAsRZj250kok7figwZuz17Mkj2Uj7KHnSILosZkcnwd5rJ?=
 =?us-ascii?Q?f1ERubto9Chx7c2rLYx3PV8yEKaM8zFSw1FEDfynHPuU6Im00LMLZnjCz79S?=
 =?us-ascii?Q?UgM10Z3ddZVgR6UZdvQONXTryqb8xcG/Rm+uIZxnqxvL2PDuL63MnEnCFRUG?=
 =?us-ascii?Q?RyvSy7YZI8Zlina5LGFkdK9nRU+HvN734bkRtGKAU1EHdrLHCyNxMqGzsFFX?=
 =?us-ascii?Q?diGHRYjajeVzcDFL51681zRwpF5sGoo3C5GykHJ8uV3Cs9AQw1tIYYC/QGge?=
 =?us-ascii?Q?8mC8yRx7VO/xy7V/tb+RphLdit+Hijlv0oKn3TPtkt3EKCN3fZUVZHi5Ne3o?=
 =?us-ascii?Q?v0eMF5/lqOuSkPHf3fmaQUr1yahQIKRBa5/p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iyUYsDCHaWJNbnZ3OAk4CGTkEUyfi1G6MPrHCX1cmHmE83G3ZuvghKxw7L1o?=
 =?us-ascii?Q?3+41BK8QpwGv6hdd11I+RC8hBVV/20UM8gug/SeSvx0pRhek7NHpOuzS9a4u?=
 =?us-ascii?Q?+fvdHy8tmeDia3cjLQGGO1RD0b84DhVfwjFhGDLF5w1lEC5VMrmWu/dIaUOH?=
 =?us-ascii?Q?dvss2ojs+TrSRDF/vTdY42gDI03U2AqdlXcZstJJKOHEHOSyaJkFg78OHFXN?=
 =?us-ascii?Q?Oa6WnQM+5ZzEViTQLPgZk7FKFvronnzdN5b1UxsYOnfXo8shZAONfzaQFFxu?=
 =?us-ascii?Q?REk+XNC4YTHwceIbsbMzzAhcut/4WMEXGJF+RFQoPM9YoAqhoVRrlJCRhn8t?=
 =?us-ascii?Q?XBDUhKSlVAnw/79Cfpwm+voEEuG4RFgaschO8PD6kPg/w/0lT8nHWHrS3xS/?=
 =?us-ascii?Q?aQ0ytmX+6iYogf2DDUK7eebYRPx1iOdWN6+57ZuL/TXbR33yfy+t3rdSRWRc?=
 =?us-ascii?Q?IRJl3CqueuDY7BtDUeX7qaYEQ9HIaN4glxMLD5pj1ELwvp7Xl2i3cUFj2kr+?=
 =?us-ascii?Q?2AKnJwQavR1Up5haJOAvzYfNtJnHmR+rwJBCOXAsrDVH7HUl5wC5S+oXmTnb?=
 =?us-ascii?Q?iiMtdev3uC1Fjlh9uHorEyhUxzlHxyjp4PHK/+CR0g645iRrAa7Xc0YkhpAt?=
 =?us-ascii?Q?bnGpGsIfL+jFeIdSanfy6xu/X3GFGVbsBQDVg32HyGjqSzpYfdVZb7PtP/o2?=
 =?us-ascii?Q?3G1yE0OaIa+IxgU6Uz1t37ToYMAwLqpP84Mxtt6xqDXpnE7YQNpqhLUMCqWP?=
 =?us-ascii?Q?+VqweZxPWB+l4L/I0GFCMex0HXPPKbVlRMcV4VSMPkq+AaTu8smDMJtRpFFT?=
 =?us-ascii?Q?jMDTtbBb899ATKRR9vWAJ606oh+/jntwAh8UNUv46X1CmGS4J6piREXYYiEb?=
 =?us-ascii?Q?4weVaetFaGsghfCPC9RRjw9ycO5cRGTC3NpOqwNK8vvcovsrcJONdB7IrenG?=
 =?us-ascii?Q?9p5CT/SdgEPJKqjTCbxa4eUYy5XUxrzP3oFltIBYYYTGGxank8l856VwS+sv?=
 =?us-ascii?Q?P4qxDV4AscgZKzbZtRKwdVqEFJMwQ9LOBya7yQ6I84kW+uyxpMfZ8luytkzf?=
 =?us-ascii?Q?5OzA5rlh/d5fWKIVHfMEZLrQV320LEaLRok5rGyiKGS7yqssI4849NVtfxNF?=
 =?us-ascii?Q?K3gF2/Dc1egHU7b6ma4jP5cTb2LOv7fNahb4m2jWg3yhWwbHfK43n7VRVun3?=
 =?us-ascii?Q?IN6NQPbCSqn1uimbMkSARhByKsseUyuZ9hOL6JIoF7DqfijLSfDT8H0vPguW?=
 =?us-ascii?Q?ybj+yXonfyHDB4Stsk8kSZibOXJhkNy3XjJ02drcqsYqaict9YFwA2Nk3gx+?=
 =?us-ascii?Q?EjDGMMGOu+sTs9s5eq5EYsMJ5KIo5gQtDu5e2Nm3aNRB5+7hHdUi3x53RbIe?=
 =?us-ascii?Q?MwqiZs+kBJ3nsPqkOraVKz2oK2cz1FPHWYPDij7OvxS+wIkz5aqmCqiUvG0R?=
 =?us-ascii?Q?XSsM6LlPLbO3xfG0TlCGPu9bJGXGX8Lh/VIe5hGllYPxIjkRR6wo0iSeQTXR?=
 =?us-ascii?Q?wMhylBPALqC0ox+BdqDIt6dubXy6Jjfl0IKZXHNX64yZxPW1VsRpzlXJ7xOk?=
 =?us-ascii?Q?OWsqHH26TtajfhkdGjP8G6EeUjvr+rG+QsotljzrIa7cHasDyTQ82SBUpPog?=
 =?us-ascii?Q?5w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22404407-3c35-4e7a-e109-08de394747ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 06:25:44.0953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RMDAD0NJgdyKVDcJnCvmJpJlLjJf34jF0s7UPcWMBvjXQxjPxmEnWQMDRCcEO9HxwfdUUzLCQitKxAgedZwAJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5763
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, December 10, 2025 4:38 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Panel Replay BW optimization for
> DP2.0 tunneling
>=20
> On Wed, 10 Dec 2025, "Manna, Animesh" <animesh.manna@intel.com>
> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Wednesday, December 10, 2025 2:25 PM
> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> >> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Manna, Animesh <animesh.manna@intel.com>
> >> Subject: Re: [PATCH] drm/i915/display: Panel Replay BW optimization
> >> for
> >> DP2.0 tunneling
> >>
> >> On Wed, 10 Dec 2025, Animesh Manna <animesh.manna@intel.com>
> wrote:
> >> > Unused bandwidth can be used by external display agents for Panel
> >> > Replay enabled DP panel during idleness with link on. Enable source
> >> > to replace dummy data from the display with data from another agent
> >> > by programming TRANS_DP2_CTL [Panel Replay Tunneling Enable].
> >> >
> >> > Bspec: 68920
> >> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >> > ---
> >> >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> >> >  drivers/gpu/drm/i915/display/intel_psr.c      | 23
> +++++++++++++++++++
> >> >  2 files changed, 24 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> > index 9e0d853f4b61..b6fc249a9f09 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> > @@ -2051,6 +2051,7 @@
> >> >  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
> >> _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
> >> >  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
> >> >  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> >> > +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
> >> >  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
> >> >
> >> >  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> >> > b/drivers/gpu/drm/i915/display/intel_psr.c
> >> > index 2a378a5adc59..d0a01a08299e 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> > @@ -44,6 +44,7 @@
> >> >  #include "intel_dmc.h"
> >> >  #include "intel_dp.h"
> >> >  #include "intel_dp_aux.h"
> >> > +#include "intel_dp_tunnel.h"
> >> >  #include "intel_dsb.h"
> >> >  #include "intel_frontbuffer.h"
> >> >  #include "intel_hdmi.h"
> >> > @@ -2152,6 +2153,25 @@ static bool psr_interrupt_error_check(struct
> >> intel_dp *intel_dp)
> >> >  	return true;
> >> >  }
> >> >
> >> > +static void intel_psr_set_pr_bw_optimization(struct intel_dp
> >> > +*intel_dp) {
> >> > +	struct intel_display *display =3D to_intel_display(intel_dp);
> >> > +	u8 val;
> >> > +
> >> > +	if (DISPLAY_VER(display) < 35)
> >> > +		return;
> >> > +
> >> > +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> >> > +		return;
> >> > +
> >> > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
> >> &val);
> >> > +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> >> > +		return;
> >> > +
> >> > +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> >> > +		     TRANS_DP2_PR_TUNNELING_ENABLE); }
> >>
> >> Why is this so separated from dg2_activate_panel_replay()?
> >
> > I felt this feature more leaning towards DP tunneling, so kept outside =
of
> dg2_activate_panel_replay().
> > But this is just after intel_psr_activate().
>=20
> On *one* path calling intel_psr_activate(). Why not others?

Some cases are PSR specific, v2 floated where moved pr bandwidth optimizati=
on in dg2_activate_panel_replay().

Regards,
Animesh
>=20
> >
> > Regards,
> > Animesh
> >>
> >> > +
> >> >  static void intel_psr_enable_locked(struct intel_dp *intel_dp,
> >> >  				    const struct intel_crtc_state *crtc_state)  {
> >> @@ -2221,6
> >> > +2241,9 @@ static void intel_psr_enable_locked(struct intel_dp
> >> > +*intel_dp,
> >> >  	intel_dp->psr.link_ok =3D true;
> >> >
> >> >  	intel_psr_activate(intel_dp);
> >> > +
> >> > +	if (!intel_dp_is_edp(intel_dp) && intel_dp-
> >> >psr.panel_replay_enabled)
> >> > +		intel_psr_set_pr_bw_optimization(intel_dp);
> >> >  }
> >> >
> >> >  static void intel_psr_exit(struct intel_dp *intel_dp)
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
