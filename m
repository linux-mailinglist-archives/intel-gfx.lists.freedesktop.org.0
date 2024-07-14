Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FF5930B63
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2024 21:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E3110E109;
	Sun, 14 Jul 2024 19:46:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FnNuleYM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2205B10E109;
 Sun, 14 Jul 2024 19:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720986388; x=1752522388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s/JxZa5qhMd/FKhTfr2K5kndbDqfcy1MspF5CAlpLFo=;
 b=FnNuleYMgQarvqGAuC4KvDWLPJc7R39tylGqzAZTSb+ykzBFdchmR+gX
 Y3f++Vw3xFYbpTloi5inapKFKqgunbbmw5EYXWgv0jPfA7+nkW6ljPuWu
 80RO5XwDv1C9ywZ9IVyIiLDgzg6f5Azns/gFa8kYJ2oaGwqmM2ONlXxn5
 3+7tj4s8xoEdfnhzxNiif8/4bs/mE0Iy8aJjltVQWqN2vGUaT3J2y8DU3
 ZGXUU7ad5p3RBjoUENmRBrNAz5cOS9eVro60fpEMIJ037/wux15cpqbH6
 u/Yi+xnbwAJRBsewJkPMcatogZ2gOmvlos5VmMiX28D1Xlw5T+w3BLth0 w==;
X-CSE-ConnectionGUID: cnqAIy1NShGAj+yD/pI8UQ==
X-CSE-MsgGUID: vHGPnCu4RoKRsJSF7d/b2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="17977817"
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="17977817"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2024 12:46:27 -0700
X-CSE-ConnectionGUID: n52mDpPCQYa00bnuwggsig==
X-CSE-MsgGUID: oLqEw7V4QxecBp+VyOx82g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="49798981"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jul 2024 12:46:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 14 Jul 2024 12:46:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 14 Jul 2024 12:46:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 14 Jul 2024 12:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HCtodtUDQ9o57/JxskyLV7rx4GYfnfg8sLxuPeIqQAQB4ndeZWgbXHN6HQ1S8+RwG2sep63YwNUCN0M5nIy4dKLE+617vkS+X/cuIp1UcWpCNGdECccF2obeBxQ/J2VITNyrt+x93/iY4iiHerMdGAAb8km7cdCHXF2zpaopwds/rwyKcsIfYewFjNyXO/G3u/imX3Eguk4VcmJv8be1nwZ2Xqhrzsh250h4kMLPkv9utR/4BnLEeucr4uetSWnH13e9DY4KPdJa3uzSkOZGYk7GVuqRjv4AkCd5gr1fZVQSndYDKEX+wBMPsqscgEkyUHG3HpiIzOSempV5ETm86g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fbJjwCYLxxoBT53nurFdclbd2CzKvKMMuVlgqzmoqqg=;
 b=IlSF53vPqPpOynjTJDGO58uAEksrT6wlVB4nvIABIpK7YTDVjEfoYG5oSdXXduMCNyrM6kbYX2Is+AkbxXnVpWSQhtljF7ncWVxTHECF0dw2V2juZPJosehYFO35FsWSZTQotQpB6hwggrzYF5Q1F/d57WFRqIgKNE4Eo/c0oOtBPAW95Ru2bqHh8G3gfs6RegGuyCiWaRiHOxLeZSwe/qtKUs9vRonZ3VEk9hy1mEqyCJDGwPtsFLLcBCTipy+KupVeNSuFkhhcUIcMxpW6JhIdwoIZmdPtyM7iTr60Gwzxv3rIbokb3DUdY32eO/d/E5eYsJScQi8+tYqxCGV80Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB6988.namprd11.prod.outlook.com (2603:10b6:930:54::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7762.23; Sun, 14 Jul 2024 19:46:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Sun, 14 Jul 2024
 19:46:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>
Subject: RE: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Topic: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Index: AQHa00/8oWCNr7uw3kau2bhh5YD5Q7HxuquAgATqVDA=
Date: Sun, 14 Jul 2024 19:46:23 +0000
Message-ID: <DM4PR11MB6360965EFE3330F318B33B16F4A02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
 <20240711163741.GS2906448@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20240711163741.GS2906448@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB6988:EE_
x-ms-office365-filtering-correlation-id: 1d0af42f-9c60-42cc-d30a-08dca43da450
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ojiz/ZBB522ML9TdY8Fis/aztaNiv3UlMS37FkBIt4K+RhipBICE8YpBFn5j?=
 =?us-ascii?Q?WtqOQxmE2BDTs7yYMHANskOruDfHkiqg8uA21ADJVQ4Yf+s6Rs50fGrjj4u4?=
 =?us-ascii?Q?VItaBGSOUAN50vD6xhoMeV5SQKWi7DAh4Vn9wCsOfghwSAyKp8OIocX9u5M/?=
 =?us-ascii?Q?9t4QGmjb7diPnPxGgnTLs0pMIKvHHk0+DNzHthfQkxbJXBl+nASp7qqCMB/Z?=
 =?us-ascii?Q?F87D8G0KceMcH993avrpNgiuS3FZJWfbIQSFv2z9OefZjR6ZZSqnN4M2SBZ4?=
 =?us-ascii?Q?uwm0cP50s/0knYhfJ6sSp9SjH1Eme4H6hnhhr4YhSagIbkR6/13b5Ya7iD69?=
 =?us-ascii?Q?L2wDm4XHmiQXx499TZ/KJ6vW+A3uLNjpkIaBea1oiwqSdraA44x6I7MSLSgI?=
 =?us-ascii?Q?YJFsAVnaUaF7z7G4rjF0QumK2/JMeZzuTlmnpJuw11EN7+zoxA0hb5OzfFhY?=
 =?us-ascii?Q?qmijdv9Gna9FET5yEtxsqX7lCgPjr9rTri3HuhssRmHIEsczk06rtswwK9Av?=
 =?us-ascii?Q?boyfY8tV7DXgLYiunCvvpnhwBL2NCbw7sUkNpl6XTcjlnGAtI9KgiD+T7DiH?=
 =?us-ascii?Q?+B4odjp0OZkS+g3l22/IgmYMAVmC6kfDkaLO1LkQYHyQhNpM4sMmw0GOx6kg?=
 =?us-ascii?Q?GRTz8xJ30yHvFKqqHiYBfbVykLYs00vtIHcDduss/VM2aWYkfgF7Xzm3p9xz?=
 =?us-ascii?Q?4nGegwmF4mgFE2uuPZWMwuniKlrnyeJpCIz8NFQL1btOGhrsfmfCOnbcM3hB?=
 =?us-ascii?Q?QkZNFOJi2N83LpMA5wTL7ux6Wr6heiUZHklkcyifYzX3SWsGkohD/qVt6Ws8?=
 =?us-ascii?Q?hEWKgQl48yIohKGWAkWluPcXFRBWPk0ZqjVRRFFD7OhwZKg055CGb8toHCx5?=
 =?us-ascii?Q?/DbktMRzx8icFZFIZAJbNBnN0pkpvaJs5bEYiOmovCV/q8vh99223dhLQvWA?=
 =?us-ascii?Q?an9LJXpTdzOLa62MvaslbMHbdEXv+Nxeb0NWtBcBPtpdwxMXQ7tWK5rK7M+s?=
 =?us-ascii?Q?utrV7/pbE65nLx+iCmzOte++/4KIeUYF2UCP0VKj9mvvd1z72A8cApcGxSzB?=
 =?us-ascii?Q?nMBP/+XDoJDOzhrRYd0B1ZpIGPT00F5ppLSJZJF2F0Cy1Ymcz9u/oJRJf06x?=
 =?us-ascii?Q?UGsRYUoc/qWBkz0hxILOUtSMn0xIevH5DdcfqyhESIbr4nHcysvNvxEuvMCN?=
 =?us-ascii?Q?pgyNuBkOaJ5vyNz+tuIpkVyr8dSTHc6EGoxiZx1YpvkSiHz1OpsJtjJ8bwdj?=
 =?us-ascii?Q?6r6m4fycbzO3ZcLWdTq5cfhEBgXAzll7xh2JQHAlLooBHO5S5wxiQYbl2+Es?=
 =?us-ascii?Q?GQ0QxihqyNxB3iOeXaymQkjkCECHkuQnW2wIVT3tlsJ2OSubISJuBneSi2WL?=
 =?us-ascii?Q?BD8k4eE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SF8yQLYNoh8/D1Uktf9TIctk4cmyMJL2FuCGk080/LqlLeDfjTd2TfUP5rsa?=
 =?us-ascii?Q?xeaCynegFVI4QUB4AklRcvMcWLnAMBcWUqVKBbKQbbAvQ1rIQQqPMcdI/+zs?=
 =?us-ascii?Q?95atYdbJKgSQqfNg6noUxjF3u8EN05o2FYhZEIyrRPkgrgRZLmGm94arqIVZ?=
 =?us-ascii?Q?1c0OEvSbuHVhgHx3a+aQpvm0czoiwgCPvcCVQkRh/EcYex95Sz1yQjaKfaJ3?=
 =?us-ascii?Q?Kx3/LsL5WNuYB+W7MiWufBAZ5qFQWZBhteekcIauTY41lh7v9SipJq4xyJVx?=
 =?us-ascii?Q?brY7hoL/Cj+fZKv8s9V8fsGL7BIiYTaixlfJsBbVQHZAgR/bm5yICOdV+L+k?=
 =?us-ascii?Q?KMt/iBtrcARPsXgY4jx+CSRztaE+sjuUXBFNalj8kzedPkQHulZPOM51mkHz?=
 =?us-ascii?Q?/NDhYBV/k5V2JpEBTbA/gdt5E84xQkAzybEemLGWIyy7a4/90uXijlXdJaEP?=
 =?us-ascii?Q?FmQqidd5e3AnqSYhdLwG1wlmicyYFHWCncPakpaguhgslfEqIqYF5x6S9GqV?=
 =?us-ascii?Q?X0mkKUmk09o/5j5mVq0DMGjxkaHCkX4q7E76W6F92Hdo1gmMYxmFb7sBLuvb?=
 =?us-ascii?Q?zl6+LPCUGi3oLuDz3cmkcc7Dv9uVCa2TsyLmFbzUWPI7GwlgtUVJCAqbI2i5?=
 =?us-ascii?Q?m/nFGSNJj8a/bHDgdlhgYqh8DbLdGatBPUAnZinGAhvfXSKymUmhgpnmV4Qx?=
 =?us-ascii?Q?lLaZbMxZu2AideFKlYHp8v78InuR4diJyYl6uzTjVfoigQL3BW45NNjIoz3z?=
 =?us-ascii?Q?QOr3G03dOwTbMzkoOe+TxTkgaBeIR8y9ObTWqaua8ckq1oAuzRR6+YQSqMDE?=
 =?us-ascii?Q?o3Nh3bKqkX97/lu/ID6YLZuDn1xVZ7heg4nFn/5WqJm2427lraxvuSCrZh9S?=
 =?us-ascii?Q?qntHtGfTyH37O4LvcPE2awpn3XPlfd+aAn+3RhlMnKcDaj27K2u1doQ1SUbF?=
 =?us-ascii?Q?03RAd1THFlVzv3yFOWm2dgVXPDhAQy/oqei04kDgXPcid5ZE7V/MNdsdF4my?=
 =?us-ascii?Q?5DUZDK4BIAR2VURMXA0mNS77s1zafajL5i2cL0cc6/4ku/lHXOvBQLtYBgqX?=
 =?us-ascii?Q?nie/IctIZZYgNASVOsw3uV2FpoPHiKNRrZBhONYnSi+cZnVUuRUzQ6r+Dq9L?=
 =?us-ascii?Q?JumD1r+yS63jG1lzXW5Gr7N2GieOahZx5UrATAYMPns2vNQU3Q4YDG7VqxHR?=
 =?us-ascii?Q?8EKxZmh3DRCs9VoG7B4lqafI8gvXgvtcrOWMkAXm9qISKeP+4tM3lU3ynG82?=
 =?us-ascii?Q?6R+TfWjQ85qHBsYCHo1ypkUQJBIXobsiZ20quXc/FzwQ4dxTA2JaWdOFe6Fe?=
 =?us-ascii?Q?WAlSPXw5qqhH2Dkh8HFx5BW3lBx1WtYo+mCM1lo+GkHMkgmdAN/22/vKAaYs?=
 =?us-ascii?Q?KLt3+SOwZP4YqQ6ixo9LPTT8CWwLMGr5D4V6bL8uOE8gQAPj7WSjiYsw//cb?=
 =?us-ascii?Q?DH6v1MNT1GXyrtUwJxTokgsn679h9sepD1Dgtj+oJqoF5KMgPeOQMGLuCbSL?=
 =?us-ascii?Q?ZAROGoH41i/qjvtV3QWiBn1M5whFYt6vTGwRUgpKKsY6GRnsp2nJZy5ppgFE?=
 =?us-ascii?Q?VZ9ALvYiuaHxxzTJ0s64S+xTrPVIICYES/95u02a?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d0af42f-9c60-42cc-d30a-08dca43da450
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2024 19:46:23.6219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jsF0uDxLP+L+gz66nNUjQkVcZ9sAqQul8n4SslQ8sIgIUhduv7e2Js/t0rkBkt+cug/ox+LCfbfBqO+tf2dRCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6988
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, July 11, 2024 10:08 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> ville.syrjala@linux.intel.com; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>
> Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
>=20
> On Thu, Jul 11, 2024 at 10:43:39AM +0530, Uma Shankar wrote:
> > As per recommendation in the workarounds:
> > WA_14021987551, Wa_16023588340:
>=20
> The first one here isn't a valid workaround lineage number, just a per-pl=
atform
> ticket number.  I think you meant Wa_22019338487, which is the lineage nu=
mber
> that can be used to track the applicability of the workaround across all =
potentially
> relevant platform(s).

It was showing up as the WA with wa_status moved to pending_dem_decision so=
 used
that number.  But sure, will update the same to 22019338487 to get it corre=
ct.

> >
> > There is an issue with accessing Stolen memory pages due a hardware
> > limitation. Limit the usage of stolen memory for fbdev for LNL+. Don't
> > use BIOS FB from stolen on LNL+ and
>=20
> From a quick skim of these workarounds I don't see a clear indication tha=
t we
> need to avoid using stolen FB's?  I thought these workarounds were alread=
y being
> implemented separately (and aside from disabling FBC, most of the necessa=
ry
> changes are on the GT side to adjust frequencies and change caching behav=
ior of
> LMEMBAR accesses).  I.e.,
>=20
>  - Wa_16023588340: https://patchwork.freedesktop.org/series/135699/
>  - Wa_22019338487: https://patchwork.freedesktop.org/series/135460/

There is a restriction of accessing stolen with CPU also be able to access =
it.
So adding the change to avoid this situation.

> One other nitpick:  we've been trying to avoid using "+" as shorthand for=
 "and
> beyond" lately since some of our IP names contain literal +'s in their na=
me (e.g.,
> Xe_LPD+, Xe_LPM+, etc.).  We don't want confusion about whether "LNL+" re=
fers
> to "LNL and beyond" (as you mean here) or some other platform that's dist=
inct
> from LNL.
>=20
> But in general we usually don't treat workarounds as "forever" logic unle=
ss they
> get written into the spec as new "official" programming.  It looks like t=
hese
> workarounds apply to LNL/BMG today, but we shouldn't assume in advance th=
at
> they'll automatically apply to platforms n+1,
> n+2, etc. as well.
>=20
> If we're making a concious decision to apply workaround programming to mo=
re
> platforms than it's technically needed on (e.g., in cases where a workaro=
und
> doesn't have any negative impact, but applying it unconditionally simplif=
ies the
> driver logic), that should be called out specifically in the commit messa=
ge and
> comments to make it clear it isn't a mistake.  But I don't think that's t=
he case
> here, since otherwise we wouldn't be bothering with the DISPLAY_VER < 20
> condition either.

Thanks for clarifying Matt, will update the change and restrict it to GRAPH=
ICS_VERSION 2004.

>=20
> Matt
>=20
> > assign the same from system memory.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> >  drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
> >  2 files changed, 19 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> > b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> > index 816ad13821a8..8fda8745ce0a 100644
> > --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> > +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> > @@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struc=
t
> drm_fb_helper *helper,
> >  	size =3D PAGE_ALIGN(size);
> >  	obj =3D ERR_PTR(-ENODEV);
> >
> > -	if (!IS_DGFX(xe)) {
> > +	/*
> > +	 * WA_14021987551, Wa_16023588340:
> > +	 * There is an issue with accessing Stolen memory pages
> > +	 * due a hardware limitation. Limit the usage of stolen
> > +	 * memory for fbdev for LNL+. Don't use BIOS FB from
> > +	 * stolen on LNL+ and assign the same from system memory
> > +	 */
> > +	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {
> >  		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> >  					   NULL, size,
> >  					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | @@ -48,6 +55,7 @@
> > struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *he=
lper,
> >  		else
> >  			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
> >  	}
> > +
> >  	if (IS_ERR(obj)) {
> >  		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> NULL, size,
> >  					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | diff --git
> > a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > index 5eccd6abb3ef..80dd6b64c921 100644
> > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > @@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
> >  		phys_base =3D base;
> >  		flags |=3D XE_BO_FLAG_STOLEN;
> >
> > +		/*
> > +		 * WA_14021987551, Wa_16023588340:
> > +		 * There is an issue with accessing Stolen memory pages
> > +		 * due a hardware limitation. Limit the usage of stolen
> > +		 * memory for fbdev for LNL+. Don't use BIOS FB from
> > +		 * stolen on LNL+ and assign the same from system memory
> > +		 */
> > +		if (DISPLAY_VER(xe) >=3D 20)
> > +			return NULL;
> > +
> >  		/*
> >  		 * If the FB is too big, just don't use it since fbdev is not very
> >  		 * important and we should probably use that space with FBC or
> > other
> > --
> > 2.42.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
