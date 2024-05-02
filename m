Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E358B9A82
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:13:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4B210E1D4;
	Thu,  2 May 2024 12:13:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VtTqKl/n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E8F10E1D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714651988; x=1746187988;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3AJnItsHduigINf2qSEHNg65zcODjuQ9VT6SP6Q+8+0=;
 b=VtTqKl/ndo64SFdSMO++H+XkPwHgYFnxxS4gUUCjL1R8dqa7O9GBQkt8
 T6+ewOCoKzcesSGTEFhKCRdOcyRj00C/D25Q48D1df3t0OsPId+N9oEI4
 5hZLwmM+uzWyOjWrkvmrfCyImkZQSuORmuxDy4ybIqCJ6jFmcl/MU9820
 93fir45xfsNM0xtVaxbDDQVFRZ6Y5DQT7bO81QeCAI/iBUv8oJyBzB06a
 QWhIAvqsuDKDe062Ne5liv0I70VyI58RbKJiKYZ9Sq/0K0sPfQeeIwHeW
 HlKCOvBZacdY6lVO/LtoPsbQ7J5M1bbr+T8bDG2MdZAyvLYDANpE8Q4dP w==;
X-CSE-ConnectionGUID: 3KW0OGWmQ1KWbcdqQ/N7Wg==
X-CSE-MsgGUID: zSgTlSJLSKe34wj1A4JKSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="32930198"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="32930198"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:13:07 -0700
X-CSE-ConnectionGUID: f/lDsNpYQ+C8MK9/BUAIsQ==
X-CSE-MsgGUID: g3DaUaTARAOPlykTRV/k7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="31909080"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 05:13:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:13:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 05:13:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 05:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kf/QGvVVImOagC9iivCiNQPWbsRhPv3olZxgpswnT4wPZATsmuqcs2100tSl6+C5snM0L0HhN0NZUHmrsSNYZGG08sB3lf54j27jJ71jwHc0yz+XiTc+ox6/XJMdbiJNtPP/ktWwhbtx2KTr5PSnOU2TbrNv+9o80zaS1bbRXhq9agKgtswe86vYkiOeY188p9/Yh7hwDMLxrVYEVB4GYNwyhrdO8u2kSQ7FOvcfs6ZLO2D6ivkvh+F/MCWw4zbeuZVr70fBwApOxPnQRBsbaKCdryGQFRjGxadw9D+3/qYYmMWwWEDhm6PKVggzpyGpLgMpX9ap9SmDmL8l5Foiaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZcTEaubF4zxSm0EffjrbA8h2+bMzZs92NwamJiX8rg=;
 b=iLMFtonbOAE4SZUF3BVqloDvl+KdrfexbAFRIwEUvel9pt5SJMS4LRkYiUFSP+g3BAlE9hWt4uVKxnSSgNt+bw/OXdY9m5byC08rJPFKtgtqPHyiRdi61L64HBQSuuGYwrauA9w25SJd5Bhs34+g0tvBVpGNOMdjUziEwZCxIC8bqZXZby1h34oRJU2zpl+paRT6bgebXud0XeQMJbsNUkyWdb3jHeVefwlUtoXtxagwDTbGn0GyfC4wFyy5K7WFBuILPEA16njKS7eTlIzSvaR0wQn0QfBmfh2ozH+y9lmg4Fl9Z7WSKMWkVcDRTHh6t7LhpzHL1T9IWfth2sk8UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB7161.namprd11.prod.outlook.com (2603:10b6:303:212::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.30; Thu, 2 May
 2024 12:13:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 12:13:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after connector
 type check
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after connector
 type check
Thread-Index: AQHamsmi4gklIlGYVEy/PV59tsxYPbGDxaWAgAAYrBA=
Date: Thu, 2 May 2024 12:13:00 +0000
Message-ID: <SN7PR11MB67502EA5B72207CD5625684EE3182@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240430064030.887080-1-suraj.kandpal@intel.com>
 <20240430064030.887080-2-suraj.kandpal@intel.com> <871q6kpk7w.fsf@intel.com>
In-Reply-To: <871q6kpk7w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB7161:EE_
x-ms-office365-filtering-correlation-id: d1e537ab-a334-4b01-9b4b-08dc6aa1359c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?VwMW4pplRTjgmZKsn57e+SUZ8deVRsgiCvAHLjc7VJfJIkN4pTAUbZeT0nOz?=
 =?us-ascii?Q?MFL839odEc/lUem+V1uDG90wXavhgBr+67bZNzsrEc3AvK/4rdNyZECbk6Y7?=
 =?us-ascii?Q?TNs4T0aXu0NN/aCnQEWEvybmxCQE+qtkatYiP5rXFPyXJBOsJUswR2ox6XfO?=
 =?us-ascii?Q?f5/s+ykXhJ/08cbf4ocsJ1Jaa5Y3Lngj6q2NIge7c14aOyaUhwsa0edWbEAH?=
 =?us-ascii?Q?Iwf+RumsBJdizWxkOVclmq4wdKy6Lpq1kCaGocRhkOOtFm9cG44KYmzqxyJb?=
 =?us-ascii?Q?j+xN1FhK/ex0O86EwuN1tXFKYM8Ax3oWnnay37fceZQ707WLbXMYO85Qkqe7?=
 =?us-ascii?Q?H9VeTZh15ns3Xa4L5r+vot93H1wGFDFWD4vAosGo4cQBpoYZTk0YzXOZKkdj?=
 =?us-ascii?Q?F63jtWNxs4gH5JZF91fTsF7agWtFmPjOskE1rigOwqR3pr0wRu3qlHcZ5fA8?=
 =?us-ascii?Q?Md9FNEKR3Td9lqa7F/N5tazvvoJNPwDjtLXAsIKP000widL1TJwSjmxZzIzW?=
 =?us-ascii?Q?SOU6ImRceYljrNK1PLAwolmHALUMItNJCTx64fpJooPxWsEkMXVMfglUXizl?=
 =?us-ascii?Q?UePPAUpy9lYcX4WnVT/RZep0GeZJ32GM41zTnU8namHxPQlCHrdRENFYC0g9?=
 =?us-ascii?Q?2bGU4lM9bwqZCPDqsqlmpmiPmc+tJK9APxOz9S/VU+bhi77UV1Zr18SdXti3?=
 =?us-ascii?Q?z+Lbb79xr2q4c5AX0rWWW6D9GlcZ7WBcFZUBdD2f1XH2Q+CR2HmqY3cxNXZi?=
 =?us-ascii?Q?qH9Uy0oomIynakDFxRRAvv/po/h6ReZ63++qedeT5eQEZa6sCG2ahgGYzr4x?=
 =?us-ascii?Q?vaxuBNRxQpkvs12xiLITtRHpgP5pE768NVdXqB//oTTSb0/fZEiiX8g+GVes?=
 =?us-ascii?Q?oDILPnGKbNZW2pOWSbMCmhsEqr+j6pKzExTUvTRCZd6J1xjrzKmZmWkSPGAy?=
 =?us-ascii?Q?C6fvTFkk01ft/zJH1dCbwJB17qHHYs7RigXeP9Mye/XL277tQ9gXjTw/qSKn?=
 =?us-ascii?Q?/DQ9mtRiOTySEKr5Ht/WiHsgnjecd01W78SVYeKKq3b0GfExqAM8L988CHFH?=
 =?us-ascii?Q?fbblvrREqeT6eJl7QAM3hM/gGnBvzcCU9EilHUXp/aMVENDFfHWY+o0MpABP?=
 =?us-ascii?Q?gO0mZwVdh8rY2gXjnq9tlKEEnpdRnD3p7xXrtlIkCB0WFe2Z8oRGcd0t37uc?=
 =?us-ascii?Q?0oJR9x1mvwdwSp/1QJDorZKDAEd88NAD29AosswpmWN800EzzG0GVpoojIVE?=
 =?us-ascii?Q?umZPpfHgfEOVGTc7PQnZp+ZDBcZXvwm3Di310YzsPmfPWY/chEfiz878zoJ6?=
 =?us-ascii?Q?Aoq3FxSFAMuzYojHvmbbjBvFcm65jp+GkTQIjVsphc0lLA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ONyK2TRYlcrpwoN8spEysoBXzgAsNYgV4BTgmbRaNz+Z/2fKh16PQkxv1850?=
 =?us-ascii?Q?hFCrYTRfP13IQHg2+8ZpH1xcnuZ6YA8T4W1Zl+oDLGoVeEieq0SVYizC2Hpj?=
 =?us-ascii?Q?2on5odJQuFgakVmBZBfYfc1Dze1n+tQK3zIASO9u00HaiXEuzBVvb9CPPYH8?=
 =?us-ascii?Q?2/TwITL7KiniIE4fkpBU+xrL1IStme7aSVI+AAYC8Ao+S2gI26weAxixnlS1?=
 =?us-ascii?Q?SGlCMozf01Kmj/IsRCbmkxJwC6Yv49pMl/UTMpqt9pDWsAAri8VoHjQOONTe?=
 =?us-ascii?Q?TSgmt7ik3xGY91bEHmsVGJ4zqZM6ZH09vAuedn8naQ/sZdVtM1IueeDHHDA5?=
 =?us-ascii?Q?68RaxvGJXTcf7EXdwH+m2dhkEIfP+LMZDCKCaNvvzVjm+1YsaIdJPuSqtClC?=
 =?us-ascii?Q?eBWua9C3oJbrxKQOoHNDgdBxb9IFrIuoexiKoCSmGZ97ZJ1BGRT2ReCzYXTd?=
 =?us-ascii?Q?co0JX3g+/HQy5dnuwdOmIOH2kWBETu0Pci+zsRN4nbqeqikQ6E0PbMCGEFKu?=
 =?us-ascii?Q?4fAp+23TpQ9nBVnYsvz5rbwq0AiwYnAcxexbbyj+4JjJF9gUW6nG/deAcvyC?=
 =?us-ascii?Q?9tPkXq0XPH6YhfLJdTNTWIxaBmroub37oyND/MVlHeEW8qMWhotEAv+J4Czg?=
 =?us-ascii?Q?+U+3lEq7lkcfqKYJlb3ibGu+hnIH7GyL391jpMKkEdoD/cE43hZgXjYk0LIc?=
 =?us-ascii?Q?e77JUrLqqHmFuSW0grnfuw3B+qXU7dOXMWj6JoNK9DcorABRe5tBWocYw0jr?=
 =?us-ascii?Q?IhOUBO07ks9MowbxZ/MJyIr41ZouX1m6uM0nVEayjSz+5rY39k9BU9VALLTz?=
 =?us-ascii?Q?E5DbuFDL1xRSRThN42lt1U5BREQ8Pt7QRTgQ7GUDPIGkUTqo5M9z6VIpSr65?=
 =?us-ascii?Q?EVSzZ2emyIzOZMGK8/IMMIrRqo+pnULX8xYlzie58UljD+ghAnLq5mrj4PfO?=
 =?us-ascii?Q?E/Y0zVF+3G2x9j/q+VcYiSe6QyAr9s560NfA0O1IuCgl6rC2ZINGeg0+lXJv?=
 =?us-ascii?Q?QxThQzugsN3yVPi+L5OgJC30wgy4DvwjefLfE/hxZO79qUYb/158xOknO/X/?=
 =?us-ascii?Q?F/RgI/U1EwL1aT9djj8cIrT3AcczNJhvV61EvJtiwaYE7yTBM1luU/yuJmpN?=
 =?us-ascii?Q?gzvPUpKn0Vmv8U6He/bRQ9BokPHtISFpczjaWLOl2JY8zVREdy6gpmbz2GKT?=
 =?us-ascii?Q?eoWa7lMgba20Kummw4HgupxJnXiXCyAYBCswMmnf8lM84ZB4SLJV9uVQXEtF?=
 =?us-ascii?Q?I3bEijicKWl7efO5ykH1MEAD0qlaYcih95lMpGIW7lfxkPB/SCJTooTTvrhW?=
 =?us-ascii?Q?Bbuo2fnKSGrYFWmp+kh3sbe9tx4DXo1K5Qwg+cCMi6lTnk/ERN+UhOziZ9WM?=
 =?us-ascii?Q?zXL97rR6VAX72aL4xaWl7ZgF4psXtZIiJcvGDerk9RtJq0gz3syBGkbsq747?=
 =?us-ascii?Q?P6B5JFwcBgWiRcZvrYTqG9YwwCu/+s/SPooNjJepAIEM66HBVusu5pEXlYpN?=
 =?us-ascii?Q?85/oYZt71E+1bp0rgsG+375DERN02/dZBKhEneFuZq0EXz+/M0luzp0HEmBW?=
 =?us-ascii?Q?FNktwFF7I1hjfu/kO0HJ1KYJuvU82cXX3PKGYaPJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1e537ab-a334-4b01-9b4b-08dc6aa1359c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2024 12:13:00.1328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eH7qP26ytyAvX/0sKz58uUajzMQC5KJWTaNdOeFyybAMfCP+iKU1n7ur2GQldqGG7lD2Wkhnn2oYh1lmjEu/yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7161
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
> Sent: Thursday, May 2, 2024 4:14 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/hdcp: Move aux assignment after
> connector type check
>=20
> On Tue, 30 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Move assignment of aux after connector type check as port may not
> > exist if connector is not DPMST.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 92b03073acdd..92be53d7c81f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -687,15 +687,16 @@ int intel_dp_hdcp_get_remote_capability(struct
> intel_connector *connector,
> >  					bool *hdcp2_capable)
> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > -	struct drm_dp_aux *aux =3D &connector->port->aux;
> > +	struct drm_dp_aux *aux;
> >  	u8 bcaps;
> >  	int ret;
> >
> >  	*hdcp_capable =3D false;
> >  	*hdcp2_capable =3D false;
> > -	if (!intel_encoder_is_mst(connector->encoder))
> > +	if (intel_encoder_is_mst(connector->encoder))
>=20
> Suspicious.
Oops typo here will remove this change.
Regards,
Suraj Kandpal
>=20
> >  		return -EINVAL;
> >
> > +	aux =3D &connector->port->aux;
> >  	ret =3D  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
> >  	if (ret)
> >  		drm_dbg_kms(&i915->drm,
>=20
> --
> Jani Nikula, Intel
