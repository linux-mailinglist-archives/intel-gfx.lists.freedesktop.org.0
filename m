Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52838900D4A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 22:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9054910ED04;
	Fri,  7 Jun 2024 20:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dEWmpvhu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8656010ED04
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 20:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717793974; x=1749329974;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B+40KLjYr19623L1OUGy+c6mS74UNyftUnyyKMI2UX4=;
 b=dEWmpvhutW4q5MY8yYE8CIhnZkbupOS584O77/dMfDqtISBl3TnlLcHv
 UiOs/SH1k7c8NdKTKcndZGIL1QITGKpZG/8Ck7r6edjjMOnEYduXSrq3I
 SGZhW6SwMrbr+hRbG5qDOyxHwafa4AiVPdlsyUX+ycwE75fc9iSJ++5Gk
 o2lmpMUbSbzUe79lHCRooCBRb5af0lfmutgzDFwsL4AxwS+twrv72K905
 OG3/iPGTnWc9fcVL86FG3TpijAE/iredLUGVvdmiI+z/cPBv1VkNHHhaI
 neEZr9cj0pwaZOissWxkRgqOV/XEMKEhga2MzTEECx+P8MZM6hUr0vXfp A==;
X-CSE-ConnectionGUID: Prmy8OkDSWuCyC4tfjXuPg==
X-CSE-MsgGUID: WH2v5lsZR8eOR0ec9toMiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14714934"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14714934"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 13:59:33 -0700
X-CSE-ConnectionGUID: L1aqz4OuTXeu5OpFnMHUTg==
X-CSE-MsgGUID: bXTu0x5BQUiRyuIFkjef6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43569183"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 13:59:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 13:59:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 13:59:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 13:59:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dt7Ai2+KRYMhbJHmm5HPF6oAuGLHKQqHdOHr9tokF7K3y75USFdxjHZqAW1AKXXYBE7Hqerjt4ikLbAxGiqnYdCfUaUuco93prRARdG+H/Pdl5KxXIhw8V/x18c0JzpW9Q6TUlFheWfGMBMVkKw3M/YNkn+XbuM1kJ8wPV/jZoPLAh72cwtZYOLKvXNXuNU6+G7ntK9XSt1/wIU9JcKYmff0XzNTuCTqe2d2NudNu4/M1ZXatjD5ONO+U+WawoDJtaIqun1vQG3awQpSYfzHCGWc2lFk/5E6o+h4E2JLbrrBXz3DQ1v3kkZpcSkYEz9oYjOYGBjIEr6XKgTKg+MC7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aox1yiM5mIJtGL/a5nso7BLu0Vi6YjSB1XyrNqaO5Pg=;
 b=TP68ZJTtSUXmKrWWauqClVnWhceuY4CxMA0TzauoFMrx9AAQ2a76hLbNffGEUnMjisTg6iJvsb6ZhbBw0DdiVgM7q5cAVvGRIgoZ66sQyDzmdAN6cY0+TyYKp6RtqiRF9CGK56dN+ruMlD6Pb//BUSzrNyhH3GLaqPkirAaSDVZ9ICEK26bhAfUqG7LS0kOG7d2w5Bd6ILgiCG239jCPMmj0PXK84/gP6UFfPOcL0RCfKO+zvK1htLb9ZvBgGuhJJ3HC8R9XQZTUxCSbzVlNrYcLrdkQ4GZvIb2+i2E1SBZTenxQRL00uHsny4QJYoo/w/CBD+ZQSjUqddrXaSzl1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.30; Fri, 7 Jun
 2024 20:59:28 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b7af:93f:f33c:20e0]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b7af:93f:f33c:20e0%7]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 20:59:28 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "Vivekanandan, Balasubramani"
 <balasubramani.vivekanandan@intel.com>
Subject: RE: [PATCH] drm/i915/display/bmg: Add platform descriptor
Thread-Topic: [PATCH] drm/i915/display/bmg: Add platform descriptor
Thread-Index: AQHatodsjhV7JnoWdUmJDzAnbBi9NLG7WwpwgAFyxVA=
Date: Fri, 7 Jun 2024 20:59:28 +0000
Message-ID: <DM4PR11MB597133207E741C468B6D265687FB2@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240604140021.1357502-1-balasubramani.vivekanandan@intel.com>
 <DM4PR11MB5971D226ED147FE641BA3CA087FA2@DM4PR11MB5971.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB5971D226ED147FE641BA3CA087FA2@DM4PR11MB5971.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH7PR11MB5794:EE_
x-ms-office365-filtering-correlation-id: 04036473-00f7-4b16-4528-08dc8734b8b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?+h3R4G0TP1T5vJB7gTeDhBOGeYvlFC6ErDWw8VYfD7el5YpVcSQbE0QzZ6gS?=
 =?us-ascii?Q?IKUr0v7Udd8iVREVhBkbBV6oZt6WLBXy7rexTWYRCplOLQPYhvPnV2xa8OxF?=
 =?us-ascii?Q?wN8DmyND263znfmIdkia3kzCRlO1131pXzZzGb3P7MAqHrrzltFr5cuRbPDJ?=
 =?us-ascii?Q?4W52sXnkTkNeTdj+fOBgt7g6qr06GOsO/19fK8Qk/rAn1V8GUWCqws+StUi9?=
 =?us-ascii?Q?Whi2WF0511YBQKUa6Y1cljhDUHDYJd70Z9pYROMWixucfm/82PLVit7DkV/b?=
 =?us-ascii?Q?aeYwsX+mRq6gVEbGXVWEta3JHnPbMSnPUpgcYraEOtkG/54bblCJXL6Ir//3?=
 =?us-ascii?Q?Gdh2W/qZjl4A17Ymn0JbOuUqAXRDFPDXOSXsSAW/rY/HGlFDJJ1xhcNRmKxf?=
 =?us-ascii?Q?zg50qf0ArwADb8WYacRtWjRU+yThymcVOVDXatasMWNMyUkI8xg8FG1oBv7i?=
 =?us-ascii?Q?pYbH4X+TFKlPqNI9PXzIAYVOaqLHNJCDygcX56YzyaFpBpknJMcyLnAsmlvn?=
 =?us-ascii?Q?HjAwKDwDHaX5SU4JD3ZRcsYiyspwTjRVYVibP/0fgOlhn8lk2eR9W0jbK4OL?=
 =?us-ascii?Q?N5vjZy1O1/Fk45ru072HaMdM2RH7HIPhBkKdwuevu93FyHb31Dd91KtbOUPu?=
 =?us-ascii?Q?KKUNio9RfLSDpaWxubCjN4oMza7EleJA/Nao0S/vOOJVKuSDjqmPIE6KFVBp?=
 =?us-ascii?Q?LTNP9Jtx3hhwP2IGletjlmYsKC9sNVnM++mIXMXKPr7WZC7eNLP3tDQmNl70?=
 =?us-ascii?Q?CSOnnLtWcFwI9fB60n7sj4Ayt2oNVke3R5ZiZGQAnR6ml5kxMYAL+jfFEK3c?=
 =?us-ascii?Q?dmIuctM/1jd6FVz8Xt9DVcu0EzVRQN2uN29s6dIqR+OTrO3t1EkUUd1unxb6?=
 =?us-ascii?Q?VcQt1yBsA4BdzbkN625d3VigG87BqvzWIjxwYZVz5dgPhmKjmR3s5qeWTEf9?=
 =?us-ascii?Q?YZ9ed9K2TJ2LrGNlh5MFGlqeIID2L82UOfa2x5oyrGHzpl7O9WfXGIdXWvJl?=
 =?us-ascii?Q?QXxA71j1Wd1LLGPGv1AnwnXq6k80vPZvVLLZiS+ED/JocBHEfDXucW8LyJ3B?=
 =?us-ascii?Q?6cwSKIl5WA04xQP1iJuJIReeLYbAB6t5GV/VH37SVDKYeZAjIGxKEMoEQz9N?=
 =?us-ascii?Q?42feFoUCgcI91rTF66RXb3Ne8OtLSiKlnWU3zQ31gLrps183fHfQQUCVfMV/?=
 =?us-ascii?Q?GrAL6u73z3Envqw6VC1XhiZl9zaD0lzbC+utkIJ0f4ni1UZnX1vgEMwSDOYC?=
 =?us-ascii?Q?ZSuVPU04dyaWKH1JYBRA7zKD3gskD2EYmbjxEiNrK7khEOvRC3vYBZycBiKn?=
 =?us-ascii?Q?U5AlNk2H3HzDzyK/NSv5Tj2+nYGMWp8phG4SYnxg3QCzcftEhm7JuLqK8gNd?=
 =?us-ascii?Q?t7BVGLU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L6jA7KNw0AjUNRRE3mD8hB6TRvfcOqgkvJjBRTOc6zko28Yh6LaKRu320Kk8?=
 =?us-ascii?Q?zGv9ynxeQLHpV2pqiw4WN1ktbNJH0FYCyV4O3qNY61sAF7QvzJQFBXdyrxxe?=
 =?us-ascii?Q?5fqiuLJNFj9OU25LRrVP2Wp651rP97uIN+rV5K36Uv0y4nZi+zl/3+R31oDX?=
 =?us-ascii?Q?J71Zqq0K2JVv0vyyncH843Zf7r6zG1a2H6hdih/zHwaeFrsTiTwPDLyIJOCA?=
 =?us-ascii?Q?Db0Uw7uiM/g0EloqkFNWpjyFirBJtdXWzR87Ky2Dtgb+5N1reV6R3E4/8wDr?=
 =?us-ascii?Q?/PmNZN6ngMHbR070d6pzdf6owmB8Q0Em4pYAByTIPS5+Q4cKElJspL7GvSv+?=
 =?us-ascii?Q?JkbjIF0NO03Ngl0PcAXKHxjby8BtqVpJzl1KfaZcrYK2nO1f225lv/3OUDIn?=
 =?us-ascii?Q?coVuPnvKghWvwZ4KZGbDRr81Fy7xayafap02Ui/6RUAaBpyVXg6Vh3NrLORU?=
 =?us-ascii?Q?r8BeAOS+7HD7UrRCxvOCy0g4BHJCrsTbfMjr9QQYLm5KUEt96KjWLR5kxalV?=
 =?us-ascii?Q?1QzG5uekKe/+kinjRS00gp7yuHEq9mdGWT59bpT5U+VEfUXR1NLhqEi+8mEs?=
 =?us-ascii?Q?d9+hy9Ruj8CLEtoTB31RjEj8h4xfu7LO2b0URXAf2Xu65szYFT7yaGOA7HBs?=
 =?us-ascii?Q?skNdjCvczhLHv/IeA2jTFM5bwAd1wE4VQurMILia6UbPbw5Ayuon/fxvrU7E?=
 =?us-ascii?Q?gl5G12J8rlrXQyx/Q6ojt4TUZZHYsaDHfazqjIinYP9cPpilzkHElZCKXlgn?=
 =?us-ascii?Q?YSUztVUjsH2XhOmBm+rJZ0EoGQJ5RzhrCbyIQLuWLTuQdbo1zEA/zcTcbhqR?=
 =?us-ascii?Q?ICNbIyOETpDyKSovumruMwsoO7Tamshi7MEEDWkElpRt5TnQ5qQSL7f+gDTe?=
 =?us-ascii?Q?G0z74QG+93yS/KENE1Fq/ZSAnvPQYOnX19Pr+3xUsoXeBBNjbpSmPddI7e6v?=
 =?us-ascii?Q?mCgljdMjKj2x/cwGS1SJRZFodSqL+ox/bYAsAvoU5URuwtaXb26dT6lbmAKH?=
 =?us-ascii?Q?yylYsPIAK9prQtm+W+IZIXryXUSeeNDIUVVc0QhAzMgkHgtgo/SuKdDIJUc3?=
 =?us-ascii?Q?nLoBE7p0mIWg/5tPKC5puqevFXsEJ5zawzlxdLZPoGT9KUi0ZC8FLU9iBntm?=
 =?us-ascii?Q?mXf8xgnxPxMLRXwkQlyaCNjfNsc9JjXFsgB24gYwWicyQsNxbnpDs74AFE2+?=
 =?us-ascii?Q?xgkdI+nQ9I/FX9l/jwQ1tfUk97rNSs6u2H//879/OB+ndbay3MZPpT3TQdcy?=
 =?us-ascii?Q?iadUQEOXeLHefy3IyKmrpE70LgP6eEVyblfLXcEeToae4mwMnWPaDN/oui4G?=
 =?us-ascii?Q?am5rLGXwqMYMaAKSsRNd+59Kr23G5oyyoc/MDNCFmWX/DqKCcKIxaSaRiQXU?=
 =?us-ascii?Q?HMO/FbHtCd/XRGJKx64+LVT+evm5SGJLGfBDtcUOrN6FCnUyvZV/WHYQBFwe?=
 =?us-ascii?Q?Hfvx9dw3OczFBxsHEBsE4Hzy9/r/caIgBYA9d/twOX8sk7DXNbGh4duFFF8g?=
 =?us-ascii?Q?Fs0p69VEltXbEF3G+XWemKy/rh0JHo2gtfTu38pb8UBTUNcwcEWT4MRWl4GG?=
 =?us-ascii?Q?zQQR8bPfoY/E3uLUwTSL5ewzn7vJLg6RgDhokt/8SCPEL+ylEDJ9lC2Fif/g?=
 =?us-ascii?Q?fg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04036473-00f7-4b16-4528-08dc8734b8b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 20:59:28.6449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: khLwaN2UHWQXV79INz8bA37lNo2ALXKEQTNKkHNf6P3EJPxo80sE+0gFI8ou2zRyEvknkYQgPUmpnIX5bqe+hY2vyfO4lRZuqlQ1VrkIWPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
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

Thanks for the patch. Merged onto drm-intel-next.

The CI failure does not seem related to the changes made.

--Radhakrishna Sripada

> -----Original Message-----
> From: Sripada, Radhakrishna
> Sent: Thursday, June 6, 2024 3:54 PM
> To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: RE: [PATCH] drm/i915/display/bmg: Add platform descriptor
>=20
> LGTM,
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Balasubramani Vivekanandan
> > Sent: Tuesday, June 4, 2024 7:00 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>; Sousa, Gustavo
> > <gustavo.sousa@intel.com>; Vivekanandan, Balasubramani
> > <balasubramani.vivekanandan@intel.com>
> > Subject: [PATCH] drm/i915/display/bmg: Add platform descriptor
> >
> > Platform descriptor defined and PCI IDs added for Battlemage.
> >
> > Signed-off-by: Balasubramani Vivekanandan
> > <balasubramani.vivekanandan@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
> >  drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
> >  include/drm/intel/i915_pciids.h                     | 8 ++++++++
> >  3 files changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> > b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index b35422da7f6c..dd7dce4b0e7a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -1110,6 +1110,10 @@ static const struct platform_desc lnl_desc =3D {
> >  	PLATFORM(LUNARLAKE),
> >  };
> >
> > +static const struct platform_desc bmg_desc =3D {
> > +	PLATFORM(BATTLEMAGE),
> > +};
> > +
> >  __diag_pop();
> >
> >  /*
> > @@ -1178,6 +1182,7 @@ static const struct {
> >  	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
> >  	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
> >  	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
> > +	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
> >  };
> >
> >  static const struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index e1d9947394dc..44cda6c3e4d8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -68,6 +68,8 @@ enum intel_display_platform {
> >  	INTEL_DISPLAY_METEORLAKE,
> >  	/* Display ver 20 (based on GMD ID) */
> >  	INTEL_DISPLAY_LUNARLAKE,
> > +	/* Display ver 14.1 (based on GMD ID) */
> > +	INTEL_DISPLAY_BATTLEMAGE,
> >  };
> >
> >  enum intel_display_subplatform {
> > diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_p=
ciids.h
> > index 7ae7ee11ef38..b21374f76df2 100644
> > --- a/include/drm/intel/i915_pciids.h
> > +++ b/include/drm/intel/i915_pciids.h
> > @@ -789,4 +789,12 @@
> >  	MACRO__(0x64A0, ## __VA_ARGS__), \
> >  	MACRO__(0x64B0, ## __VA_ARGS__)
> >
> > +/* BMG */
> > +#define INTEL_BMG_IDS(MACRO__, ...) \
> > +	MACRO__(0xE202, ## __VA_ARGS__), \
> > +	MACRO__(0xE20B, ## __VA_ARGS__), \
> > +	MACRO__(0xE20C, ## __VA_ARGS__), \
> > +	MACRO__(0xE20D, ## __VA_ARGS__), \
> > +	MACRO__(0xE212, ## __VA_ARGS__)
> > +
> >  #endif /* _I915_PCIIDS_H */
> > --
> > 2.25.1

