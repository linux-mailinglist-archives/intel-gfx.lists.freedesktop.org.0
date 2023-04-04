Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F38B6D6D0D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 21:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA47610E78D;
	Tue,  4 Apr 2023 19:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E20F10E791
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 19:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680636179; x=1712172179;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r5FYt3XLzHdplS3yq9xENRBFNqoQEBcD4UypQcugQdY=;
 b=aLhcQulaEcpyVZrCKOTmV1bPic67z2sGOf28r54St1kBw9u52tMC4Zzm
 DcRwBO/y/UucMQjH2R/vkvVT49c0d9+vb3NGAxv6T0bOj3aSwRN3tnCb/
 1Y7X3QgYtzGsrdPRzMdmk+1bQN3KMbWjWMxEoARmSEPU5uOCR2iVQP4ON
 KztZox3oZqrObnkd2FKDSm5c9/xM+kTM9jYkRX6NSa5SEUjae8jnVQ/Lx
 hw+GBp3kHoM/PQf8UmFtD0S1I3cfgEqCs4TcOsITwvpm9cP7DddSOnYo5
 mWQkuQHbnTOvCkVp9XPLUPDZlKk4A+gKSCfKNMrRM+UDzEkrLjM/7AFuJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="341009543"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="341009543"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 12:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="663741352"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="663741352"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 04 Apr 2023 12:22:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 12:22:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 12:22:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 12:22:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJP+4ysCHSyOEoX2pOHTLPRFhUntVMaI+u8AVlwhSz+3SINeSoZUI44AdFcV68n1ikeSP5dqYICGjirv6wxXDkzis7ca/PlS4pfxwvAzvTi0N7CpLKKzvUAg1vsXk2eC90EBmB0ObeOoYPG8+A+h+jFCWZkElxfdPIBvBj794x4HdpD9lzMIyeQCtJ55A4o5npjXHS2OQmTG+th+PCQMtrls12HvclDILn9FP+/4wjQBZyU+9WgHqapJrNOmsaNXaUMPRkz6GvTV9d0/ltT4bnbsiZB3BgxOvEeW4XSngBJgJCy/Jcf2bPGAWMIP1bifulK6F9whYvqJPEe6tqmsMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sGmXplfzZc86HndAFnnvj7TPV726qNN+XmAkEI3L2gI=;
 b=lH0cQmGxMhNR5wDK8K8eGdT10OzzBNgQquIfTCOTS7Fk4qU4UmUQ3IMLA8uGUKeuw1lIE2FgWStx2g4+nW48Qu1jg62cyvBdQUnMMMrwxK1OiwsMOrkTrsEhZhIvQvUht4kuKzRmnV3FKcTX4x2xGgT/vx7oY/f7uu+roRQbHbrnF1PAab5ZyvYY/HjbhQ8TiU4J/DDaEVt5yzy3hnG4oVXt0Tyd4JSVar9GS/0hz5mp8Dabkh9mHS9jKRQ496U8zdG0LMSW8pgZEqJvVCoCRk4tDVUpx2ci30nIgbqLKvzAROgn3ewe+EklQ8XuxPF/XJ3zw3yVjezUvHCVFBnPKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH0PR11MB4872.namprd11.prod.outlook.com (2603:10b6:510:32::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.35; Tue, 4 Apr 2023 19:22:54 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6254.030; Tue, 4 Apr 2023
 19:22:53 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bus
 and pll programming
Thread-Index: AQHZYKk8DcFq6QWoA0igrhsTJ2KwV68R6E2AgAka6wCAABHKAIAAFO6AgAAHKwCAADgv8IAAFNYAgAABARA=
Date: Tue, 4 Apr 2023 19:22:53 +0000
Message-ID: <DM4PR11MB59716C35EA12BEC64C1EDDE987939@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
 <MW4PR11MB7054D6DBF09E04B3E89268DEEF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwONC/frYg8QqEJ@ideak-desk.fi.intel.com>
 <MW4PR11MB7054ABBA1564C3558AB67064EF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwlxrm4MCZU7cQD@ideak-desk.fi.intel.com>
 <DM4PR11MB59717A07465A88779935469487939@DM4PR11MB5971.namprd11.prod.outlook.com>
 <ZCxhtF/ttLTpXyIG@ideak-desk.fi.intel.com>
In-Reply-To: <ZCxhtF/ttLTpXyIG@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH0PR11MB4872:EE_
x-ms-office365-filtering-correlation-id: 564489b4-0134-4af7-bbbe-08db3541fd19
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OrD/NZfxNn1eYFDqSNdodN+hA2bc0wzD0NB8xb1SnQ7fkFcdcG9BKxbSDD2O0ZHO6ixgDPyL32rsH6S8Q2yLTx5YKlqGc4BXx198bulxpuy841z2in+esUp/JqCuKeCA0EG+DOTewW8xfHvnSlOLqIWsa9xCFBQVYLb9KroJdnaOXfmgIiHyxyaypGRkPUoAjyCZ7N+O2r5LYJfDldTGKK58G3NNC/NgzHOzvblIfLNDyaA//NI5FYQkXHd9lEd5RRLVs4YhBXDwHY2aV69d0qED96cNYb0aFFBOb4av7f0np9j9Wko2IX8UN5vqvPk6PQiBDqoLF31KRreplgJrbgQERRKyNfjfnOsmS+jgpQ3CrkA1Jroh6cs8tNGB73t7z7S/FdbDwEpA4zWaa1tuKldGebCz0mjnkjxFGNWonkKjiln8usD45VA4lUR7/1AjJiRalG1v+9/Jvw0zH2wIPWZCm/8Qg2ZgGphdP/50eoyft4GTiiHBZqDy0vTA4487fXdJaDxWAesB7hGKfZvoaX3YYo7Q0HJr8kWHBIarB+iBpIN69Hhqsiu3jglkeijVQsatDihOF0PH4l8c+qAdqlK2pL3sy+uIBAznWu1jUtQ88wfhQuNPHUCSRJ8r1fEQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199021)(82960400001)(122000001)(33656002)(55016003)(38100700002)(86362001)(38070700005)(71200400001)(7696005)(15650500001)(316002)(6506007)(9686003)(26005)(53546011)(107886003)(66946007)(52536014)(76116006)(2906002)(66446008)(66556008)(4326008)(8676002)(66476007)(41300700001)(64756008)(5660300002)(478600001)(6636002)(54906003)(6862004)(8936002)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sPOY0hqaWORq83eKRLjCA4ewqFYB7L4lnuvr6OsF8etMybXH2R+Hu+DyibsH?=
 =?us-ascii?Q?pUXeaFyvgtzbm9qDkbiwdb6p8E1k4QfzOld6gC4cAyZTxRgmWa3sMk3c/q0Z?=
 =?us-ascii?Q?u/lAKv66R7sUlehe8E1br+ta9zy2O2dvPmcHR8Umh8zeKtlchtbvzk2KmHl0?=
 =?us-ascii?Q?Fv+YpFMfJ+029qGi83hOuZcb0dzFVWh9SOkTsYCFbKEXjzWjaTUKhjRfJDs2?=
 =?us-ascii?Q?hV8XLn6lPs/KJaOVPkD7TJsCxssMVBNPMZU4Ly17HlcIwJ+WvE54P4viIBLV?=
 =?us-ascii?Q?K2SOFoBbda86NjaR6YEhIA6WJpNLtKjTxuS/tMRWt4JPVbCr8Cy7tgi9PvXb?=
 =?us-ascii?Q?iODem7seAgjlyKTZ79r1WO+odh6TKEsbxzbKJnfloFZK6rtYnyjpq3/zksuF?=
 =?us-ascii?Q?QrbTD1RAMqM9t1fohxT+CDPh9TH+dG8uIr2YrZsPU9zQmQypV7I1poEDLXVx?=
 =?us-ascii?Q?QVcQdBOjYp/JG2qP4qcDd4cSqwLbvVBBGo5gfWjqADPFE7WQJdG3MK3OTccv?=
 =?us-ascii?Q?wR0IaJTfiu2Ilzh4gxMnAxsh5fPSy42mg6mNx/vq40f1sNCxgQvHeeovCmq9?=
 =?us-ascii?Q?AyQrbByIf5NXb2QGwdrKC6MYllWCKel9UtskfTKvsZhtp04Llt/fZXvevhsh?=
 =?us-ascii?Q?+JVfPzLl672B4/Zbbc6lPOdEfUl3VCBshv0zJ5kHkc4P7HJg1T5b9s8vALYZ?=
 =?us-ascii?Q?M8I8mYteYHvaTZrjq3KU+jsg/KYYqg/fBaMX96DoH39glmmLF1cVd3t5Gj39?=
 =?us-ascii?Q?sfqWmgHhMK9jdS1r0Ml0Svh60c1cx8MDJsP/dWKbsrlfWFRm97adsVs0aXjR?=
 =?us-ascii?Q?eWr/moOB1O1kUZn+COSZXlOm3+hfU9z6iRnJyibVKioMbZ4LmTKFibGUB4CP?=
 =?us-ascii?Q?2BcFC/TASsvD8KIX7b4d2hoKtdQG3z9NG0hqY+mSEQUaJEBavMpnQEL03JRh?=
 =?us-ascii?Q?kwkT8jl2sZq58pIs9xLSLvHFFNAl+Jg5S8gHyh38HFnaCe5jumm1Crc4DiOP?=
 =?us-ascii?Q?2nPMjz6QM20wLqvUYfLBiYhrQvrub523OU+YphAhGt+WTnkSfQ+kQv4kmVm7?=
 =?us-ascii?Q?REPZwT++ulNua0ziEKCKeIqbtKwjiVx/k8LDonHa/tBgjEFmAMPYT/5dUxn+?=
 =?us-ascii?Q?NOc5Lr+I3v14E1s5bd5UEnm8HIhVt0YKyNVjYxVC4//dhC3HECtMvtoqJgQh?=
 =?us-ascii?Q?sRUoWT9P/VlHs2lU5GCXHjrCIzSSJlZ+dfaFT27s0dYqYh3uBdx9OPawgY3S?=
 =?us-ascii?Q?PWkOd9sI8vLkXd+KRq8rRnV5/5YdVv4LK1poUcqSyFGbB3BGW70sRcr5hdTE?=
 =?us-ascii?Q?jMiQzF1Bp6kkuyOH10GrvWF1RFGJ02SHm9hYA5HowBulNtzsVVF560S3N7r/?=
 =?us-ascii?Q?ksjKCtsWkkbae26/BQHIqrbr7LfEtITk7TG6GUYPixXe9Ab2rD4jS6XtLE+j?=
 =?us-ascii?Q?FsUhFRfTXSUVgGtd+RwarniFnfX2ocZL1aUrH/2tc/fHiA1LJz2PQIpc2Ese?=
 =?us-ascii?Q?/FMyQpkdK6XyTsNjXA2MACQ3AC1G6Zb85KnfhqhRo/aAqSSxTEPgUvYXWvWi?=
 =?us-ascii?Q?XhauiMyvBK6AymAuO0+FtMlzR4RygMK5+zK3GvKszNUHsYXOQXn5CfUs4HrT?=
 =?us-ascii?Q?ag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 564489b4-0134-4af7-bbbe-08db3541fd19
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 19:22:53.8384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dAXB0Utg+RaXIFFbRzYYn1/0pVybNg3AXvHs/Tc1Sgd+vYtfogvr9XcPicZfcuRVcp89MySQPm8N5FREFBDpAlwXjn1pso9jovpsk8nzbUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4872
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, April 4, 2023 11:03 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org=
;
> Shankar, Uma <uma.shankar@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>
> Subject: Re: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bu=
s
> and pll programming
>=20
> On Tue, Apr 04, 2023 at 07:50:00PM +0300, Sripada, Radhakrishna wrote:
> >
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Tuesday, April 4, 2023 6:28 AM
> > > To: Kahola, Mika <mika.kahola@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> > > <radhakrishna.sripada@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>;
> > > Sousa, Gustavo <gustavo.sousa@intel.com>
> > > Subject: Re: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY messag=
e
> bus
> > > and pll programming
> > >
> > > On Tue, Apr 04, 2023 at 04:01:55PM +0300, Kahola, Mika wrote:
> > > > [...]
> > > > > >
> > > > > > > > +void intel_c10mpllb_readout_hw_state(struct intel_encoder
> *encoder,
> > > > > > > > +                                struct intel_c10mpllb_stat=
e pll_state) {
> > > > > > > > +   struct drm_i915_private *i915 =3D to_i915(encoder->base=
.dev);
> > > > > > > > +   struct intel_digital_port *dig_port =3D enc_to_dig_port=
(encoder);
> > > > > > > > +   bool lane_reversal =3D dig_port->saved_port_bits &
> DDI_BUF_PORT_REVERSAL;
> > > > > > > > +   u8 lane =3D lane_reversal ? INTEL_CX0_LANE1 :
> > > > > > > > +                             INTEL_CX0_LANE0;
> > > > > > > > +   enum phy phy =3D intel_port_to_phy(i915, encoder->port)=
;
> > > > > > > > +   int i;
> > > > > > > > +   u8 cmn, tx0;
> > > > > > > > +
> > > > > > > > +   /*
> > > > > > > > +    * According to C10 VDR Register programming Sequence w=
e
> need
> > > > > > > > +    * to do this to read PHY internal registers from MsgBu=
s.
> > > > > > > > +    */
> > > > > > > > +   intel_cx0_rmw(i915, encoder->port, lane,
> PHY_C10_VDR_CONTROL(1), 0,
> > > > > > > > +                 C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED);
> > > > > > > > +
> > > > > > > > +   for (i =3D 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > > > > > > +           pll_state->pll[i] =3D intel_cx0_read(i915, enco=
der->port, lane,
> PHY_C10_VDR_PLL(i));
> > > > > > > > +
> > > > > > > > +   cmn =3D intel_cx0_read(i915, encoder->port, lane,
> PHY_C10_VDR_CMN(0));
> > > > > > > > +   tx0 =3D intel_cx0_read(i915, encoder->port, lane,
> PHY_C10_VDR_TX(0));
> > > > > > >
> > > > > > > The driver programs these registers, so why aren't they also =
stored
> > > > > > > in the intell_c20pll_state struct?
> > > > > >
> > > > > > Maybe I'm not really following here but intel_c20pll_state has =
its own
> > > > > > tx, cmn and mplla/mpllb stored.
> > > > >
> > > > > Yes, just typoed that, I meant struct intel_c10mpllb_state which
> > > > > doesn't include tx and cmn.
> > > >
> > > > Yes, for C10 tx and cmn is missing. Maybe we could add those here a=
s
> > > > well. It seems that currently these are not necessary required but =
for
> > > > the future use, these could be defined.
> > >
> > > These are needed already now to make the state computation / HW reado=
ut
> /
> > > state checking work for these two params the same way they do for the
> > > rest of PLL state.
> >
> > I believe C10 tx and cmn values are not changing across frequencies. Cm=
n only
> > Changes for DP and HDMI so does it make sense to include in the pll str=
ucture?
>=20
> They should be part of the atomic state. To save the bytes in the
> precomputed tables they could be added to intel_cx0pll_state, something
> like:
>=20
> struct intel_cx0pll_state {
>         union {
>                 struct {
>                         struct intel_c10mpllb_state pllb;
>                         u8 cmn;
>                         u8 tx;
>                 } c10;
>                 struct intel_c20pll_state c20pll_state;
>         };
> };
>=20
I am bit concerned about the mismatch in the names for c10 and c20 states,
adding further complexity in the structure may look more ugly. Let us affor=
d the
extra space in the tables if they need to be part of the atomic state and m=
aintain
homogeneity across c10 and c20 structures.

Thoughts?

-RK
> --Imre
