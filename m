Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511859964B0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6379510E697;
	Wed,  9 Oct 2024 09:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGrH51xl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D72710E697
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 09:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728465402; x=1760001402;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6sSqfoPmHSMpy5K6MyxMsIzeEwrJ7d7qL2NBXAfcZJo=;
 b=EGrH51xlNh6wUwMyyIQxcTNQFfdA33Iz1iPW/4m36F9LKKbIn4jSRIks
 nFKOIATRuAUpd7Y95ijPG3q9obsMZDio2kZM7FrUaX+Bwe4XJBXLnkK1j
 VSzPMB/1A4QL4/QxzEB5T2tUEag6qVU1YmJ1YkkPFzg04a/pqmSmSXHeL
 LDCqYiAvQ9nsjwSm9z35E1mKj7zMBi8By/hafRFHqCk3msCmAnBdCCKc6
 9eBcCXn1z1jsHz2l9o/JndgaavCOwsGD4xHio0puUgdzzDz3YgHboNQMS
 le5gpseDnWybjtck3ml8JPDgPIX/KA6Ik2xdjEMhGKkygAvX/sSULjGVM Q==;
X-CSE-ConnectionGUID: gwDJ0AdmS6GkS9pXBQ0fLw==
X-CSE-MsgGUID: wrlzaDh7RCmFyiJPyghEiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27886785"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27886785"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:16:41 -0700
X-CSE-ConnectionGUID: 2C1snHdsSDarEIeXmcOPhg==
X-CSE-MsgGUID: 60nO1w2nQGuIx7aOoXhLlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="106945973"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 02:16:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:16:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 02:16:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 02:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ov6UBYjlhiOdl0EimQt8GVUkx7rdYJoyMdFrj8snkBFBVPlutgWaA3Gqe1g6MktLKgP3dOG2H6RoyDJiZv5VeScjKp9vqNEBKXYHFFpDgxPz9lEv/lI9YE8bHnmksznS/let7AzHYNHumVbEigTlsK64JPIjqKx5CAnOCiHnLRV5uXCZmoJC6pv4TW9B2Mg135PGg4BMDYelAcgBHHYhu7HFDfzt4uiEG/xMxjp0TagEYIZmvqEazQcU+uKZeDlyRsZXVcc9l13e1pwEeemje9fH8oPOJde4CRFLOCHHn9kTtcgA6ykCYdwHfiVdK372ECIU5+LZiQnrscBqdb+xLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMXgUhShORn2UbkgBZgdJCO5AmZRlIGbI2YwpsMQdHI=;
 b=we42plIc0Y3EzNzMNVkrurj0KuWl7gzn5G/p2dE+AtThS2CCZu1zEio7/IprXJ5FgqhWrsfim68hMBOfrj6uEglxrPI8L2iAmofKPS1y+bguK1i+yLF6+9nqYn1dVmH9ckC3zOHvqsCQkhdyzjlUD+r+3z4FykOVxREnKD9saqnyP4+5keRfRCE3x0Ay0IbBrMh5YcNL35bqRoqRtedwELGeGjTjeR/J0oKdruJg3gApAuGMZCbnbr7LSAH37HzTWQtVPWPDxGMZWnBDM+H83cMzeqZOQ+HK1UNdOj0jmwgBCqLvCssTbbEW687KxG6eZC53+FgGH/eUyNoFKTjWLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SN7PR11MB8263.namprd11.prod.outlook.com (2603:10b6:806:26d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Wed, 9 Oct
 2024 09:16:38 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8026.024; Wed, 9 Oct 2024
 09:16:38 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Topic: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Index: AQHbFAg7zOH/dq1Q90iZEu2HUnOi+bJx7ygAgAxADkA=
Date: Wed, 9 Oct 2024 09:16:38 +0000
Message-ID: <IA1PR11MB63487099CD10EDF7D7447041B27F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-3-mitulkumar.ajitkumar.golani@intel.com>
 <CH0PR11MB544406EF3033E87D334A8FE4E5772@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB544406EF3033E87D334A8FE4E5772@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jonathan.cavitt@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SN7PR11MB8263:EE_
x-ms-office365-filtering-correlation-id: ad81c1f6-e8f0-4279-63b2-08dce8431477
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4JopNlYjouRrz//yXYiXsE88Pv+DCvbg7A4ycDWpugX4ird+rDHhdFpbcgbJ?=
 =?us-ascii?Q?YN9YXQ/EYVyeTG0Ncmx+C4IENJFXwN3NtHXzaFier9qRhS+UdUA9S+mwLnLr?=
 =?us-ascii?Q?e0KstwLMx0qriNOBKhPeYpOey59GzeNfiAXrh5hUoOihkRhXnx+7vT2aYn8L?=
 =?us-ascii?Q?6f5LnQa9ZUQzJHb/G47nlPiFtXZDvZemOb/BPxP9KMed2s+Ut/Sja1Fsy6VL?=
 =?us-ascii?Q?PJHFpMh4E14YVmsC6AZtscnMcJBG90zieQVSjoDX9jsJvUGxhdWvV3lnC7if?=
 =?us-ascii?Q?ve8zH1fK770rhm46bVCvJOUdleQse8Xs/sG9hL/tQynkdr1q/qpbHfRawLS7?=
 =?us-ascii?Q?fPSHPR2+S2LXVTrNSEbDL9Ch7+uwmpoobiRjUkGb+sGgPHw6du3XyWOqptcA?=
 =?us-ascii?Q?X/2rHEeYqYYPn40pUjljtDiHDPXMhbjpPONTYybZlT9Xht3onWka9R10MhEn?=
 =?us-ascii?Q?CwjAdTWpsq83x13/o/s3Mc8nx4/aV9oT/XDb+qk8qK8pGK5Hc3S8O1ou/JWd?=
 =?us-ascii?Q?uov6MtitvtT6kafBc42+KVYatcNne3zSNRuigiKEBedYM1nJ8GVmrd4psOGH?=
 =?us-ascii?Q?wj5y8M6seIMr5RfWeORTqo5ywjOpGeIxN9i61Ci/x+vYAVPYsgHnYvxIAH8Z?=
 =?us-ascii?Q?XAcjQ3wBKwiOw7/ztZibFvhFJA6Eom5HzTPN6B32LsHf41qqHwb0fdxAbG6I?=
 =?us-ascii?Q?0HXtMZXJoMHjGSLrud+6cFMgYg9G6iEcW5RL4Q8vXVr2f+uPm34zgeMPev6E?=
 =?us-ascii?Q?zJD5YW1Jwsa1+vIThS4Qoqmftys8o00o2Ywsk3w62uCBt7L0mnG5tHAXFtdk?=
 =?us-ascii?Q?f5NwJMBPEKgP9Uz9mqsofzEvZ7umgtwlZBBF40+KxGOSxEtBCvLe9GFm++ZQ?=
 =?us-ascii?Q?9GP+/fdEXosMF3YmjG/zOaMgmNwvv3HSSt5nuqQ4hi2uprzRFhpDyEKW/Mm0?=
 =?us-ascii?Q?XqTN6ia9hvYV0QEIbBxPRo4cryAFFMQhW1HlRu+7w6ZMgVTviwKApEedyZl4?=
 =?us-ascii?Q?zDiKqafHkDWAtWq8N37ze3ho04gPmCFBRNZfBt5LEORdtPsClm8NK8JAEGBM?=
 =?us-ascii?Q?3Dg9heAU5sWYezYbGpogWciItSXNhVHZEc3WJlu6wfJQDzrT14GV+jO2tpkd?=
 =?us-ascii?Q?cELXtLmBQFa26ZiovHUrgCZTjKeojXddjJiEr67BVhp6S84YoYuu84tvhONp?=
 =?us-ascii?Q?MVVlg/Hk/SggqJTzxulSFfXH9URqz6V+dYb1mh8VPbGQn0YIbZUEyfwumIu3?=
 =?us-ascii?Q?vsjDRNRVeJ0Su5JQh3WUW3GqFcs0IMLG4cPa+zExPibTK0RhoA9MdmJUthwX?=
 =?us-ascii?Q?YDBxIXM96cK+ufBN6u5GWGNgvj82bWmKQO65ViaW7ECO2w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hLkRCPnJI8P0WRTpoE11LKCKT8LtzFv7KwQ4RWfiDuY1s9fGxsfD3HsJrMJw?=
 =?us-ascii?Q?GVjDSqGEZsyFJWvoH1ejiyREcWF/i5id45VOg4xUT4ngL05XjeUR4hIZupfI?=
 =?us-ascii?Q?JRB8r5HYbkmgY8aGP46Rs9EJ8/r0NjcWyfyPJEH0/YZNpmTcU5zBCnyE177j?=
 =?us-ascii?Q?1hxN9RydWzbzbE661oXgEfIXYRUB4tvlAtfVJAeQw8oRoU8iiAh3P+OAnYCl?=
 =?us-ascii?Q?maiucJIfFLlAo8c8z3Uz1eM//+bLpHuCPzhCcGbL+urxl9UX8hMq5NKPhE5U?=
 =?us-ascii?Q?DGUC4iRgADAeuJRrGpKJzXOajZxppbSNdgZhXJjcEWxqnHOFKqpVOVP95dRd?=
 =?us-ascii?Q?UosdiWRv3nEB9aepD6RTTId2CSvlMKvryTarMUsoy+hmWnJr8MDwca86RXEC?=
 =?us-ascii?Q?mmuk/nF6oNb9Gj29ihCL5HYntgTPnbkDiTVkL+q2pNC5qVLmqLubWoaVgwpq?=
 =?us-ascii?Q?Pwh5pmPylNfMtasOEOSNlr/HGIG+ySAiC99kdauhKvp3BlHvnAJOdqebC3rv?=
 =?us-ascii?Q?kNMkiupj7VisWxrVVJlmowhpqImRX2jUw5WSVc6+NaAXzd0c09d/rLKbPjpd?=
 =?us-ascii?Q?PrY0N9ftSReQHORsQ/8JVTcX8gGGdLy3+OGCCDTsIVJlvEl+yxlLMQFojMsn?=
 =?us-ascii?Q?wbAwZ4pMemXwSUnlf71UDDyjaLc6SMUxk8g+W2f7UsrKHPDF/iZVGg/itT+H?=
 =?us-ascii?Q?9BdkZljoLNRXqv1AODLwcs4AfGQwyufGujGSyFNcpRq/aj2UyAoXI8HmFyRC?=
 =?us-ascii?Q?eVuofq1wCbLWiQfOoTm4IO8yql6RRNeCrhktR2cIKvwc9HTkShmZzqcrmTTI?=
 =?us-ascii?Q?HXwYhW65vpMmynZkPHg2bLaTmsvNo7mCXduXySpbwlKZfvsDhxvr7D53qOLS?=
 =?us-ascii?Q?Yx7JrwwGPQzt2cpp+uulmiHKujjpwzr8sq0z+IN6m4nEPmVZ9xDhYsoRmai0?=
 =?us-ascii?Q?nsdXFUpx1AFXVyH3akYBf3DqVSNxzOljiJg9OMAqSu2E+TOVWvt1O0EJcMOW?=
 =?us-ascii?Q?M/NdO/bASPn4qIseMmBUna/eNMLrxXo4sciDlNJqlTc6XXVISfZA6vIKF9Mr?=
 =?us-ascii?Q?jUgSebQ0QiONbywrmcQyrcCw2gPjhfmoaUz7ZQnZifYq3XiHZXztkz40h60q?=
 =?us-ascii?Q?yJLcJv8vHGWoGJB+7Ef931oCrxgmzCz03114VEijEvSzQHNyHx4PgU3H6MkL?=
 =?us-ascii?Q?Uy7BxTHFfUT7UpdM4YEkZmPd0pjt952P6RgyDOecNbG4nqN3jAfuv+yo8sTu?=
 =?us-ascii?Q?pCqkryASUg0e+tz2eAN0IWigO17RQiQKsk/FXlyESSjXIJ7+Wx3Uvh6X66dv?=
 =?us-ascii?Q?NXBpazk5BEQL+87hbse15jsOsoS2L3aqOX7AUUTAewTB2keZAqYLFiFGe6fa?=
 =?us-ascii?Q?FjI7wfZjltCg04Uek+eBhjSPme03gSKAEykX3cpmTYnvDkr3edjOd79usCXK?=
 =?us-ascii?Q?8ViNq4h5PJeXHSA+l0TKQWwVsu4jVecNtYdx+JlMHeUedjQxHp8SPPnpDkW2?=
 =?us-ascii?Q?VXstU8KtEAogLP4LFAOL9xTu9Cbgur+K6blmM56Sq8A92pYh2JcsCoW/9Ae7?=
 =?us-ascii?Q?8UjlP2Gp66WbF309zqQUE4Il2xqMGSETR88hj1C/dCQTcol/1Kw0Ue4SKNf/?=
 =?us-ascii?Q?5yC/HTkoL84ypp7NAxaEMvI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad81c1f6-e8f0-4279-63b2-08dce8431477
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 09:16:38.3353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41G91E80Xdg/AYQx0WeN/STd7QsEaOFZxMwYL40Wx+aq1IIAJ6hUiZh0xqtdHP3mFNf9kEpqm8jVpIkKyXr0Rs+4RTdfeLv6sXfzws4LUOQUacaBk370MPuH/iqaTD5j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8263
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
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Sent: Tuesday, October 1, 2024 7:40 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@i=
ntel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in tw=
o
> phases
>=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Tuesday, October 1, 2024 6:47 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@i=
ntel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two ph=
ases
> >
> > From: Animesh Manna <animesh.manna@intel.com>
> >
> > As vrr guardband calculation is dependent on modified vblank start so
> > better to compute late after all vblank adjustement.
> >
> > v1: Initial version.
> > v2: Split in a separate patch from panel-replay workaround. [Ankit]
> > v3: Add a function for late vrr related computation. [Ville]
> > v4: Use flipline instead of vrr.enable and some cosmetic changes.
> > [Ville]
> > v5: Use intel_vrr_possible helper.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++----
> >  drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
> >  3 files changed, 12 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index f7667931f9d9..c59d7bffbf57 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4836,6 +4836,8 @@ intel_modeset_pipe_config_late(struct
> intel_atomic_state *state,
> >  	struct drm_connector *connector;
> >  	int i;
> >
> > +	intel_vrr_compute_config_late(crtc_state);
> > +
> >  	for_each_new_connector_in_state(&state->base, connector,
> >  					conn_state, i) {
> >  		struct intel_encoder *encoder =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 79db30e31324..734db543b90c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -244,11 +244,16 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> >  			 crtc_state->hw.adjusted_mode.vsync_end);
> >  	}
> > +}
> > +
> > +void intel_vrr_compute_config_late(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	if (!intel_vrr_possible(crtc_state))
> > +		return;
> >
> > -	/*
> > -	 * For XE_LPD+, we use guardband and pipeline override
> > -	 * is deprecated.
> > -	 */
>=20
> Not sure why this comment is being deleted, but I won't block on it.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> -Jonathan Cavitt

Thanks @Cavitt, Jonathan for the review,

Comment was deleted as suggested by ville in revision 2 for this series. Al=
so that is coming
As redundant to when first time we calculated guardband.=20

>=20
> >  	if (DISPLAY_VER(display) >=3D 13) {
> >  		crtc_state->vrr.guardband =3D
> >  			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start; diff
> > --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> > b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index af921dda4619..b3b45c675020 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -19,6 +19,7 @@ bool intel_vrr_possible(const struct
> > intel_crtc_state *crtc_state);  void intel_vrr_check_modeset(struct
> > intel_atomic_state *state);  void intel_vrr_compute_config(struct
> intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state);
> > +void intel_vrr_compute_config_late(struct intel_crtc_state
> > +*crtc_state);
> >  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state
> > *crtc_state);  void intel_vrr_enable(const struct intel_crtc_state
> > *crtc_state);  void intel_vrr_send_push(const struct intel_crtc_state
> > *crtc_state);
> > --
> > 2.46.0
> >
> >
