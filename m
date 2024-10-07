Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01A99938C8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6071210E425;
	Mon,  7 Oct 2024 21:10:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngLe+GwH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE4510E423;
 Mon,  7 Oct 2024 21:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728335408; x=1759871408;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n/WV2pIxdP56kCjIECeBBbpDj4gHWlwrjsxd0MUYXso=;
 b=ngLe+GwHjmBHrXJLKz5RF5/1mcURTK1t1A4x3ghRoQw/1i1Au1xbB1no
 61fPNUlakgIPlx57qAjE9lpWwLfjnZJffV5W7u2Z3t7HbF3amZJWfqiMz
 A5g6IYem30AykxAcm4sX1A+h4pb7zJQS94C94314DQoPrxrA2weM1bc0v
 rX3O47DXkYV+FC6J0lpuMj6Jij7rp/BWAKIAOFvj5DXIy8D6bxVmG8xQI
 F8n8OndUDHp9AsMGXJ6QXOvGCu/RJB73qLl/9TnB0Iq2gLciITAhLuAE3
 CdteKKLf4hKTLzjAzzr5+TI/3PHRMp5yVaNvKw4e5Y2sVkdJtp+6gWTBK Q==;
X-CSE-ConnectionGUID: QB9GIfTbTw+QJGfpszjjIA==
X-CSE-MsgGUID: 5Ee6/W2pQNOBytGgYdQpBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38865792"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38865792"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:10:08 -0700
X-CSE-ConnectionGUID: GJ5QGHICTsa60pPO7VDj6Q==
X-CSE-MsgGUID: 3oC7wrqsTL+kK1to2a7mPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75856722"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:10:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:10:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:10:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:10:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:10:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LEOrotRPu3op7+/hv6hbmX0vKSwAxTIIrJLEDaLXpcCmpfYpgusfb+b8ep57pBZlN0LVTromBA24fpHLO5tnE9fiDq50Zl0PTXVJAy3lcolTBBqGmDE4VYNBAOwCv0EUUUM7aWht+adDhScFEX/bXrrurdLjRo3yTWQngH/j6WY9YwXwmGvjkZdGlxTYl4YoMdNF6xHgHeEpQgfv5XSV/ciFDl/e9sqA6A7Trj0PWak8wP8O7XOUcz1PHtnBfFhEgxbRRYEl5sP0RvCbfWIjZB3VGQWsTWnSrr893uCVCL5ZZkRqS4d3ZUOhHAIojK9d3QjPJ231CVQE3XD97kDj0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73U/qfOiq2WjnTuNl++fo3+jXOLp6mAWAsp4dPMuxXU=;
 b=VziQ2hCpsju/ySCRyATOGa93uWbRwGBdVx4M2to50moprtWC/fD77m3Stx6WM47nSvlkHfG2KOG+GyY62wHP1pOWG8pxI8HEKkeiV0NOzZSR/3RriLad2whDxUpe7O1+h/XWk70nZbek/nFoP+YtlZh61vemlJp6Q0jrxjcQpaKr5x2kHjRlPBcvfXTcYksygUGK2/u9mc7T5Lm4lkoPVvx5EakuhRAnk1mxk48AE55aEBfEacXouVsbXd0z+hEr/y6qgzvjJ/xjVDOQDrp7ZTV415jlJWOpTjUHWKemr4NJIx/9xPuEFYGNufj3cvESQmzQotUHSVlmmOif55iQZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SJ0PR11MB6623.namprd11.prod.outlook.com (2603:10b6:a03:479::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:10:04 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:10:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 12/31] drm/i915: Remove lingering pci_save_state
Thread-Topic: [PATCH 12/31] drm/i915: Remove lingering pci_save_state
Thread-Index: AQHbDsJ1ilDzZa7vVEqAWjaDvmSecLJ72s6w
Date: Mon, 7 Oct 2024 21:10:04 +0000
Message-ID: <BL1PR11MB54451C620427BC36B5056ECEE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-13-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-13-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SJ0PR11MB6623:EE_
x-ms-office365-filtering-correlation-id: f0a082ec-6aa2-4b6d-01a3-08dce7146a07
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?5HMq/Yhx2sw1jMUDKi5u5VbXu0ODm51TjGQoKE/rrC4x2YHPZwtyEti++v?=
 =?iso-8859-1?Q?mYVAznQziZ8FNM0uI3w9jYYQ3vFv/h2nrchkU4EmIjj+g9X7x3+jMF2TGg?=
 =?iso-8859-1?Q?3bfd/akPyHBd7DlylQsJiJZ/Hv4oecQ60GmklU5TWwX10dyhBXSGfdp/dl?=
 =?iso-8859-1?Q?FfTh92DXK9tnlAmcSl221TB0sFSTwqkmFJHkJwE1UupIat96JJ9wxYy5NJ?=
 =?iso-8859-1?Q?4az6LepJe5LMl+Re9OQ5eIKGw3TQgC2A6QA2tmWm4dNFtgH3C9+8dl/kDc?=
 =?iso-8859-1?Q?zAVDFt44eySYA6s0O+0/EidYwbSvtOUu5Ag1+MxMjInrcuy4NiiJxkPmoG?=
 =?iso-8859-1?Q?bU+s8lIx5NgTP+MshVWc0vsj6bXMOcP1sAZep7mY8Skq8sZxYe0Qg4QgSv?=
 =?iso-8859-1?Q?fGihAnlruv1v5f2y2IYILaNCdaO6r1wGR9fXA+p4FTi7UNyBfjQVaKuoj8?=
 =?iso-8859-1?Q?d8E6eMy1p+M06cl04AU4xLQLa2fl0r91MQEvFMStq2CfqPJWKx+EKKu+J4?=
 =?iso-8859-1?Q?pDDn4lnc2c0zlU2LQJ7n2f+2Pmcz3JEQcmARq5nWs8sp73AgnVV8X1JuGe?=
 =?iso-8859-1?Q?XxOibPneEeGyB2j7wLeZCc/sgKOMmjr3Cs3Mt/ocp+iHJaXS6rx5q4+W7t?=
 =?iso-8859-1?Q?pTLv3+DNAcgBnxS2PCsdx1v5HQLKOMhWURvtz0nNYCxKNknp3te63dLJWu?=
 =?iso-8859-1?Q?A1jWX8npMqiS2xHZZFW733LdId1o2ijyXRX5ZUZL3fMOMegKRGga+MTVKr?=
 =?iso-8859-1?Q?GgkNCE4KVx2on2iSpONSn/oa5LuoVv4/M4mY5QwwIeVsjrtZTPYI0VyiwB?=
 =?iso-8859-1?Q?XgVP3yDiDcZywaYuhmUi6EFno6mQxYwu8SYTNENpi+b+eX/FjkVdB8h89z?=
 =?iso-8859-1?Q?d04QYofK2CDMzLCAV+OfJyo9TZTW7NFdXHOqn+vW1Afo0cWG9tt9JMRkTY?=
 =?iso-8859-1?Q?o08QcNsZiuxughtRBc9sNGcaiIejcsw383A1jLqz1MIaMkk/EvgXyueVsD?=
 =?iso-8859-1?Q?1fabWuhAZIr3EVytHwFDbFfVyG6r9uyWFRl/XimrFBNYhlHICUBjRpY4ww?=
 =?iso-8859-1?Q?JnlDZZ1+VeU++Bcuhc6qhuyxvWspmIv8Qn1Z9H8kjD6jw3gi3OFSN5K8ho?=
 =?iso-8859-1?Q?D117AHTsPhk7dSNMZgNd+xMylwlL8oC2x+U38G7btWPMTSYMVmSbCjt4kI?=
 =?iso-8859-1?Q?0w3P6dLOkdqI7bYL1M4zhXxdjxLiOjkHgWouZqBQselYEuJKzKmAf3VFft?=
 =?iso-8859-1?Q?/4KzwHmqNAjlOkw4D3giR0xn2ogMEejiPPn4jAL8//uJI2zcQAAWcVOQXS?=
 =?iso-8859-1?Q?SeBlurXKp5WXl9LfWPG4gmx3Z7Ur0hfC5nt77BheHVsLbSOWlx+roNcM0+?=
 =?iso-8859-1?Q?xY+70phmFSxJy+8VxdTArXS4v6E3yBzA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+p1HurLO69gdxL0LKy/sL/XTwzV+wKPIbguyUzsx9gcbfktgclJ5A+gYMo?=
 =?iso-8859-1?Q?0eEDOlokcanEFuJ3Exmv/64Sl0lgjcZYJtUla04hxZJM0ByDeT5fTWGJHg?=
 =?iso-8859-1?Q?t5MRfocQF9SEByp6E4rDu5txfBLzgt22REv8SLlAh6bEANA7WDFkzZwn/A?=
 =?iso-8859-1?Q?nOYcRf0dSkrPcFCORBoLk5GtnHDRMcHS9mxQ5K0J0VT24Mtwx0fiXHscTy?=
 =?iso-8859-1?Q?orYT08h+7KjJvweqScj4tmOTRhmE9roG+lu95c9O2QR6xozIijn/drgwf6?=
 =?iso-8859-1?Q?RUBAnCZdhYG1yW2RE9BGwBf7b4c42v6EsUVWT89XInGNnUWIF4wk2EsBq0?=
 =?iso-8859-1?Q?UoWsDCaAnDqN81oY/W54lXafoHv98MSniVnmVepl0fJcBGWNaQIKrgDV4u?=
 =?iso-8859-1?Q?TtP2GQZMC7Z3uThDnFlwNYv/Q5V0LSODqCNXuaSuPyOVE5Hu49EVmaiAHI?=
 =?iso-8859-1?Q?jTcuBBbwqw7X/2avIGQqVk63ULvyG6aWnosMhWY93U3liX7Ki4feh7gBsS?=
 =?iso-8859-1?Q?U5vR/TY5MnNwGkBL8Jv6E0OB4JlM0s7W/+acOwAR8u6Ix+YvzHoo8kYT1q?=
 =?iso-8859-1?Q?MJdtJJ1QZUtATrTuyuCP34ulEc1W2AWrbLlXVHS/YFL3T6mQs/hs4IlY4o?=
 =?iso-8859-1?Q?XuwXAIMhTwhEcI/Gp9C9R9k2c2vEBgstLqvOPUW4c3NeQCmaEWC1mXGGxZ?=
 =?iso-8859-1?Q?vB1UQjhMG8aWuwSLwcmDY8ss7fQynEWtZDrObmnsmvNV3oHPO2xfOQySct?=
 =?iso-8859-1?Q?LPuNtuV9YERsvz2L+s4d8cwFq3HOpbjM1JWa7KTF78Ex+UoO4lAyc4StuU?=
 =?iso-8859-1?Q?iQVspgpU+rJqmOHzETsvMG64VdNZznjOpZqg1CdIJuQcOZGzyDxebcKQ9E?=
 =?iso-8859-1?Q?zBVaPaHJrdQdAeTg6c6FPhaQD+7cBI5+87dOgXlOLyfGtzL6WfkS3t6dEY?=
 =?iso-8859-1?Q?s3hZTY3/t5Dzb7C3Rgl8Uemn+J5uctk0ANi+zkIGPAI5pY0ZyRo+X/Hmzf?=
 =?iso-8859-1?Q?T5tPli3O1OImHhJ9OseA2a5pm++gRxn/iL8Or/GxDMY4KU1O9I16r5ZDYX?=
 =?iso-8859-1?Q?q4JhOtzBfohWtt7FlS1auD3IbZ6RZkNP0EIeb613mFGT0CmVfkLSBXu34F?=
 =?iso-8859-1?Q?kBQD8Toxih5NOdoZ1PHxIoDvCJzes64xH9BZwLxH19mamVqaTRXtoOe7sD?=
 =?iso-8859-1?Q?Kfb2xmy0SIET8D+Xw8475FLiYA4LWn42MYU970sIFDtxdZGpchTBQL//qD?=
 =?iso-8859-1?Q?DzI3aXhprZBCBp0JyHER0mS6PR5be1+utsb0UgmOv7XMHvvDYhRQnSJ70s?=
 =?iso-8859-1?Q?j0uVXJQsKZm3QETaXc+lHkrE5lOQH2uFsXdATNKBq6TtWtXybW2ngRa+lo?=
 =?iso-8859-1?Q?TZlEA5f0HUqWNZW90FL6Fk3Xzb31h4JaRpKbzhm2rDJuO7ZgXeDeo0ffcx?=
 =?iso-8859-1?Q?0BXTQ/OqfwJPqIh8Z+4v/Op7NPjLvDAVR/IBhiiGntAkMqMIYQx07vEmv4?=
 =?iso-8859-1?Q?L7pxu7oK6rJ9O8U84GNFfssUPNGBaz5iKu48xtpkRGSWyfSYvL4NlEmgWx?=
 =?iso-8859-1?Q?mVE72zm0hbBeBpuqzMeiHYbo7ZjEnufYYNlRAF5oM1LQgbTEm2Jwqjs0VT?=
 =?iso-8859-1?Q?Qn83e29prnWTNiLM5WFw7jxc9lPZjthfl8R9nG7fJTNpwIkmTBp9ZHLA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a082ec-6aa2-4b6d-01a3-08dce7146a07
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:10:04.3339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iiZJ6IYbRN3qK6DRhFt9JvccjX6zV1fltNMKWdsvTzp3GZ2Z+iHem571eBjKPY0CvQORryigE/YcEtjaAu7d9Rrx7wdMNs31z3EKRVphk/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6623
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>; Gupta, Anshuman <anshuman.gupta@intel.com>; Ville Syrj=E4l=E4 <ville.syr=
jala@linux.intel.com>
Subject: [PATCH 12/31] drm/i915: Remove lingering pci_save_state
>=20
> The pairing pci_restore_state was removed by commit
> 'b7e53aba2f0e ("drm/i915: remove restore in resume")'
> to fix a hardware hang in resume.
>=20
> Furthermore, it looks like PCI subsystem should be taking care
> of the save and restore here.
>=20
> Remove the lingering/stand-alone pci_save_state call.
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.  Though the wording of the commit message may
initially confuse some people (me) into thinking
pci_save_state is now unused and can have its definition
removed, which is not the case.  I can't think of any
better alternatives, though, so I won't block on it.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index ce2dd03136d3..4fc9d8bce1fd 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1008,8 +1008,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  		intel_display_driver_disable_user_access(dev_priv);
>  	}
> =20
> -	pci_save_state(pdev);
> -
>  	intel_display_driver_suspend(dev_priv);
> =20
>  	intel_irq_suspend(dev_priv);
> --=20
> 2.46.0
>=20
>=20
