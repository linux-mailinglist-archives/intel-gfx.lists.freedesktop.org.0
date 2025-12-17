Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A90CC5DEC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 04:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0D710E9DA;
	Wed, 17 Dec 2025 03:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PcQyzhUD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E6610E36C;
 Wed, 17 Dec 2025 03:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765941025; x=1797477025;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gvXfBMNx0x/tul2N8N0d/seGfhOyhQeuGP5QONerck0=;
 b=PcQyzhUD+/4Xn+aPGqn1ZgAwnRSzYNX7+0j5v4dlTCvnDtpgrOHj3dft
 cnMR0PX+jS8A1+qTqeeOXWkTY74RSYmjFQqPAS7pcnc6biCHDDlGzJJ8g
 eMMNvC6GcepF018pms9mTKyQlT6xrSnqjZ/SnYgTtGqLvZL9wU8bOcub/
 2zmnASGz8q4npMDjGAcVJhiGM1T86P99jprpCqIV3tH/msZD/Tleh/6K0
 I9ObbzebOkwTSDf90JrbRv486RLCYDWGZZ8USfEnfCJghJ/HebGtBY9wz
 s7y92gSnThGQ9e8m14mbJDevx+0lGO0PdU/eJaMTlLVUZKvmEwIsiCDH4 A==;
X-CSE-ConnectionGUID: BBN7mI8rQ2+1+g211OdXpA==
X-CSE-MsgGUID: otaEqFkLRfCEW+IuC6jjQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="78179509"
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="78179509"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 19:10:25 -0800
X-CSE-ConnectionGUID: D2aEEHW5QTy10eCVQdmUXA==
X-CSE-MsgGUID: uG+IAOp9SjquMKsUH6H1gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="198182746"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 19:10:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 19:10:24 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 19:10:24 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 19:10:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MrajDjagiWtdAFcfZtIV17PKfKPdQZzjPlmzm0kNI4TQS44UJpD/7EXDwn5b+AbwX4BOxqZjE13ezBTBs2ZAEXTJJOYfND6tOYIpcWZcIC6zcrWZmzg2CF08ATqEq1f1FR8Dt1m++qYV7ml+s9LlWVctkhAiTiH1ImB9dF99mDPdWvbSTTFmascw7BcRVhsH9ypOKCDscyh4MyEHncvHDCs1FA2G5fi2Csk3elHVIk9zdKG1icFt29D7c2jn11M031HP0fWDY4AjgWTQ4QKADTUXySi6t+5bhz4jvLzGbbPw66tQJ/+SgsmvfTAcC55wp2Rx7jNRLD3KVtIPIbEq/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlvMQtAQqfFKG8PG2zuRAjEqtm7Upa/cmx+8HaA/va0=;
 b=aeAgPTJUCaokEwpMo1UldgqJ3spi3O0c5dt6Gh67CKSxNdodioXB2ezIWZELihmNHhuEy71aWnwDE1Ir8027rRCazNEqTxwJEMNIZJ9ZVeTBGvkmNFfpc1QvAQiyZU2anK1B6NE1ySho2ZwtHw72ce6dynixTIdlSJpXhB1eK+fAE4kKfx1TV/4kOLimBG+uGtTZKlBpMulw7ZxT9Xs3XG87TKG1NMmc3Ntl4WcawS/frE10xowa4aSyKBmEkV1laRMeQ369QT6jz3xQg8rPdFUw9h41Os6YclyjR1jUDcRROAJ3CL68k7EjC/iITnLXyCVWVT5snC/p2fz6Vg//kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW5PR11MB5883.namprd11.prod.outlook.com (2603:10b6:303:19f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 03:10:13 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.9412.011; Wed, 17 Dec 2025
 03:10:13 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helpers
Thread-Topic: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helpers
Thread-Index: AQHcaNUpsonZIsbj9EOc9NN9WgiDr7UeONcAgAYXuJCAAOJ7MA==
Date: Wed, 17 Dec 2025 03:10:13 +0000
Message-ID: <IA1PR11MB6467A18E06F7FAB0DA16D6D0E3ABA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
 <20251209062527.620382-4-nemesa.garg@intel.com> <aTxEMraPc0HmKBff@intel.com>
 <IA1PR11MB64678E5C071E2E89EA4E1E05E3AAA@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64678E5C071E2E89EA4E1E05E3AAA@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW5PR11MB5883:EE_
x-ms-office365-filtering-correlation-id: 742587eb-c207-4b7c-fb69-08de3d19cbe6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?0/F1md74XOD+qSBy8MLbcuvUFgyq4zDoagzzPiWwAvG1YknmrylFtprMl0?=
 =?iso-8859-1?Q?nDlIVcfaUM129Y8TH7eaiRhy4oaY6iZfRKVxqCxynXa0dkOmR2B0aYjYW3?=
 =?iso-8859-1?Q?+fuSqGHrPAqxRW3bFzoE8VA1OsBXi1t+2HT05P+2RaDd1LLvh0j/I6JJ40?=
 =?iso-8859-1?Q?Jl0vnAZkThLhTPwTM1T5zKbO35xvF5fs2soCTlKpZijsMmoQQ9QZhKWTfS?=
 =?iso-8859-1?Q?Qv46HQcgwZu+3yEkeVZHQZyESRglV0QmUWIKsPYu6OLw/neqF6aFrT8AQp?=
 =?iso-8859-1?Q?TvVi8p0PkRVZ4iK5DHZmEZrd1EwKNWA4VK0c/C1ntQ7c8UCAjXNXun7CEW?=
 =?iso-8859-1?Q?CQQzwwTh80ArmkaSO6N60sDhAL/oN2wq5jVWTqG+6qwv3OIm652fihbbtu?=
 =?iso-8859-1?Q?Wun5iVDFiDmv7HOr2NVfMnaS0WI9A65GrZPe7kcanC0hfUhhq4OKxrfOgD?=
 =?iso-8859-1?Q?MR7Y7lgc51OW0vAPTG5sL65ipeOzPFs+b6tC5/QCvrPQIGLVTOsEJ0UILU?=
 =?iso-8859-1?Q?BBamqM698b5VSaVc8RtEJFH2F7IhuYeVpoL1ZQqRSX2xjsO7wo+yhy9rQw?=
 =?iso-8859-1?Q?9/YaVae3YKBJWr9GRD/Yv6NF983qjqww8XHNCoyW9nE7zs5jHnnjMzdG0Y?=
 =?iso-8859-1?Q?WtcPTqaH6pQvkk1cgK7L0fIf3VHRdE5gqlCvn4RNzKp2XSt9pyiG2rwvGR?=
 =?iso-8859-1?Q?JQ8sT5aTi/n2zL1uXZvsW3L4zxAhQhEzb5OkpAS1OT7CS3RvkbDRjhmYkM?=
 =?iso-8859-1?Q?SdlE3m4QrT+Lvx9WdMJPzO8RATBg5T0rAMM2S1yDEKBmFLymK/5gDW8Ku9?=
 =?iso-8859-1?Q?dKEaJ1LlxFT81LSD3f9gMu81C5TANDmFuCNIYKa8j5fPhQ12xUUPRvDYGO?=
 =?iso-8859-1?Q?Dx7mxETtyHbmgbxnVBFDFSNjDJaRBqCxXFrnxXnwoj/rhsKZxz4Bm9b4S2?=
 =?iso-8859-1?Q?gQcE0JsTRiitRoV9wucYxBOFmDP4Ta4wPfSwVtCDv/7n1mKUuM2rEWfIT6?=
 =?iso-8859-1?Q?jU3DpKCupVYuK88iFUi1pdUDfDR08EfXx28CbWPOUFkqiwoGsXlIZamGOR?=
 =?iso-8859-1?Q?vF4UeS9bBgZ98KFT6yQxvWIIEQBunj2R8Ww0GKi349QoRWsz754dALY7rP?=
 =?iso-8859-1?Q?BT4OP7TSOi8+qPyH6bBSBk8r0VQHIipNKBxEdeRY3729QbhAxbPGsIDQwN?=
 =?iso-8859-1?Q?y0afEONd+3avwiDay85VwMVdNM+l0eoQq3C0Fm8s+rbHUF2hIM3PYeQWNb?=
 =?iso-8859-1?Q?drVTKvKbUjL9ri4P5+YD1+D8jxiYe3OX8iua7TOmuyVBWYBq6Osk4ddBtD?=
 =?iso-8859-1?Q?hwUj77AoYlvhvbmkz2kX354EqEFMpKIKv/fEq9/hszYuluFw3LkZFCyxcM?=
 =?iso-8859-1?Q?JXHV0h26LvG5nKZIamp6JybThFW3hs7+8rhWjX7BoUbzF3KWYlLS54Yq/W?=
 =?iso-8859-1?Q?Lao2GdShJbzrv7DuTMuIVMIoB9XJ45mZ1a7YD1LCW7OkcWMYc4bL+t5Zcl?=
 =?iso-8859-1?Q?+xMD44HgOGi7pd2umab4WelcYewKij6VEZgo+l8LlNf2KFo75ZcG9PYCr+?=
 =?iso-8859-1?Q?EnybXtVUnpYFO5oc4zge9Ju5NLFl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?rGmvaW06s+QpjZAq3DvDJaPMtWwi8v4C6bDsHSl4F89Aoc7PjAfOJYqSlc?=
 =?iso-8859-1?Q?5b/g9N1YaPyozS2gA4Kt7KCcX3byp2FgEqo42h4sCPNKdgBcuOzKsFYBeV?=
 =?iso-8859-1?Q?ZVGOQ73UpAAPj8qS4IShE9K2lonCeDw0eXlUcvD5ooAHmL/bj5PgekSjV8?=
 =?iso-8859-1?Q?BbdW8L9fUoEN0uQYtZwkku0Iars6Ye4OMdqEyarbuYjx8oh2Y1eyiRl5TQ?=
 =?iso-8859-1?Q?P9XYEwz7Omev99x8PbH3pDGksJF42kd8syELL19nJifzD8BC6v83jVzBcW?=
 =?iso-8859-1?Q?MRcLIl99072weUOSY1T8HmIH15Y1xrm3AKdR9TJSkpZgMj0ZmdFpDZvkeF?=
 =?iso-8859-1?Q?3Ow5HGwqm0ogp1xFbj4Nc5KWLYtGOyaCPwDTFRcSjFNoVxrYaA/eiJQ3IB?=
 =?iso-8859-1?Q?Z59l8JytENOvmien3uFwMAsTl5BA28CP/XGeUu7FCchROT7agBuV0bNif0?=
 =?iso-8859-1?Q?CsNlIdp1sHtl7zqUX8OlmPZE15vnKeHjaNKkLs7D1IJMqEgZAesZ0ZQfTK?=
 =?iso-8859-1?Q?OFs81mYaGVoSglhDK9lGXv2Emrdb4Wd7D/ARTDeYGhjMShE+99QfRz9R8C?=
 =?iso-8859-1?Q?Qx6jOSbF1MbBp+NxWIP8qkycbuMe3fczsHO/KYvfXp32N2BhRc0IegE5jj?=
 =?iso-8859-1?Q?L3DmQfmwRJs0mbk9IwbBBvf5czBap2y0HpxVCGfy7bS2JVk3ud678lGzLb?=
 =?iso-8859-1?Q?+49Goe5dNtqTfzp/C9gIzDlIpX1BmRWFhEPZJJ6QReVz438eyGv44iTANy?=
 =?iso-8859-1?Q?+0tE9ts1xF1KAX3Xfxpa1WYzIIgBZNR+Dd8YucPg4gqGoxJc6Xt9nTI92v?=
 =?iso-8859-1?Q?PObTYSfF08dl8y9WJRUdlb+aoml1clVd70pskzRSfMMATakzpR97NQfV0n?=
 =?iso-8859-1?Q?mC9XUKNl390CiN+hAhVZg4AfecwJ1LLLd0gEIBTeyaV8cYbIvjGHbxCpzp?=
 =?iso-8859-1?Q?zUtXr43Z++YRJSJou5TJHXCb/GvhcWbYVPUf4G1mVhjxTs91h6lQnjjbP4?=
 =?iso-8859-1?Q?IZJb75QOlMYDpHWLkVRbfHh5wnIUJat0kk8Vzl1MQsV++q/lrYfXkncf6l?=
 =?iso-8859-1?Q?yHwMAjqjFozUDjB/cD1MGU+mtZTzpMg9P7TB5bOisw6BLk4NfLBJYEj7Je?=
 =?iso-8859-1?Q?6nSne6TXk6oD3igvb2Mk/taGEYUCnDF9J0s5qZRm+XnbW88hgZrOnkiAFP?=
 =?iso-8859-1?Q?0hmwdqpwwmmCIDdIz9q97zlRIgWg01Et0meAXrU6FaNZ0yaUAko2ed/bJS?=
 =?iso-8859-1?Q?5gFGvtgqjXmEx4uQGwumv/KaQ4pEZylJmoE44C9fqs7DwBDSZ+l6I+MnvL?=
 =?iso-8859-1?Q?9NlxNUbdBDgfvYS3Y3dNe/U6MImfkXV2X5iFCfKgKRVXYiAoWU6Nlze7y8?=
 =?iso-8859-1?Q?U7IVjKfLG6oyPL5Mb7nAAKxSsLuRJtUK3isrwYrWkHba2MpLtdYNQ57w3q?=
 =?iso-8859-1?Q?pUhXovTOiA9BbrcZsJwaHeaxhTiaAABYnUEUHAJEringIDbCn6I2Ip/kF2?=
 =?iso-8859-1?Q?2Wh0RloS6iTTgpI6pbET0wP8j4xc7SqcWmj4wZ1L5UpbPm6eTtZj0PS1Mz?=
 =?iso-8859-1?Q?VZriw1GaRtV7FkpEi3E5oPQVGQIrBBzEmDQ3uBpSLrVPi985PR3xxqyqL+?=
 =?iso-8859-1?Q?HY0npA0BofM7dW0NfmndvIg1d0Ko6Q2YV7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 742587eb-c207-4b7c-fb69-08de3d19cbe6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 03:10:13.7112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MmaQviTHpaS9UiRmZtaV8v+NBWgFmUHex3twUubwUfc0r9m6xe0nsBEdRNkNhaAVXGlShr4JdevMWDHHu85/AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5883
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
> From: Garg, Nemesa
> Sent: Tuesday, December 16, 2025 8:29 PM
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Syrj=
ala,
> Ville <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: RE: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helper=
s
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, December 12, 2025 10:05 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > Syrjala, Ville <ville.syrjala@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: Re: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF
> > helpers
> >
> > On Tue, Dec 09, 2025 at 11:55:25AM +0530, Nemesa Garg wrote:
> > > Incase of non-modeset enable the casf, update the strength or
> > > disable the casf through dsb.
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 256103d55409..7edfc8c2ae21 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7300,6 +7300,8 @@ static void intel_atomic_dsb_finish(struct
> > intel_atomic_state *state,
> > >  	struct intel_display *display =3D to_intel_display(state);
> > >  	struct intel_crtc_state *new_crtc_state =3D
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > > +	struct intel_crtc_state *old_crtc_state =3D
> > > +		intel_atomic_get_old_crtc_state(state, crtc);
> > >  	unsigned int size =3D new_crtc_state->plane_color_changed ? 8192 :
> > > 1024;
> > >
> > >  	if (!new_crtc_state->use_flipq &&
> > > @@ -7332,6 +7334,16 @@ static void intel_atomic_dsb_finish(struct
> > intel_atomic_state *state,
> > >  		if (intel_crtc_needs_color_update(new_crtc_state))
> > >  			intel_color_commit_noarm(new_crtc_state-
> > >dsb_commit,
> > >  						 new_crtc_state);
> > > +		if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> > > +			intel_casf_enable(new_crtc_state->dsb_commit,
> > > +					  new_crtc_state);
> > > +		else if (new_crtc_state->hw.casf_params.strength !=3D
> > > +				old_crtc_state->hw.casf_params.strength)
> > > +			intel_casf_update_strength(new_crtc_state-
> > >dsb_commit,
> > > +						   new_crtc_state);
> > > +		if (intel_casf_disabling(old_crtc_state, new_crtc_state))
> > > +			intel_casf_disable(new_crtc_state->dsb_commit,
> > > +					   new_crtc_state);
> >
> > I don't want to see this casf stuff becoming even more special. It
> > needs to be made less special. So I think it should get completely
> > buried inside the existing pipe scaler/pfit codepaths.
> >
> Hi Ville,
>=20
> For sharpness we need to call casf_enable during modeset as it will enabl=
e all
> registers related to scaler and sharpness and then we need to call
> casf_update_strength during fastest as only sharpness_strength needs to b=
e
> updated.
>=20
> Do I need to add something like this :
>                if (new_crtc_state->pch_pfit.enabled || crtc_state-
> >hw.casf_params.casf_enable )
>                         skl_pfit_enable(new_crtc_state); and then call
> intel_casf_enable() and casf_update_strength() from skl_pfit_enable();
>=20
I meant either we can have this check if (new_crtc_state->pch_pfit.enabled =
|| crtc_state-
> >hw.casf_params.casf_enable )
And then call skl_pfit_enable(new_crtc_state); or > intel_casf_enable();

Or inside skl_pfit_enable(new_crtc_state); we can have a check=20
crtc_state->hw.casf_params.casf_enable ) and then call > intel_casf_enable(=
);

> > >  		intel_crtc_planes_update_noarm(new_crtc_state-
> > >dsb_commit,
> > >  					       state, crtc);
> > >
> > > --
> > > 2.25.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
