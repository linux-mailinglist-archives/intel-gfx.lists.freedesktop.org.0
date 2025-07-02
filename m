Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E32AF11A6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 12:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B292E10E6CB;
	Wed,  2 Jul 2025 10:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHyFH4zd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E92C10E6CA;
 Wed,  2 Jul 2025 10:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751451696; x=1782987696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T61T4kpP+k86PQMDG8hFurrZoTqHIYcTSgmZBAgoAOo=;
 b=aHyFH4zddfscuJRvTbTaOicHxi6k1WdkYT6eq6sejwylq5b8se8qGy/V
 okliqNzstYruMd05eG+/S9yEGMunlAyLupxi6WYzhYfJsJtcN8oc8HIuD
 xD4LWcTxZ/bcjQ1J7ufQhRZuZRvE6vBLydHOCpnh/22Aer3Te4OT0MKHN
 u+6DE/vugHVr/n6RHH5y74rFS957faPJpyLatfR6I64vWL5kJsBPb5XMu
 1Qz61xBcKDNozpDlhrJdKOc1DhzsDBRhuN9C0xcLg2JrBSTVTb+FU/RSG
 ijng+VHTQt+5AjDAIP+6quS1ovl79+IaFhlyxZRUkorOeydzL+NaIwW6n Q==;
X-CSE-ConnectionGUID: d1PSryBdTaiv3AZngugBCw==
X-CSE-MsgGUID: KjJvS4ZLQ8uNfc4vJQDjwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="65088558"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="65088558"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 03:21:36 -0700
X-CSE-ConnectionGUID: Y18SA8SOSlGobGOw1QQlSA==
X-CSE-MsgGUID: Fx6a/E7dTDmQEXVy27X8Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="158414323"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 03:21:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 03:21:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 03:21:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.73) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 03:21:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sPX4UbeSwqhDRf7fx3g7lWHcQVgFTDvv41G70ouH8wnuQNp8vmKe54mMXG4WZQceziwBMiUbYmSeMhpiCaf15FFEdS/KDY0qHmmllMPUKUqGYK/CE+rL4Q55Cx4k41x0svIzuMbxdoMaKIUj2Mssr4XSXLOORs8kVAohJlEVxfrEqJSz5uz8RUxl8yqCp7zWFFxnJ8j+GFh5mVrsPU5/KKNzOQak41jJGEEoBdSffk1wR8UHkTCBirbGnDGAOXmtR8bqzH9PpkJeW7/qm3bm63rzdIwuKW8SaDWMLz8vz3joMLHTgzSguFx+JXtpR+ofxsop1hgN8myS8vil8h/OSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ttgu9WSXd+w//Vc8wctkqS/KnvF4YCkYnPjlG3ph1Vw=;
 b=Ko4oG7i7t3DCHAPIp+90qVen7OofpgOBZT6tCelCW/7sKsWKo6Ze5O00igtjmTIRKxLe4I1uuyrEH0lEteNbQv6IKp7TcUH8sQLOTELgXXO0nYREZ4dZjVEZtYEh5/VAzAIR9Yhlk88dfdYLiBduNxKoi/Pwo+o/KckNZbJNeJ2y+Vt89+ihCUEo8QubcqVhkGIcm5KDFlmDpOQ1/z9SGzr75wDEoUL3gf6Mu6D30tNIAjO1KGZRnzDN330guDsq/Dxw+yThlXag4iOyCJptQi6lK68wIDsaAIKl+No/LzlYLD+q9P7SgGm3UKTyUUMjNgkGbGrzlJ/HlcPQ+DfnUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW5PR11MB5762.namprd11.prod.outlook.com (2603:10b6:303:196::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Wed, 2 Jul
 2025 10:21:33 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%7]) with mapi id 15.20.8880.029; Wed, 2 Jul 2025
 10:21:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Subject: RE: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Thread-Topic: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Thread-Index: AQHb6l79+0USuhLXME2A2vBL/1twR7QeheKAgAAbLPA=
Date: Wed, 2 Jul 2025 10:21:32 +0000
Message-ID: <DM4PR11MB63609814E39D4BD8DDC100B2F440A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250701081756.2821286-1-uma.shankar@intel.com>
 <b0e0896227fb8b9eed3b095afb397be8dbed51ca@intel.com>
In-Reply-To: <b0e0896227fb8b9eed3b095afb397be8dbed51ca@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW5PR11MB5762:EE_
x-ms-office365-filtering-correlation-id: 309af2fd-458e-4754-1604-08ddb95237c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?L2m7KwPscTBVYVcPdniHeTnDVfZHia7/x1OP4VwI3nY4FY2mi4WO4ZLSM7N2?=
 =?us-ascii?Q?drx8ohPi9/D9WoVXOc8Ahq3HKzxgbEU5eRiCmwBWV44FMmSESQF7ev18nA/f?=
 =?us-ascii?Q?tBc81v1odmPGj3M/H8TMt0uoDv+3rfw4XHS6j2Ip5eytUf9QmdiqDOo9ayKC?=
 =?us-ascii?Q?ENPN7O8UrBRM8CI1xF7BNDxXRHNivtJojmQqudiz+6/xnOeVFb3Kokfc8GQs?=
 =?us-ascii?Q?uPKoFd/LXBLOpx06dCybTMGRmnUFuWVl7mG3eX9UfTpOyY2/tCQNumQ+GtuD?=
 =?us-ascii?Q?CIYCqtysvNqQ8BatA6Go9VBj6/TwXSZSNLgLa7WrsqI8PqgnRpWBaD43mhNR?=
 =?us-ascii?Q?fOMBT4ETL28/b46U+XS8sjN/kK+UWjpJKcei0j/K9R5FraU/xXmPk8KsvpUB?=
 =?us-ascii?Q?Kg4Ts2x88xDQwXbFz+/mKJHlZbASaiztd5vfTSIz9dWMY2p7vM03DEHuv5K9?=
 =?us-ascii?Q?2G/aqpe8odL0N2bXhFyLV58Gl+ivY8a1fTJ5RtK1ph331u2NvO006i7sdp0a?=
 =?us-ascii?Q?ZYokmQ3Xa1oEuvElZd/B38/+fQig7cu2EjqI6tew+lzItzHvvWq0cDpi6d3D?=
 =?us-ascii?Q?Mh/oxzONlR43rYY3xduJQBKZ8/uwYSk84wnt41rtlwhOJdIiCdYugNP1FsRm?=
 =?us-ascii?Q?ETWlwS0CDOJOOzqLij8bDGpuw+OonbVaX8t1115ntjhhwH9M14rla+XK6vy9?=
 =?us-ascii?Q?u6NibUgOHbRZmbi/pcX75kI4zdTo6pnEPEEvkOKkikBdV76cm0kPbE9XWDER?=
 =?us-ascii?Q?deSKrim5mOjt+vl1aNgeBK/krljL0RpqdHViO2NndXiVNCstd7oP2nmCJX/L?=
 =?us-ascii?Q?3sE0S//iRdDFt7kQsF/Gube3jB4i+LAjHTtp3z/thF3ZgaxPsmVpI2bNY8vW?=
 =?us-ascii?Q?fhtpDkFCDTXQVdDUG7eX7BkdsZ/JwUuI//7eBZMOHv+7kUtIOQdC7x+dlVLt?=
 =?us-ascii?Q?P8AzzscAztXENPgP9eonYyKpWQwiQng4cnhvAeDPC6KDzMXUSKnw5ToFQC+t?=
 =?us-ascii?Q?QREx2XU/XcA6SuHfM8CiBw7yhNpyVjzxGrnD9NPOPF85YtfD/71NsyWRlRGQ?=
 =?us-ascii?Q?BPtrCyR9ISk1EOyd8I6sDRtQHpZNmx9iTLHQs7Bx155/0bnMjfx8o1krygv4?=
 =?us-ascii?Q?6WJik7ogenwd5fad+AexDGJKzghw8+HyCaARVcYibl/NC0dWQBSq9bvk5eFl?=
 =?us-ascii?Q?JakPSQ700LSYWxW725lFgmNKLdVWw++7Tc3DZu7hRa9p86IbGfhfwWe1UE4N?=
 =?us-ascii?Q?TjwYnpyf6YlUlNR5EnrZbh3uQoQVJUXRxBpG7/e0G9NM0kx/sxMNxGoku4lx?=
 =?us-ascii?Q?pi2z/Znf2saQBXCuG6u70gJfip6LxETIhZR77cPTic729TCAcMpgqFD11tLk?=
 =?us-ascii?Q?UyHEs2qUfww7N0emnmlMiR7HlvAQldm9zBI0jkGeNDCOo7dloX+axJSaPKbJ?=
 =?us-ascii?Q?cx9lWmeKUL3SF8vwT6KStkGFRnXIU9eIImsoDZ9uNfw+r5pieGs2pgyXyr4a?=
 =?us-ascii?Q?R1BvDczyfoR2La0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oSQWLyIdKYg1nuzK7LOFYsXNZPtBJp1CxptA6/dsZp2HXQgnojrYiQaoQAHj?=
 =?us-ascii?Q?qIiE+RCUx7+J2NXTbz2kpqTCSaDz7IJEAOZpygPWmdzjolFBqLFLkAYVIWxM?=
 =?us-ascii?Q?RTFWKfMPpP2nNa+3HvBv7BCmXNDSi19FEprnfE8WV57bhYtjper4ZaTBOqy1?=
 =?us-ascii?Q?G81kTejIY1SQMwX3l8mlUEwI/j020XCpWq8cWeRXVulIdYcuTJq/UICtjFjo?=
 =?us-ascii?Q?X9HiwIcplZCZzoO0Hjl42LcnuZSy1F9JIr4shpa1psFV0yh6Xc4U3oQlqWk4?=
 =?us-ascii?Q?z3OEnRWLSwkRE9WwQ9AUmdx8qetK2D4tzrpN9f+qSsGEl6S4kS+nPHWbZbRe?=
 =?us-ascii?Q?jvRKHMBicNUkyApmiIKGZr2QKIS5qMNiVoRWKyDyhoHBAIo2F53wJtyRdMAD?=
 =?us-ascii?Q?Yf0RAVyhr06A+wSneptAKmlYUINvbNwei7aBa+9br1gTXuI6+eJ52ix+QxQT?=
 =?us-ascii?Q?t35Ut+INi9dDvj1aQwi1Xd6U0GVmKWRjvuVfkXStPAI9jKYDRBDJ6tGSnS94?=
 =?us-ascii?Q?023rDSoBQnqpeg4jciHEBZyuA+ZoYV17dyg4f10C60ZFxBiavcYyFNsyxjZE?=
 =?us-ascii?Q?lKj5Vf15A7wz3M4X7nAkSqwMcijNdsllGVBF9jdtKCfwExOtZmcZAWDRy5wc?=
 =?us-ascii?Q?+83KfN7NscC4gAJ0ZUAEiIG9xyN7F7GnZqiz5BwtK/uXOWD1P7swYSNOXtlV?=
 =?us-ascii?Q?jXSeaozEpTZII5Urf+ZGH+0Q1NRGyOhalgaGeXpSVny2kN9axMrYffwsshHa?=
 =?us-ascii?Q?MkGDlbZbIajifM5FDMVlhnPTcn2BONl+WdRdkr+Aotb3VUBUgL4QzCHVPoen?=
 =?us-ascii?Q?ID/h5o5dLZ2BXKFrpyWYXsfYvqBwvSuWlJlqVS99mDG+fwsjrBDAbbP++mps?=
 =?us-ascii?Q?zGZRpzb53M16RU9d+UnPNwKBjD73EemKYNTmXgQInAyWZN4KNJ59NBpUq8Fn?=
 =?us-ascii?Q?oIwNmkmkZSXjOBm2p3cWH+ZTdrwL5t3eSYt3JNckDsfT4UGzFpM97zBO6a6q?=
 =?us-ascii?Q?+VJ2OTz3oMLRJBmjeLhqb+SQOrukMLOZOT67q9LDytewG5YpMIznbU/XJfP/?=
 =?us-ascii?Q?i6Kh5cshZXGjYccR+UXmcA/TDZraXPRJdJSR22OhTGVToSwRZ20LjcBvD4Ox?=
 =?us-ascii?Q?4ndmznvSciIve5DPuR/mEPbCRgTgWTPHAgXn9hkXvgVdKeBQiW/vf4myaB6U?=
 =?us-ascii?Q?PsQpjxVqwQL5zd+YSaIuomaEI8IJwDz2Wh7+2RFi+0ur5/9f8Th98FlUeCO9?=
 =?us-ascii?Q?bUDH5vNImcgZdZnXLMA3Z6DWjP4wQsVjID6n7Ut6BOkxf4XSTyw4Jt1+KGD1?=
 =?us-ascii?Q?Uvipimp4hdHSsHnUqJQUfWt2ehN1nfv1GX9iRlwIV8QdqVEAxWCPSnpkV/4i?=
 =?us-ascii?Q?XSrYXNBl2qCwbShaD60tDhN1WRBf3by8nE7ImbC5akAW07mVLC7MDb3dC/k1?=
 =?us-ascii?Q?Zdwh4TStJCHfXfcpNRaJohqKZFIo+Fsv3gM5i3X9YtpeOnP4sRQrp5D04Mnj?=
 =?us-ascii?Q?0pOAYBjQnG1Af3UHsKwr8r4GLUt5lGkiyxeLdZpS6Oh8CGnXm33nBl9pzKQb?=
 =?us-ascii?Q?IQdq7d4B8MlU8oDyxQTXYcfkeMGrfr+gcbb423nf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 309af2fd-458e-4754-1604-08ddb95237c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 10:21:33.0132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZL9h34LHZcxb4EXANMbcEW0UFPTOBM8uVNIMcJ6cHk+6fN4NthAPUdyXhn6XxKpk65vC0RTuNhK7z1c6maBp7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5762
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
> Sent: Wednesday, July 2, 2025 2:13 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> ville.syrjala@linux.intel.com; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range handling for=
 DP
>=20
> On Tue, 01 Jul 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> > RGB limited range should be selected only if explicitly asked by
> > userspace by the broadcast RGB property with LIMITED_RANGE. This is
> > mostly enabled in case of CEA modes.
> >
> > Display port by default uses Full Range, fixed the same. This will
> > help set correct MSA information for colorimetry. Fixes a CTS issue
> > wrt colorimetry.
>=20
> If we decide to go this way, the commit message *must* capture the histor=
y
> precisely, and not pretend this is the only way and everything that was b=
efore was
> wrong. And that we're primarily doing it to pass CTS.

Yes Sure Jani, will include the history and the spec changes in commit mess=
age

>=20
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++--------------
> >  1 file changed, 7 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f48912f308df..8758b9d60d5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2708,8 +2708,6 @@ bool intel_dp_limited_color_range(const struct
> > intel_crtc_state *crtc_state,  {
> >  	const struct intel_digital_connector_state *intel_conn_state =3D
> >  		to_intel_digital_connector_state(conn_state);
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -		&crtc_state->hw.adjusted_mode;
> >
> >  	/*
> >  	 * Our YCbCr output is always limited range.
> > @@ -2721,18 +2719,13 @@ bool intel_dp_limited_color_range(const struct
> intel_crtc_state *crtc_state,
> >  	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
> >  		return false;
> >
> > -	if (intel_conn_state->broadcast_rgb =3D=3D
> INTEL_BROADCAST_RGB_AUTO) {
> > -		/*
> > -		 * See:
> > -		 * CEA-861-E - 5.1 Default Encoding Parameters
> > -		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video Colorimetry
> > -		 */
> > -		return crtc_state->pipe_bpp !=3D 18 &&
> > -			drm_default_rgb_quant_range(adjusted_mode) =3D=3D
> > -			HDMI_QUANTIZATION_RANGE_LIMITED;
> > -	} else {
> > -		return intel_conn_state->broadcast_rgb =3D=3D
> > -			INTEL_BROADCAST_RGB_LIMITED;
> > +	switch (intel_conn_state->broadcast_rgb) {
> > +	case INTEL_BROADCAST_RGB_LIMITED:
> > +		return true;
> > +	case INTEL_BROADCAST_RGB_FULL:
> > +	case INTEL_BROADCAST_RGB_AUTO:
> > +	default:
> > +		return false;
> >  	}
>=20
> That's just:
>=20
> 	return intel_conn_state->broadcast_rgb =3D=3D
> INTEL_BROADCAST_RGB_LIMITED;
>=20
>=20
> >  }
>=20
> --
> Jani Nikula, Intel
