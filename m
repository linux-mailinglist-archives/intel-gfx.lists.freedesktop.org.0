Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F4C9F9BE6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 22:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D66410E0ED;
	Fri, 20 Dec 2024 21:26:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jmJVUgQy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4463810E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 21:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734729999; x=1766265999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cWft5wl65p97/x5a8XNNrkSEByWKnmzEZgPH8hkWn60=;
 b=jmJVUgQyL3rnpiVWPX1TJfOMC88KaVaGcYdD5oGHMKaQ6jmp2AohRzh4
 n9jfKCEm5dclqMJBdax0STxAsNvgMpjTWdE3P3FJzB84idVa4Nv2IT8TQ
 XkzIV2LdaCT6BXw8LSGI6C83JhVmGiV2CgVUYdcdIwF5Tdn98FMRON1TD
 dQCATwrwBas3Cwp+8t+mnpGDhnZAaUAA9hk9laJwi3cmZZ0yn3qrWLJ4s
 9YCLYgNi8iSskegEpNKCw5YL7W38osKYE8Ck9BM3f23gZy2GdkSA6hzq7
 BQ0ihpuA2dFfPp2n93FbNUy9kjZtovASEAusciOCuzC9hhtHwkoxHN6gh g==;
X-CSE-ConnectionGUID: aG+E7HQeSfie8DWLvg2xDg==
X-CSE-MsgGUID: P+b3bXAPTHeehqPkDc5D8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="46296492"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="46296492"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 13:26:36 -0800
X-CSE-ConnectionGUID: qSeHh8otQrSKCfkHTNbyaA==
X-CSE-MsgGUID: 9HdCZ0RXQQGZNaGkR9AOJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121896269"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 13:26:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 13:26:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 13:26:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 13:26:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agtnuCQIGBUCCjeKi8HsOZd/Hgn9GH8LjgGwpD6WnONvD+lT3X3VqfvxsgHAE0fCVo9bB83IcVa6HcPN3s+6udv06QJBBjydPRYWk5VoydwTnzXTjzTt+Hagbu/rie+8vWxe6nuqO6JCkw2zTwqchyrxKT03Id8Zm3aFXEkFtgfImi30zVmaCYkpI/YW51aaMYvAHa+JT1BZjwNleX5LH42mbCAyq1dZXW036m5OMU+TEGDOXxTt2NrjIlCW30v1b/6JjG5yUZd8bSyZFpapim+fZqf30tpN/WXUn0SK5Eg1dA7mTwid8CjhpeABy2K4TXtdFMsIAEbBnaRhF2u3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2CNgNxAjF+I3EmXZBx3Y9idEV6nsFEiXYQo3TcDvvvM=;
 b=epWzd5mu6MXrmbIw79y40O+/vQ9yQTdjMK4en3WDpEDDYCvmFC+8RXlvIf3vtAM/TpUREHsrnWYw35ms5J298Se9ZHwzN8IXfhYltBRm+tE949tiMgnpqvYD7Om2Vd1eakL47S/1ZERO8aoCbFQYtHrvQ96vu3T82YO6KbZcHrTyYXC8Q5zhK5IVumNOFKd85yERJgu7PTg4/vriK9QQi1Pkc/mpkANn1TIqqtpgRFdENGvAqG8aVW2fwXbC1MdVnghwEGGQIojr490v6DhRXXhpNahZ4KeqAp1ntoPT4k2Rb0u1ynZAVdrYQdS57WiGaLJyVrKgXtPCJkBDwZIwFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by LV3PR11MB8602.namprd11.prod.outlook.com (2603:10b6:408:1b3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.15; Fri, 20 Dec
 2024 21:26:32 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 21:26:31 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Sousa,
 Gustavo" <gustavo.sousa@intel.com>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Taylor, Clinton A" <clinton.a.taylor@intel.com>, 
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, 
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Don't update DBUF_TRACKER_STATE_SERVICE
Thread-Topic: [PATCH] drm/i915/display: Don't update DBUF_TRACKER_STATE_SERVICE
Thread-Index: AQHbUxmpmDKYqMEhmkWozwABq84xXrLvmgpQ
Date: Fri, 20 Dec 2024 21:26:31 +0000
Message-ID: <BL1PR11MB54457C1CD7D4DB4A2418BCBEE5072@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20241220195650.3521662-1-ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20241220195650.3521662-1-ravi.kumar.vodapalli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: gustavo.sousa@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|LV3PR11MB8602:EE_
x-ms-office365-filtering-correlation-id: e444d5d2-4fbd-4118-fdc3-08dd213cf933
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?heFAhIURfAd3qkPBjJUtiXLxJ4tUeu7NWZS28yPU9azGnZkfj4gcwHwhlq5f?=
 =?us-ascii?Q?xeIsVV1BKEXo4N3jvL6Tk+iA68k9ws4WFmRaTqIX3rdIz+L72ZhsS/GbLLG6?=
 =?us-ascii?Q?L1TTugwtngdn+AYHefBqjfs5Sz3yo/z1U9uoBGYY/1qc9ARY36EB3xXOjbcs?=
 =?us-ascii?Q?D7K1+OU5NiARszY8CYGumjMN8vDrVvFWnUQOdU5Pr0enbDKX0U/QtL8nRdHY?=
 =?us-ascii?Q?MiAajncr1eZ0QNCi5AuN4dfunanINI6EDZQvxuHDs2yUQYs9N9K1hcHsAFgZ?=
 =?us-ascii?Q?gYcV2lhj2Cum6fLeGpgB+QXEoL0q3IAy+ZTsAfJuhzVXuAMZK6o4pqzA+oBl?=
 =?us-ascii?Q?vOlU90TSGuMiEmSf+vMkkHc3VFosC7QeInoY21IqWbxvrex7mKZGuHBWC4cd?=
 =?us-ascii?Q?RvVUxL3aJpiXkZf+nT1Z55/288s9mZrHXsa4UwJMKxRro6R4r7JTqPxbd/lW?=
 =?us-ascii?Q?hJ/9CBmDBjuA8c8WlLJGrW5WuHLc7GEuruLld25PA7qdWF3y06FDuiKmBiYt?=
 =?us-ascii?Q?7DO9oEF0JmCtwHfzgBNkQy+UYvN0N8vwmwb/bal4fPs7pXiDM6ZDtR1eEIyy?=
 =?us-ascii?Q?DG1Kgykeo/+xzr07TVD02bNwBuEwZV9Y1hZPyBhZATunw+yF2vIv7AfW2EbE?=
 =?us-ascii?Q?9+MY3HUOqG9b8RO+xAgX3sFl3ucpCTt0d4qAEZ+FcfueJREEddhbG0k8hnNB?=
 =?us-ascii?Q?chvtV8pvTsE14yH3CA7VwrPABXZfiahZ26TfxxZ+T/xRl0TUFXoBjxLcY50I?=
 =?us-ascii?Q?yhyHOXg2hWpyIcjj7EOd9GZStuswPOw3VbJqI+tHdFZzdyyOOLZGhIBBzRN9?=
 =?us-ascii?Q?wJ3BmB7WyhspaRXPR0yrCDJTUL2TMDFk8iGILBI2FNQG6vdfJRYBocZZQ8GT?=
 =?us-ascii?Q?ZEw293tr0jvzicnCS0nt0IdHVdUO6E8ZbMSg5A1prpUb4zb9JyoX+VbG+iph?=
 =?us-ascii?Q?35+PJNw2t3hr5tKUdDVqx3Guk0WjdKOYpb/A22W+gitefZLX3cX10e1I0iO3?=
 =?us-ascii?Q?z7kG7efN9OjQLnQhYTz3q7O1CNtzsvq8z6z/TkDLVH4hHaYAyd+ngP/2RJqD?=
 =?us-ascii?Q?NHXj3eU59LI9jDzB0A22EfbwGTkLWeLax60Y8rbwGvwK+GYl/GZyRpNUydop?=
 =?us-ascii?Q?22pNBOCQZzSfPinGVZI6Sf0E3uk9M5LOh+IVv9fJ4bJzUBRayleuyaEtCotD?=
 =?us-ascii?Q?8IlXGQpu9WEB3ltHrGfGD0RkJZYipIKqoG0GuD4QtbUBBTzh7HRgzdAULCa4?=
 =?us-ascii?Q?A3BVS5ddViSwJRd9mQ062orDOryxa15CBR9Ut3jv7ALvIOCjTEVh34kE2IYF?=
 =?us-ascii?Q?kToF01jLawd/ATNN3ICw7TtvG6TlP1z2CqC4Kk5TMSeHqc4RY594ArBwrbE7?=
 =?us-ascii?Q?+DGCfHg/UcSreKXxwtg2QZjx6SKNIFPK+6JeyDKPmw/KhE5VaeLf/wVaMwPK?=
 =?us-ascii?Q?XkniDKBWlajgq6iuKgCy3WqWRpGDwQtp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7F21OlPWO2oGgeQhMNiwsTXK4oTnLFfZeFUha3VCwooquFyD2SBDNlTIGPgU?=
 =?us-ascii?Q?3IVwmhgu3hjt73ACZaH+19V4tL33yr7NgkNp/mlGeQN+fqv6yknK36lAMtL4?=
 =?us-ascii?Q?c85ADV8GZo3I7Y0v6IMLVjU29EQVcM4ARazKdIduRRzRg5yM1pXMuyqmItKK?=
 =?us-ascii?Q?vlT8KH992COrG+zWNQ2QwShBzqsIagszkzt40cuMdQzzzPQ/+vsjVsgNDRX5?=
 =?us-ascii?Q?nFYAE5z25rT4QvDi35mBzcEaAajePG8V46QUgyD1szIYiHtfGpt16u/dhGq3?=
 =?us-ascii?Q?G7gTflJAZ5WK6KZP9641oUQzyND5fWApHzQhYnVHqGBJ1hEOpf/p62eRmA19?=
 =?us-ascii?Q?VJx+GINEbohdb6eIsavjgxf15eqwfHxMLk2f6cUDXzAqk3c/fYIoAhGcfbr0?=
 =?us-ascii?Q?nLlHwg+cnhG/4VIiWc/yccH+dzYQfEy1IQibgu/ZzwLkOjh/l50B3CXuiIpW?=
 =?us-ascii?Q?kHRAWcMztWRssSdyulXYxicXGv6ElZ+Svuzw3g22YJ94wRln2OwIo1kJQDKl?=
 =?us-ascii?Q?xaQd5GPW8MpNWBKA27vG8gTL2sGgyvwYLk1ZpAXtHO+/TKBvYRfPFCXcLJJr?=
 =?us-ascii?Q?Uzu2kWUv90BV1pXmnxYbJq4N4NE8vIPJEigCOqLbrCzK5/H12804bwTuZVZ9?=
 =?us-ascii?Q?ofP6lGR7gdjiU8pj4PLVmATkGvrHq7rpdOj2BIVwElB/+hz2jzQSS2hrCKhK?=
 =?us-ascii?Q?ipO9o31Pss/zet53rc2ZkmR3Vt4PdGQPBDXoJsuiaTQ0jv7dg1Rq/uKVtD8h?=
 =?us-ascii?Q?uENm1MJaDGNjOlp/ZARN/nQxa+oEJnnO5o7R17t83oJyI83MxdPzwgQQrvJ+?=
 =?us-ascii?Q?9Ji8maj5WAwJuy2kskJU0YjprtGltO7TPBNrJdgUjmAJhDssTqWtxenrLvdk?=
 =?us-ascii?Q?vtjfr3CPMGr8UMjbrEbqw+yWOIL1f6mWE/FqmAEcVL/zYxRl+q8Gtcbl+dcQ?=
 =?us-ascii?Q?HbPqTeVdc5drRDyvRGp7SW1akmV+clSCzpUN9xn7o414u/hI4FRKz2GO4jzg?=
 =?us-ascii?Q?EMsov7Kkld4+7b52J8iSszUFDdpPQzsi+7nmT+9cRQbFe+gGVe5C2AvzXXsr?=
 =?us-ascii?Q?q/ZxCJ/JrM6aS4ZckwmhFlocE8vPQskmWwigStaNlhhx2ojYgMUMZ6BaPTJ1?=
 =?us-ascii?Q?QinqRohnmmS4dddtth8jpLxAWkB98r3q8CTAR8vmcdVopKYuzFe5s8Dj4hln?=
 =?us-ascii?Q?IH7y2Z7k3kaw3YUdOVPi4250P9rRo2LzDhln8ETEIcm7sakCW3TqS1kuqzMH?=
 =?us-ascii?Q?L+uJj9MpVvql4/R8XzwxlIyIBEamrWbOOZHmm12ddTxdm95+ja9v5YBEYZrz?=
 =?us-ascii?Q?vY7V++w+b8MXcGg6eTcGxqDrat0OQLzBPdZqgoP+4QgmRMgTMbAO6oCjjdGJ?=
 =?us-ascii?Q?NFtGqTHA2d4604wt87R9dTXVr2tlS1ScOL252xcftdqspclQx8ZwGGSPaoe3?=
 =?us-ascii?Q?u+arnF5lm41Hj/qWzIOD/VrmOEDVZzLc7rORrHyvAVI6wNbZuZ4SWkqCnN2r?=
 =?us-ascii?Q?awtkce3nWcsZDIYmLRBEeo8jy7heKBSZUQUab8VHTp6NFKVE2alcPphYnzKP?=
 =?us-ascii?Q?DNa0sZ6XxV+Dx+tKcpoLFUr0hizvjyOfE5xw2aTm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e444d5d2-4fbd-4118-fdc3-08dd213cf933
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2024 21:26:31.8767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JnXLMxYqeOy9q65qgI7peSmJ6GsnyjZiBW5/DPnn5xkBTu85jg1cfdOKhQNasFde71XfdXu4Ng/o3JDuubbqvd8MbRZw28GpSX4nfT2i3xs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8602
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ravi=
 Kumar Vodapalli
Sent: Friday, December 20, 2024 11:57 AM
To: intel-gfx@lists.freedesktop.org
Cc: Vivekanandan, Balasubramani <balasubramani.vivekanandan@intel.com>; Rop=
er, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas <lucas.demarchi=
@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; Taylor, Clinton A <c=
linton.a.taylor@intel.com>; Atwood, Matthew S <matthew.s.atwood@intel.com>;=
 Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar <h=
aridhar.kalvala@intel.com>; Chauhan, Shekhar <shekhar.chauhan@intel.com>
Subject: [PATCH] drm/i915/display: Don't update DBUF_TRACKER_STATE_SERVICE
>=20
> While display initialization along with MBUS credits programming
> DBUF_CTL register is also programmed, as a part of it the
> DBUF_TRACKER_STATE_SERVICE is updated to 0x8 value when default
> value is other than 0x8 for platforms
> 1. display version 12
> 2. DG2.
> Other platforms unless stated should use their default value

Maybe:
"""
During display initialization, along with MBUS credits programming
the DBUF_CTL register is also programmed.  As a part of this process,
the DBUF_TRACKER_STATE_SERVICE value is updated to 0x8.  This is
a requirement for
1. platforms using display version 12, and
2. DG2.
Other platforms do not share this requirement and until otherwise
stated should use their default values.
"""
But the current commit message works, so I won't block on it.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

However, I think @Sousa, Gustavo might have some additional
notes, so wait a bit before having this pushed.

-Jonathan Cavitt

>=20
> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..9c20459053fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_d=
isplay *display)
>  {
>  	enum dbuf_slice slice;
> =20
> -	if (display->platform.alderlake_p)
> -		return;
> -
>  	for_each_dbuf_slice(display, slice)
>  		intel_de_rmw(display, DBUF_CTL_S(slice),
>  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_disp=
lay *display,
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(display);
> =20
> -	if (DISPLAY_VER(display) >=3D 12)
> +	if (DISPLAY_VER(display) =3D=3D 12 || display->platform.dg2)
>  		gen12_dbuf_slices_config(display);
> =20
>  	/* 5. Enable DBUF. */
> --=20
> 2.25.1
>=20
>=20
