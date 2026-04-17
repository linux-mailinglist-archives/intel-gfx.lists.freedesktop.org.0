Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMB4IlDN4WkhyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 08:04:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B3D4173DF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 08:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107FB10E601;
	Fri, 17 Apr 2026 06:03:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTiOn0YY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89BC110E955;
 Fri, 17 Apr 2026 06:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776405837; x=1807941837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ZzVKREAMK2PWpLex79Uy4gfMGHir4YncjNFT70c7nA=;
 b=NTiOn0YY7r5RTGIyUex5QLHoXm+ITZ7Nw1wdNUwVZd9ZQwRQlfDRq4IA
 eg27pbs6UpWOlUhU3qqnlZ5lOptjdhuT28eyO0vJ3qWOaxvFiMsRr6YvH
 B1il4qKvYoXnCHFkB9FxGVcIDMWj30tnsHd5asHcrT0jImq5qkrJfwtVm
 Tp3+0Ccts/q8pVDDbuw31A51tNgqOy1Qef4Y96XymASPWmzS96cbuN1wp
 29TfxYWyq3Z9VlHjZyY+1GKDkFlUBcd1nfbHSovW1QvrrdLfX4lieqwBE
 Fw+MTmzqPyRe7z1ihxiD0fd/63KLGvmuppPkYTMLBnhC9+PQFUJ8TlPM7 A==;
X-CSE-ConnectionGUID: OvCmjW2mTRm8jhgG+TnrUw==
X-CSE-MsgGUID: 2eJlZHLUTHucvaY9qf1Cdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77395589"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="77395589"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 23:03:56 -0700
X-CSE-ConnectionGUID: LlXpRcEITS6IbEHu8dYRaQ==
X-CSE-MsgGUID: +ncAufKgQP2uN+v106x7pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="268965251"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 23:03:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 23:03:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 23:03:55 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 23:03:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XzCWG9HOUgeO9YSCwoe/mCn7Em+AqY5oV8iBmV1NG2YeYZbgp49IEgzucNz9y2aeRCD9b1Tw3jDPD54eJbC9aQTsIh+c/WHzmZCmpM+NahBNnhEcFmchXEXlgYxUtXYllNk0jhdY89SCXhU8vY0ESmCJniN4g+TDag68f4rNSZlnag+TrXeKOGIb5Tovi7APRCzaXgcOvQIZSwzx2XU2fJ2T1xIPk6xodLIa+Wy9T84hZW5Dmogcj4ZXgEZisTa2FP4JG4rAdtsp9sw3hJb8bRhr4KhsuCz7RPfwPcCJYVmfRPTbZqLgWj9xvxpnmJgkfdJcXHo+Iwbdz0xprlJTAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pH4bpmS/Qp18IFiy9kWlhpFu1CpsPU7vSUkTKILC58c=;
 b=bK+wGxmDfk/8jcDT2yyMCFdmZo0YT6uLmbEN79xB/v1KSLt+gdaBMZlFsOUhnVjOsAeTh7dwEvlskI5NBbG/fj4suSzOvZVPMFzGH3NQmXrm6mitMlySBNmXSaMeegesw7XrXkl0Cej0JzXjnfBB+jTax6F+mJmo5b/Iq9OD+vDvw4Gw92vWdnfB4Kgq0cThJaKcXn3DNXTXU7JxsCfahajRTFnvXK6RgpQOZHvWwQP5l3FFTvxbK86ktDCQQ5giYeCj/9tWOGPqZl3s2CtBScsHkJ8XH+yiFw1LgD6Dree67UUuAftgS03Sc6zh8w/9E2twCSFD9RSxytFKsyxSGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH7PR11MB6673.namprd11.prod.outlook.com (2603:10b6:510:1ab::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 06:03:52 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.20.9818.017; Fri, 17 Apr 2026
 06:03:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHcymygLFle3YrMBUK3c+JVuOmCk7XekaCAgAQ3pTA=
Date: Fri, 17 Apr 2026 06:03:52 +0000
Message-ID: <DS0PR11MB804961654148D027B4F03601F9202@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-4-animesh.manna@intel.com>
 <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
In-Reply-To: <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH7PR11MB6673:EE_
x-ms-office365-filtering-correlation-id: 6b667069-a418-4de0-f82d-08de9c471a20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: AB5tSdJeTihBjPLOuomPbOfvDHVLc2m/9jaW6ZQjbKvhHcYx9q8thEgEBTwIvgeNoACz9rj2AwYWARYRr+HR5CPCHytsYpkiXeJQlCLgWDdKprKGqlIluyiUG969v7eMpqsezWk9T/xfvWjk3KcRHqKGGJoqcksBjvqIhrHrSBKGBdCkcRG0ULSdsfQLLpVYfhDmb8muM168Z0jlLMvEig07HNwGIoEdtOUYDiq2Sh1AvX9bF1U0h79VxKOfaebp7K8H7FzeNbNeFQsEbA0aqpv3sLtgM5tIQ4jsfTk22jr8FUf7nEbXLs3fupsu+9sgA6s3DIgwe/HtHP9gF6EoEPQ26XJpoJU84wKeg7Zn9kBHlFOWFNx15aCQxWa3yuNntEoewMZjW0WkyqpUdi3QYD2VY7DA0LM6RSa0+5PnBsUw4XZakCY68v7VbFVZ4oobf1aT41nhyu6Jx23E4wywNdMk2jUEhV3OJbkvx4wwk1rcX4XqAsGLSb/HIAEVpWeu6AV3iF0HPLQ++HJjtIjDW6YeGO5tLlEVmzfgKhVoP9s+hw0JU8NMEN+ckxLgo/ZOvlB9xboSQiI4VzEo15JA1bL8yTRqj/5NGThlgTHR9ZGjCHbevZ3vysPFCiVPq7UEFqRCvjlLCDGECoVAzVQnS9YkENQ3uxPBAtivWY/J8u0ft+rO6TZPvReaFcbHgDLf954908rzXck2T91t/oj9PrNP6E7exDqYUxKJH9dE2aq2RVoK0Z8HJUp8PjMptwhY7RvUweBcHle5g8mmlhEd1uXm0pC2s+qyi9/3jyBS6x8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?33vxurQvkRvV1I8Ea8CHZ+xcG24+yLCri+Z6c4R+gWh7QNve0ryZIjmWOP6D?=
 =?us-ascii?Q?N8oJn8xFFkg2b4EqP2CcUZl+2UdnlObKHIYh6Ncw+Y2tZ8Ic5BrA+77CPdUw?=
 =?us-ascii?Q?iYBmTdFUvwQmg2D+KSgvRbvn9okMetEYUa7SyuZWmGY0mrkT59mHDGc059/Z?=
 =?us-ascii?Q?/ek3wapis+TAqtnR8x0sX5C4RBMDabBzMtTYWmdhxbvz3GcTuaMW77sFWfO2?=
 =?us-ascii?Q?DRUqJRstDcBQRH+8uUZzhCC+lTUpSdYTcnciu0JCcEKkAynYycv19htafZYj?=
 =?us-ascii?Q?du2VJSyw0jF24iUpBU8ysr5EFFNTZzx6gdflemH52HBFrRJ3CzGbMG8I0Pmc?=
 =?us-ascii?Q?laZZhpjhdACEEqXsh6NRQJMiuz+kAZe/+NYj3TTmOqGBpJdUliCnL8xdv2F2?=
 =?us-ascii?Q?KlEdNSZYSRSqFMf5l+5sAdVRXfXH4eL9vplDTty+SwEQZudlxEqrxKtHwwzi?=
 =?us-ascii?Q?TX3d182dG+urL2AypOj4ZgldgI9T6gwbC5wThsZse6b3lTDI6Y7q4tHfc4Ph?=
 =?us-ascii?Q?2xvZLN2Te495LzIMRiAKLiXI92viCQtSFYQtXfvTduCsH60DGO28Ph1yabKp?=
 =?us-ascii?Q?Nz6qbMklLTeNOT3opVkFS0+/xYw6TOrJbDkrB9CQTPNxeYO43E1lQIx3uRQN?=
 =?us-ascii?Q?9IINoSibpX5gqQY7Bhd4hAWNxTQz76nYR2ZBbedtfhH92ROZt7kC5HbU/v9e?=
 =?us-ascii?Q?75mb2NVfEd8BaCEIyR0ysSWnxJop7wfJmXE8+dkuxyEZ9XzrZpRZNxR6iUFx?=
 =?us-ascii?Q?Cuekcx4OqnExFUpc9trGMIg2jg4e+eE5bJ64IgwT1B1SUDkpTB9ZkDS0Jsku?=
 =?us-ascii?Q?gCplE0KLnN2HdTYoDDJJxMyzpWPY3UjmXUPdhaXCL18l76SZkSx4Jn6MPnlY?=
 =?us-ascii?Q?xYOtkLXC7oqNSWvBFXaKIoEBR8yGikHwhENIYRCvtPj58ritw0VXB4pt0eMT?=
 =?us-ascii?Q?FlDROyE4MVqJeKlr1KSi1kTz525PJh/1keLD5VMECNYtUOsB2T3edzju/Kyn?=
 =?us-ascii?Q?dcZyaubne2dqqNdrnK2sEmRKpZlJMLE5+ErtaVa/eh/CCWXiHiRxbGGhvO8+?=
 =?us-ascii?Q?UUWMvSJsTj4RZi/ChZO1QbR9CyHGrjiLWmEdBKGl5S0tM8wbcbgtzv5+aqvP?=
 =?us-ascii?Q?jRz1mcdUeDqOuExclC8WtnqIAJVeiMN9NozfrwtfyThPvjRtcDCY2KhfBVv8?=
 =?us-ascii?Q?lWB/DKhMZG3ywAAqEh7lGES6Zc2TZC/E0HQTCOTIXNnXzDISYijiBMoiRLvY?=
 =?us-ascii?Q?kgcBWg4wstb3fqKyjhwFCldOdmVPgWeW2eQroqvhpMTHcxedR0hG38tzqIxu?=
 =?us-ascii?Q?pLvNWtiks/PHyv2+OQX8eAOHYCvRWI/vSx8O0w8E90v/uhbojsCMQ3wqn2ae?=
 =?us-ascii?Q?a5SvBIw+qCHYffUxVK3X/V36Xsn4aryJLp4SoMEUxMzYqS9aU7nmK+hQNnvR?=
 =?us-ascii?Q?ntbOTrUJNn47iWPVvCfBUAYr5hHWrt/0AKeiOMJgYa9HMVvL63faoogNmvnT?=
 =?us-ascii?Q?W17vGfFBXrh39wid9kKZDwAYfxtqxrzchQ9NMsLr3TH58nDFZ5+tj0dN/fCm?=
 =?us-ascii?Q?t2cVV+PPMwuPmS2xkFKIsc2kRGueL+Fnzp1CHd2jmnMTYfBLB2Y2o3PKwwpN?=
 =?us-ascii?Q?604WEGJecwH7JAhhesscx1NBbfld5kfgfdYAnXT57MyliV1c/MexPUzv6G4E?=
 =?us-ascii?Q?XOZI552upYvNsjKcIwxCMHfN4ZjYKbm1/8ZNTzb7CWW9G9AERlrct3GMS+Va?=
 =?us-ascii?Q?WXqsaVekqw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qzjIV9VH5fIM6/nS+pFoTfAJsIO3mc9HPJZ6Mx+tn/W52Yl5QRNlvnqV3CBmqylA42xi96IM1RteaRRopCO2RvCK9QrIIkSmBrCEBBp5/XVj/v2KSXE461mUl7x1xm9ZTLyfypIWN0hzLICHSUJAl4u0/SHw37bH/Pa/wYcmgEvGBJSTd8WGX+RNtSj7v6E6Hh2tCKQgn1hU7M4eX56W+U0N/YcBdJ5TNjohtV7ETh1XSUwPgh8gRAha8mI6ihB7+lah9/I57XhBzW3joIklSzC68dD6YfY9lIkqIQRQPVmohrpUjph+hH/w/L2MeN83rSSV3dPp6SXVYdsr9fkK3g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b667069-a418-4de0-f82d-08de9c471a20
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 06:03:52.7530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UUXJhtWQHNyx4GUZgYvzcKYfNd9lBjyybrmEySapfAQ6ApGYUM8EqeCKpLeY4q/liU9NHhdOBlJ/KYv2Q7trqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6673
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E0B3D4173DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, April 14, 2026 7:03 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>; Manna,
> Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
>=20
> On Sun, 12 Apr 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> > Timing registers are separate for CMTG, read transcoder register and
> > program cmtg transcoder with those values.
> >
> > v2:
> > - Use sw state instead of reading directly from hardware. [Jani]
> > - Move set_timing later after encoder enable. [Dibin]
> >
> > v3:
> > - Replace id with trans. [Jani]
> > - Program cmtg set_timing() along with primary transcoder timing.
> >
> > v4:
> > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > multiplication. [Jani]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 61 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> >  4 files changed, 98 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 403f9e10a8dc..a3db1368bd83 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -4,7 +4,6 @@
> >   */
> >
> >  #include <linux/string_choices.h>
> > -#include <linux/types.h>
> >
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_print.h>
> > @@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
> >  	if (clk_sel_set)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> > +
> > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state, bool lrr) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> > +
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
> > +
> > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > +
> > +	/*
> > +	 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
> > +	 * bits are not required. Since the support for these bits is going t=
o
> > +	 * be deprecated in upcoming platforms, avoid writing these bits for
> the
> > +	 * platforms that do not use legacy Timing Generator.
> > +	 */
> > +	crtc_vtotal =3D 1;
> > +
> > +	/*
> > +	 * VBLANK_START not used by hw, just clear it
> > +	 * to make it stand out in register dumps.
> > +	 */
> > +	crtc_vblank_start =3D 1;
> > +
> > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > +
> > +	if (lrr) {
> > +		intel_de_write(display,
> TRANS_VTOTAL_CMTG(cpu_transcoder),
> > +			       VACTIVE(crtc_vdisplay - 1) |
> > +			       VTOTAL(crtc_vtotal - 1));
> > +		intel_de_write(display,
> TRANS_VBLANK_CMTG(cpu_transcoder),
> > +			       VBLANK_START(crtc_vblank_start - 1) |
> > +			       VBLANK_END(crtc_vblank_end - 1));
> > +		return;
> > +	}
> > +
> > +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> > +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> > +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> > +		       VACTIVE(crtc_vdisplay - 1) |
> > +		       VTOTAL(crtc_vtotal - 1));
> > +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> > +		       VBLANK_START(crtc_vblank_start - 1) |
> > +		       VBLANK_END(crtc_vblank_end - 1));
> > +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> > +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > +	intel_de_write(display,
> TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> > +		       crtc_state->set_context_latency); }
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 660ec513626e..53a44f505dd2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -6,9 +6,12 @@
> >  #ifndef __INTEL_CMTG_H__
> >  #define __INTEL_CMTG_H__
> >
> > +#include <linux/types.h>
> > +
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state, bool lrr);
> >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > *crtc_state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index 4a80b88d88fd..f7fc812d8ef0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -20,4 +20,35 @@
> >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> >  #define  CMTG_ENABLE			REG_BIT(31)
> >
> > +#define _TRANS_HTOTAL_CMTG_A		0x6F000
> > +#define _TRANS_HTOTAL_CMTG_B		0x6F100
> > +#define TRANS_HTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > +						    _TRANS_HTOTAL_CMTG_A,
> _TRANS_HTOTAL_CMTG_B)
> > +#define _TRANS_HBLANK_CMTG_A		0x6F004
> > +#define _TRANS_HBLANK_CMTG_B		0x6F104
> > +#define TRANS_HBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > +						    _TRANS_HBLANK_CMTG_A,
> _TRANS_HBLANK_CMTG_B)
> > +#define _TRANS_HSYNC_CMTG_A		0x6F008
> > +#define _TRANS_HSYNC_CMTG_B		0x6F108
> > +#define TRANS_HSYNC_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > +						    _TRANS_HSYNC_CMTG_A,
> _TRANS_HSYNC_CMTG_B)
> > +#define _TRANS_VTOTAL_CMTG_A		0x6F00C
> > +#define _TRANS_VTOTAL_CMTG_B		0x6F10C
> > +#define TRANS_VTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > +						    _TRANS_VTOTAL_CMTG_A,
> _TRANS_VTOTAL_CMTG_B)
> > +#define _TRANS_VBLANK_CMTG_A		0x6F010
> > +#define _TRANS_VBLANK_CMTG_B		0x6F110
> > +#define TRANS_VBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > +						    _TRANS_VBLANK_CMTG_A,
> _TRANS_VBLANK_CMTG_B)
> > +#define _TRANS_VSYNC_CMTG_A		0x6F014
> > +#define _TRANS_VSYNC_CMTG_B		0x6F114
> > +#define TRANS_VSYNC_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > +						    _TRANS_VSYNC_CMTG_A,
> _TRANS_VSYNC_CMTG_B)
>=20
> I though there was already feedback that these match the regular transcod=
er
> registers.

_TRANS_HTOTAL_A         0x60000
_TRANS_HTOTAL_B         0x61000

_TRANS_HTOTAL_CMTG_A            0x6F000
_TRANS_HTOTAL_CMTG_B            0x6F100

I am not clear how to match?

Regards,
Animesh
>=20
> BR,
> Jani.
>=20
> > +
> > +#define _TRANS_SET_CTX_LATENCY_CMTG_A	0x6F07C
> > +#define _TRANS_SET_CTX_LATENCY_CMTG_B	0x6F17C
> > +#define TRANS_SET_CTX_LATENCY_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > +
> _TRANS_SET_CTX_LATENCY_CMTG_A, \
> > +
> _TRANS_SET_CTX_LATENCY_CMTG_B)
> > +
> >  #endif /* __INTEL_CMTG_REGS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 58a654ca0d20..bf58ae5d3535 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -60,6 +60,7 @@
> >  #include "intel_bw.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > +#include "intel_cmtg.h"
> >  #include "intel_color.h"
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> > @@ -2753,6 +2754,8 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
> >  		intel_de_write(display,
> DP_MIN_HBLANK_CTL(cpu_transcoder),
> >  			       crtc_state->min_hblank);
> >  	}
> > +
> > +	intel_cmtg_set_timings(crtc_state, false);
> >  }
> >
> >  static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc_state) @@ -2814,6 +2817,7 @@ static void
> intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
> >  		       VACTIVE(crtc_vdisplay - 1) |
> >  		       VTOTAL(crtc_vtotal - 1));
> >
> > +	intel_cmtg_set_timings(crtc_state, true);
> >  	intel_vrr_set_fixed_rr_timings(crtc_state);
> >  	intel_vrr_transcoder_enable(crtc_state);
> >  }
>=20
> --
> Jani Nikula, Intel
