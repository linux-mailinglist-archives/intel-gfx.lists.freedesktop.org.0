Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 466CE8BDE6F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 11:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E0F10F245;
	Tue,  7 May 2024 09:35:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vqrdvvxn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87FD810F245;
 Tue,  7 May 2024 09:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715074552; x=1746610552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ew0t4N0h4svqrriSxNo0sVahd1Pb9JGtFqE8oE80vlI=;
 b=VqrdvvxnB8PopEFpaIC01Wrr00ZL34S6fNYixMIaPjV3ymc+WzLkCvgM
 9eYwCr7hYLfGkZzFcw4WHeCX/kYhnnrmV/3qXUoXDuMU9Ex0eeWdJ/DkW
 BuuCXDDm+jfX6PURuCUPrsiAAi750H6+Yxrlu4Ko/cIWS6O2erAyJO3Zj
 YEqplFOSnl8jQcyo4NsEmHLJtTFHz6RAHuQL86Yxn1uKZv0ocApHZvzb2
 Xou/YeRaE6mULOQgjIkoCPcR5tP1Ey1lDKqZO+Y1z6nAYpqXeyN1oM8ht
 vA1VQIlYrhuaYPu1btdheuKCTYCkjwYyFQEEsRVMMbVs+qR9CNpXnr2fg A==;
X-CSE-ConnectionGUID: DnZ/RqN+Scm28RhzZFKg9g==
X-CSE-MsgGUID: TrFcOolaSB+ajJV0fBoTgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10695239"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10695239"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 02:35:51 -0700
X-CSE-ConnectionGUID: JjyiNrzfQyCgfToxST9LLg==
X-CSE-MsgGUID: KNlow/Q8Q/q3oiQXLWG98g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28429328"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 02:35:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 02:35:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 02:35:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 02:35:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 02:35:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyn13j/kKDg1yR4P9SMw3f6htwbgN241M7a/MuvkT6ZW2jC8PqYZgfOxyxclphw/ilA6P57E+c5gxOvhZBv9J5UiXVPWMc66uDbtak5l17Y+fRlaj/g/kji10LJWmn0sFJYuVWyDskFpzlEi1yLHC5VDjlDyN7vYvLY1q8JOD6ae93X9NQbXL2Zbyy0yhE7ClqzT+Tvl5s2GdVQsSpZ7OwI2BBNkuu/s6xvHuqeOZKjgBE1BDjiIF4OtjwyHnsI0Z1DcXGkkAv8s79fZ9i0CODD0/feP4FjBdizGr1Az/3yn+nIvV2dRS4pTWShH/JJQ+t+cnV6b70IFIXuKSddAbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X+nF2L9YaTfEawGoOej3NfzwiGreyZYlZ9t/ZHyiXBQ=;
 b=h3WhyJLO5qFwO+IvoMkPs3WIdZVZ3kmvxjdaBogfN+x+bqUm71jiRGkSAZRAOpSlKkuW+RKuv7+CBx+A7bwGZVxXogiCA/nwBN5dTp9XcYbJoONTMeqwHb+8mhZ/I9lVIO4C3891/hqLsZ8M3vLv7V3weKDZz8rfzedZhe50GvyNO+uZ7r7q7KtZ3hh2j5N5jdE1/opCq7Nr0BwMlDF9ZHMDdH6NyzhPfpE4OSGxQ98NVjQQAATpolyt0OA/6TBubQNj9RTkfkzcbmPf/chE/qSfUB6ZTAwDJPqU+NLxHa3lDjYrqYKhsTLwZ5X0I4dMUHCDUfNeelOLNlZGYFO6lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6189.namprd11.prod.outlook.com (2603:10b6:8:ae::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.41; Tue, 7 May 2024 09:35:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 09:35:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [v3] drm/i915: Implement Audio WA_14020863754
Thread-Topic: [v3] drm/i915: Implement Audio WA_14020863754
Thread-Index: AQHan52a8JXy0ZpDekOygeoIFZXdurGLbtOAgAAVj5A=
Date: Tue, 7 May 2024 09:35:48 +0000
Message-ID: <DM4PR11MB636096D6889D350A523E28D1F4E42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240506101817.2590328-1-uma.shankar@intel.com>
 <SJ1PR11MB6129D96B9ED77A6282BE8A27B9E42@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129D96B9ED77A6282BE8A27B9E42@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6189:EE_
x-ms-office365-filtering-correlation-id: e67e495e-ae9f-459c-ee9d-08dc6e7913db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?FvM8vTMCM8lk0UO9MErIA95EqQcV8l7Ssz24ZkLEBdUnM6X0FcAgZd6z9sUR?=
 =?us-ascii?Q?YOqQDn67w6HNG/1WGCs2+9odcGxmWFFvjJNsKJsbjml9eO3EJv7N6G7gxc4g?=
 =?us-ascii?Q?Zugzlo7TjoQNkSICp/v0JDkYGWJ4ASgN8MmjLwwwYV7vXslMLCdKz9AJlfGk?=
 =?us-ascii?Q?IEPAyjxbKkRHfbsv2HusFPUiJWaQsEJMIb1IfYwKWtBTfEEuWxHyCagGuVK+?=
 =?us-ascii?Q?Zu5DhjCRe6lNoVLIKAoF+0yY08kDxSVA8WUDLTr601E1VsfEBm8rIZklUVoG?=
 =?us-ascii?Q?GOPSbMNjcq+JWANTbc+jhK7p/j9OOlvj3kjfI9jYNUAwD7Ne17HfD2ABAzen?=
 =?us-ascii?Q?7FmiyU0VQiCQdNepaJDOov0/hWfTcycmRQg0V2SczY5PfXgFv+LaoGDFhbc0?=
 =?us-ascii?Q?5s9d2I+y/X7hNQuIwD1c2JM/COMYjhOlMmHsfkbMTTRBy1DvPPr15maXQExw?=
 =?us-ascii?Q?LIkKNMyhLJgqv00wRdttrTGY9g7SrFS1/wdEdx5/JJ5ZgxBi3sKD6imHFQsI?=
 =?us-ascii?Q?fTEbcF+8IzkVgZRSe30gv9hOVq4YPoWYJxTsxsrUYVQwmxy+1duIa0ayLCsN?=
 =?us-ascii?Q?Cyy61uWaq/ClUyvnK1E1y5dN9vD1Hr4IeFm6v4ewfrIw9/DISswr5sG/Vfjs?=
 =?us-ascii?Q?Mf1Z8DuYhKcnuiqqA67vhvBDDTmeB6St402EJ33KSWP/az1B5l/7azQnkH20?=
 =?us-ascii?Q?7RVKi6SMROX0Oj+uyjgm4ppLtnX8RdN+tHeZaYeyOHB+9K+bsisy6Xj6rWLw?=
 =?us-ascii?Q?pYUprzlEymn7Kon1ipiFauyvBDwJ1f5Xd0Dg3KwoZUwaHz4F0GF2n8zI52Rk?=
 =?us-ascii?Q?mtGdaPkGz8AHH6GnMREBhReowXGf0CX4yI21QHqaySAhlKYRwjImlfJDO8Ck?=
 =?us-ascii?Q?3UinLS5rtBPaR3sS9tedkobEp/snWPtsIsfipa8S3OZ0VZ6owwzYeXtVuBCI?=
 =?us-ascii?Q?SppxljhM2pti4Sj/QsCtInLgdqDqS5E+uDDelZRS/aig7253zOkZbSzUYZwm?=
 =?us-ascii?Q?YFQkNbVmBAodxOVvL4m1ayg64+mG4j1yt/akTbAQjvAEpiagnhDZ6By/IC7p?=
 =?us-ascii?Q?9PCwTzkXFU1Gz8qwe+ZWgW5CJLX0x4gEub88djtMUhocffoZc3bpIsZ1ToAN?=
 =?us-ascii?Q?fqH3Co/9nsbIbV/6NEFFGUPuJ4AINF8FMWMFhppSK+FyoMvVcdIgBXITXo12?=
 =?us-ascii?Q?i01eV4KutlzGOgRqkkTUFUrgOgYOnG3F6EyiimTBttiAk1KiQ0K31HAygKKG?=
 =?us-ascii?Q?Yvb2Uy4LG/DdbmhzPY6mgdGNkFjbDY+W8WNP8qTytRm0/pvpYRX/ajYAFlvR?=
 =?us-ascii?Q?rPrVocKoxWLal/oJ5jsdaokFk6PHWdhSjU07xLjQnKdItQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Si3XAYnpWRfsGR0UsN/CIP5iAnactCyBn8d55gvtWPEfpaxcV1k3miqiSHtt?=
 =?us-ascii?Q?ObsZhzQsnroVbJXFW209lzbZcqdjlKDz7BH6v2XkgyPFdUuf8diEmyNb+S3N?=
 =?us-ascii?Q?x1SmQEWUajfcF8b5g550dwDc2qC/MHmIgZcJdHj8phO28T6Fo38Z5DQ8z6M7?=
 =?us-ascii?Q?9s4IfJIu7q1Qqez3irZFJJcjX8kASlZd9/VflxLheRJl6/LVjhJ7xq+16349?=
 =?us-ascii?Q?py9Mn+qxJPHTCsj+iBqHuxfv72/c+YOPYhtTKBHYRqIPWwkuF8UUTr2JsAbz?=
 =?us-ascii?Q?tWjSQaNL6NYzBL/FxXpft5N7IWjceGJLh2e1HUiVCA1L/9N538F0cgpGzY5g?=
 =?us-ascii?Q?MPUaC/CrgV6FTkkPkgGBhmj4tofCPXEtR2WywZwRrakBw2LOz/iAQeoV172l?=
 =?us-ascii?Q?izVChjnJuOblMp4CIl8gfTtdPe7ZSOXHZS+dszpbst3pewhvx3XsJ7/yb9Gq?=
 =?us-ascii?Q?uSlADq696z1l4ZXo3OSaHRNYun7+HvDTBbfs9NKxTD8ZamHXRTf3pbZ/fXcN?=
 =?us-ascii?Q?31cxY+uEZQbAsDbXEN/vja8XY+nErqTMPXcAoVCOB+eYowxWILm68vL/Pqjw?=
 =?us-ascii?Q?aIJP2D708qmOeDACpd7mzK0DmOyr+A1MpCZ6uhoctB6YKieeZYrDVUhze9BC?=
 =?us-ascii?Q?xPLmX/+ZSMRb8xg6TO0jldDTN4VMKdcm3JS6GuYsIwzvjXsmpE1ObyY2jat1?=
 =?us-ascii?Q?byxEVOQvJ3h0c5tp3evj+ogSMNJkQS/10q7qdjWlfxd+MjjNExXT//RTDhbO?=
 =?us-ascii?Q?oTbCoWwkkoHLPM4/1Kaj9QJ9Q1HCSTvXtrD6y2xAMiV5FTfXZdSvUq7ZPrqY?=
 =?us-ascii?Q?enuz5uk7PS7Uwj7H/5md7vSEpoXuPp6jqIvGPMNJOqNcFlZwMmttac0ZdBEM?=
 =?us-ascii?Q?HymvDYNN+VLy6WAtSalTYttX3/BUTUyn86nxrBuOphkoryPY68BoJ4m6q8Gm?=
 =?us-ascii?Q?UZvgTk6g3zSdv9FhBLAyUHd0KY91o/MlxqUWuDsfEfitau7/YJa2MQaFJITE?=
 =?us-ascii?Q?glHQPWB2BWTS0UHjvPpOjPFL0ArXZguKxMq798ZN9hbrO7quif0Y58wTHYKU?=
 =?us-ascii?Q?1oc6sa63LVsuA8PhsiDuHRrh2yhUWczX9uAfXy+F1sUuYFs0n317wQwbovEG?=
 =?us-ascii?Q?QZJz/IQP9V4AgIQRBpZg+9EZHfw/sbjFZd5b/YiFwR1EVz6ZGcYmFl0rdm18?=
 =?us-ascii?Q?TEZH1BdLGQc6yIN4/tZReTWAdDCSuHSt/L39PosAR71Q/G6aUbBhxq8bGkKg?=
 =?us-ascii?Q?NSVcLSjpeqddV5AZdha1+BIq52ucFy2htW7yFWTm6Uk47fqFrMMo2Wa0kLg+?=
 =?us-ascii?Q?K5voUxkI4CuElaiAPjL62yMTwYd5Kn3hLT/cD8f98HEJdRcqGbi+e0rwhC5A?=
 =?us-ascii?Q?qwrcxSZNs/Ojgz+ic5llcksXbdjdXY37NvKixxRYi/u7PgTDIUDbuO11miJ6?=
 =?us-ascii?Q?DXc/1tslEcerVbw3VE4hOgizyIrG0xc3xXRD0zeRQ+PtRj9cD72V3cI0f8FI?=
 =?us-ascii?Q?OwCqLlYmewV7poeZZ/6r71EpK+QRiOQn5wSCRR7YpESbmaTvpM06ghkX5J2Y?=
 =?us-ascii?Q?mvcnNEMs2nPAfBWWG2hA4HX2iwnPII2Po4TkPpdM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e67e495e-ae9f-459c-ee9d-08dc6e7913db
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 09:35:48.2752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rdNRCXe0cw09Ob2VE8QMPkoS//hNcRs7egGTHYrDD6hjFrY+3K/YK2COT+wXuctUap6XU2+2HFYAPnYpM4GuVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6189
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, May 7, 2024 1:48 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Roper, Matthew D <matthew.d.roper@intel.=
com>
> Subject: RE: [v3] drm/i915: Implement Audio WA_14020863754
>=20
>=20
>=20
> > -----Original Message-----
> > From: Shankar, Uma <uma.shankar@intel.com>
> > Sent: Monday, May 6, 2024 3:48 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > jani.nikula@linux.intel.com; Roper, Matthew D
> > <matthew.d.roper@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> > Subject: [v3] drm/i915: Implement Audio WA_14020863754
> >
> > WA_14020863754: Corner case with Min Hblank Fix can cause audio hang
> >
> > Issue: Previously a fix was made to avoid issues with extremely small
> > hblanks, called the "Min Hblank Fix". However, this can potentially
> > cause an audio hang.
> >
> > Workaround :
> > During "Audio Programming Sequence" Audio Enabling - When DP mode is
> > enabled Set mmio offset 0x65F1C bit 18 =3D 1b, before step #1 "Enable
> > audio Presence Detect"
> >
> > During "Audio Programming Sequence" Audio Disabling - When DP mode is
> > enabled Clear mmio offset 0x65F1C bit 18 =3D 0b, after step #6 "Disable
> > Audio PD (Presence Detect)"
> > If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave =3D
> > 1b)
> >
> > v2: Update the platform checks (Jani Nikula)
> >
> > v3: Limited the WA to LNL and BMG, added a helper (Matt Roper)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c     | 18 ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_audio_regs.h    |  3 +++
> >  2 files changed, 21 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index ed81e1466c4b..cb055c16dd98 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -183,6 +183,18 @@ static const struct hdmi_aud_ncts
> > hdmi_aud_ncts_36bpp[] =3D {
> >  	{ 192000, TMDS_445_5M, 20480, 371250 },  };
> >
> > +/*
> > + * WA_14020863754: Implement Audio Workaround
> > + * Corner case with Min Hblank Fix can cause audio hang  */ static
> > +bool needs_wa_14020863754(struct drm_i915_private *i915) {
> > +	if (DISPLAY_VER(i915) =3D=3D 20 || IS_BATTLEMAGE(i915))
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */  static u32
> > audio_config_hdmi_pixel_clock(const struct intel_crtc_state
> > *crtc_state)  { @@ -415,6 +427,9 @@ static void
> > hsw_audio_codec_disable(struct intel_encoder *encoder,
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> >
> > +	if (needs_wa_14020863754(i915))
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3,
> > CHICKEN3_SPARE18, 0);
> > +
> >  	mutex_unlock(&i915->display.audio.mutex);
> >  }
> >
> > @@ -540,6 +555,9 @@ static void hsw_audio_codec_enable(struct
> > intel_encoder *encoder,
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> >  		enable_audio_dsc_wa(encoder, crtc_state);
> >
> > +	if (needs_wa_14020863754(i915))
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0,
> > CHICKEN3_SPARE18);
> > +
> >  	/* Enable audio presence detect */
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > index 88ea2740365d..7de82cd3380e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > @@ -164,4 +164,7 @@
> >
> > _VLV_AUD_PORT_EN_D_DBG)
> >  #define VLV_AMP_MUTE		        (1 << 1)
> >
> > +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> > +#define  CHICKEN3_SPARE18		REG_BIT(18)
>=20
> Nit. This bit seems to have a name now (Bspec-69036). Otherwise, LGTM.

Yeah this got renamed now, will update the name.
Thanks for the review.

Regards,
Uma Shankar
=20
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

>=20
>=20
> > +
> >  #endif /* __INTEL_AUDIO_REGS_H__ */
> > --
> > 2.42.0

