Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC9C719E23
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 15:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B77010E011;
	Thu,  1 Jun 2023 13:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A000C10E011
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 13:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685626174; x=1717162174;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=xAmz3Gzyi3vB+0CSCNTlzE0Vs6LY+BlLfDhuEt4wdxQ=;
 b=lgJyN6tAYeYLdK2WoJlmWEaMPy0TUaXoCkq4D5pvSXG2jP0HNx0LtJP8
 kVmey0zAVXEryE/i98fA5AMkh05J0SI5qm7z7rwIDLglFo1VgkGoaiZZx
 1BivbJqQW7Y82VdRCtbosBV9TBLEumaOCzwXKYKU2clNOTB2E29AzjRCT
 D//n9VSWduF5qWeL2tdy7hjDcIQrl+o3vfFFDXnKgpCZqPc2cnzT6ceTD
 SZIttQ7iIueK+yiKL8fxsbwsAdJymTt4jhjMGiTYHYKNiEEDdAdBJIvAy
 DnQU2UBRLITDO9R4lG22SQb73+kV1pOrA5hwX+Bj6w9M5ehfceC27+mXQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="421344561"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="421344561"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 06:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="710496943"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="710496943"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jun 2023 06:12:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 06:12:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 06:12:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 06:12:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hc00zBl0pQDXpNHmI7EtbHNO/gOK0IhwqRDZgPI86/evvFAEsEJEPfWQmW903Z5U6TECJaNrCajZskeL7qHPnhJ5+4tGHQEY6vyCIfj4H/0ffwE0fupQAhs3Z3hPd4Jo+CQoQm/9Nghu/V1wdY2uZfyqCVWEhw3BriIe1dU5vkekTTIYNQboeTpx4S7XCYxDSwQNmT47f0C2Dr3/5cOiaZLf8n46WLX3i0FAy/U0xzaZr9jyhcc1lODkk+dB1d/GVkg+AtaoVMwCvvflfsMek6KigfjYzUcZ6Dpw/0uvd8S+o5WgrqvU4N0owLoW+6ARxLuPG2EJSq+fCDfvVPb1YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAmz3Gzyi3vB+0CSCNTlzE0Vs6LY+BlLfDhuEt4wdxQ=;
 b=Xt//7n1hRIPtW+AHIumnAIu8SV/ipqMOHb8+h+5Eta4TR9Bj7/EcdwvsGVvAzyKQ/wpurcgRdmBMVIqNG+PI9fcXBDkCRysvwVIJkf4KDRl98FKNOiWJ4M69iQpW7ggVbhkBi7ulG7WpgWk8RQigbKqKbg6/Lg3wZpFmNAkJvD/amqlHOqmH76wqJ3PHImJ2vDGM1jwVoKt3SdyU6Wd/IA640F3ic/TK8ocESp/p+r/eS50M7IYWDPGyrdffZevnLPgBDfPYm832eFSdZKYRYG87Se/7b/vNf8wPcqodLHIQGn3uyp8qQbN6GOsrWq8742x6BsUiFMJrl+5eb/VLlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Thu, 1 Jun
 2023 13:12:18 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6433.022; Thu, 1 Jun 2023
 13:12:18 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: WW22.4 Linux-next Regression update
Thread-Index: AdmUiQozDlcoYrXSTgKVaBJvxD3HMA==
Date: Thu, 1 Jun 2023 13:12:18 +0000
Message-ID: <SJ1PR11MB61293C143E897C2245BF85AEB9499@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: 9cc44390-be8a-4f35-846f-08db62a1d3eb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pTTfU9n4C5oEgIm5obdoxidCadPZ91AKyqVIw8zmQ1jFiXJTS0bRtRteMIp/3ApxopdV+Jc9ZnfWIsD+OkINVRCPpH9l6OFuTxJ8taMn1SXLErx9ssotUk7xPD08toANM7Ya2axm8ktKomeOZJYkstQvfSyBVNrfBcqSXwR/3u8gMYLT8PCquaGrYvTlqbo7Sul85elbbBslf8kN7CIzti4fL7MNxsAnvN2LDLJIj52hj+nSqZg4bkIwizQRXQ3Zbv/VO9BOnHuZI4Wj+W2M8lcQM/vdHddyleCQ5r27H0UpcHyyE1QXrWwY4NiCeeKGg4LuUBtrtqG2Bozok+DypbmARAvYIQZJDihgZi1/uOjdVbCBkDKqg0ZuerIKIq67hAcdEYPHBXLG3FI8TpksyFiz5MnVrzE6PFE3jbRIteXNFULjbhLahvdg9nit5s5Ml/JdnHwra72ijc+IItdFczEnUxvCbWlq0vrDeLYZBkLTQK/fWthjH1ODjn2eYaUwdUaDzUnRTtBapkMCgFWN36JVX0rPxX13GvnmzJvkqZdXTe6ndRzcXjbnUF+ss4Lk3YUaDZoRExXl5/2a6VUcB6aK8ak3f33Q559psLN5sg0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(39860400002)(376002)(396003)(451199021)(316002)(122000001)(4744005)(2906002)(54906003)(76116006)(966005)(6506007)(38100700002)(26005)(9686003)(64756008)(6916009)(66556008)(66476007)(66446008)(4326008)(82960400001)(66946007)(38070700005)(86362001)(478600001)(71200400001)(5660300002)(33656002)(186003)(7696005)(41300700001)(52536014)(8676002)(55016003)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?byu2XPMZnDa95iayXKVnk8VwfLQRDc4RXjhERD+zEg5it58KSkYX4/vpLek5?=
 =?us-ascii?Q?H8xJslb4FL/8l8Ft09gP4iDPkMTZK6p8FetYgIAs6bPBMa1SbFuY3R2xdvpt?=
 =?us-ascii?Q?dfyDAfK25RXjrwpq8o6s6pYe+Cmnb7UHESqxlgyEQqnLap2lklOgfzbhaVPF?=
 =?us-ascii?Q?mMtAbynPyHWyfPUpzH+ig7FNcQ1ey3XczNSv/MVQuyeKXwi3FHdlvvKRLiiw?=
 =?us-ascii?Q?g2g+sfdmc5xGVP1D8toptT5ukJVwnnydgAIV1P+lmgiTpniQ1WLokq9fUaIT?=
 =?us-ascii?Q?GGnQHH7tNR/3AhiEP2PbpXmVnuSt7dcsu31EO2HDnwV7EEnFi9XK8u6ylWez?=
 =?us-ascii?Q?DlW86jbTwGw291MwzqJv4sMypebG3FI9TS2uUZ0Hzy8VgrPUA1accO18T5p4?=
 =?us-ascii?Q?Txn8lU/hqKVjwqCwDiNLan2V6Vo0a6YiZ3AVtN/ndIysX9YxMiEJ58MICfbE?=
 =?us-ascii?Q?LTUDN4EL9cbaNTK3NMKKLWCuZXT08cxjcuZ10xrDrpmASsWbz2TBWxZpBpep?=
 =?us-ascii?Q?d4sqbFftuQr/ES0DMVsjfcBWwBjGklCQrcULgJDDmvZhj2hRZYdXI8RoYuIv?=
 =?us-ascii?Q?RVWI+FJSRaJlwh2WJ5S21t1fchEG+STKAQVCUdLG9lfScSQSKlKXiRIAhM+I?=
 =?us-ascii?Q?vN3dKhO8GfJ8r78mAXcMvTULJ7qE4Xwp5ImlmuAmC71hCIjp925kadp0j4F8?=
 =?us-ascii?Q?IAA9sRmI0XU0NECrE0HMNzFjqbjijsYR7lKroFEw2rzUHo/fsvDNRtSOfAQX?=
 =?us-ascii?Q?oOuz+DfaIi9Dyvy/9AeIW7MZrsdb06ATzwhGl4qG0dkB3o6rDMmR7X9PFNZM?=
 =?us-ascii?Q?qt24jEchx1jTfc0pp04yGk6ZpShbzNQau3CNpUvt5jaCNpo9OXFMnKACU6Cx?=
 =?us-ascii?Q?r+kCPLYEX9cmD6EpP/f9G1mInrj1oSxTNKboVmztTpndD4fnijNr48NeXqJn?=
 =?us-ascii?Q?NV0eKo6k0nBz2lrXxMmUlVU+lRKeRHOCQxW7kbud0perCA7s9e4Ig3l7Rq6z?=
 =?us-ascii?Q?ZmLLDpfs68fQ30rS8qdyad/AAHxmbjv3f8JfjXoBzBuraJt4uyjM3MtCzxfJ?=
 =?us-ascii?Q?QGU5CsjuU48hmgmFxBk4SRSSfzUA+BtgNFtqjd7i4UXl2Rn7QuNi9TkI6ijA?=
 =?us-ascii?Q?D4N0BW+nhbICcShLEc84jrBfr4py/aBNErYFYWZFLnak8ULLG/XjtMg2Iz+N?=
 =?us-ascii?Q?2VOuKrpMbDNQdgidqYAnszrhOhBb/MkAnCjzq93V+dUF2M6EjRFBURMKXFTn?=
 =?us-ascii?Q?Wyk6kV376XkGgV6EeoEsM4xSX+26fAez5+3krcit74zEcdjA2JfkqNcQ0Ilw?=
 =?us-ascii?Q?YFx5EoQOzUTRDKSAEMym9F/NdZT/exZhBVZSbNsKqYW7i5dBXDbKnweTI2Fp?=
 =?us-ascii?Q?ls0aKl/xQla7N87Um9kLYKBP92wQLBhn/k/1F3dxY/4AskbmAz97SY7ElXhX?=
 =?us-ascii?Q?tJqWI8epkHmu1d57U9mCoXLGfvuDC48KAuMVnUvLxpoSaXWae0fxZjcsqvVQ?=
 =?us-ascii?Q?3AOXkCIUxyALSWfjUBtMMAZ6+1LjIYweZy6rKJOtpXfHTgU2a+K53w5bmrcG?=
 =?us-ascii?Q?78aFkBfaYryya+mSVn2Hg45T0Z0/oMOxtgxrpja3n3d5SJBx8mKLcOmt7Msi?=
 =?us-ascii?Q?3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cc44390-be8a-4f35-846f-08db62a1d3eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2023 13:12:18.7247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OXR452UQ1JGDyhYe4CwFAPe+gnjIXFD0ynSyH2UieFu1Fv71NNYA8A34RR5mMxD9+h7yk1+BfUomugNerQiQGqkAAtr1NM/XWdNzOyshx+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] WW22.4 Linux-next Regression update
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Krishna,
 Prudhvi" <prudhvi.krishna@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Regression found:

#1
Test case: igt@runner@aborted
boards impacted: multiple
Logs: https://intel-gfx-ci.01.org/tree/linux-next/next-20230601/bat-mtlp-6/=
boot0.txt
Already existing issue: -NA-
Next Steps: Bisecting in progress

Linux-kernel tag: https://git.kernel.org/pub/scm/linux/kernel/git/next/linu=
x-next.git/commit/?h=3Dnext-20230601
CI Run Status : https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.ht=
ml?

Note: Please reply to this thread for any kind of information on this regre=
ssion.



