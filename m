Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E20542132
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 06:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCC310E20B;
	Wed,  8 Jun 2022 04:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADAF710E20B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 04:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654663744; x=1686199744;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ELlwRnXSgzkeL0Ru006uyPoNKhDfnxGbpO2rrRCh1ro=;
 b=iCnqjhe+1lxv/aekJnJwWXqIoY/2zSA9yZWrj10VCEL1LiPGdN7ELcfj
 NROCxXYZ783jBtotIxyQ6UP09K2Cw6sDcovYvMc3hCs7bJEKHHlnjjgZ4
 fcZ28N+Ln9OtS+Ql3L6vlLMTC5K8SujWix86AuTABSfNFJzHVg8G1aDRq
 XAKk5ZdUKXK8aN/DIIX9u1wulGHXiv1Vro4Mr8HpGsshye9nIZ/FIRB1Y
 y/CpmtTZ5eSPViWd6eGfWPTJt9pIMnG2eT/jdDbp0nDSwJrh1O6/xGI1s
 9vFXshuQzhGMJQb2CpddjmDqdhutQRLh+KDAG0a8L7I7Ky1u4SL3hH/Zj g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="275560693"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="275560693"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 21:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="826732650"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2022 21:49:04 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 7 Jun 2022 21:49:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 7 Jun 2022 21:49:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 7 Jun 2022 21:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDd3kNKJNp9+sQJ59XL0Hwj9ijnjronJszMjkL5CAk4aeI2qO7QA6uaezp2Ewt7TIKhq/iBpf0iyTs+W84zjIUL5PObdMGU1rS0CFlONbtqjn0+fkjXJseObrDPujW+C37k3EkG+E5qHOc0FiTDWOJYfl+yymWDdYxOmxiCQW+QWgclR3Bn6v5+3psodYnfg2jp3e0sEtPJXPDyUckXT7xIWIP8OXixtWGiqVq1iskGjh51mQrfMu/EdrOMMQEcyWiNO8CA/Vusk3myiHneNvk77FXXIVrEmFLN3VDnyDVQN+sVMib5SrIrkd8HKmE0SQySj3Z0pM2ONw3n4T7uPWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ELlwRnXSgzkeL0Ru006uyPoNKhDfnxGbpO2rrRCh1ro=;
 b=UrtyDOjC4/cdmiLr8JTVDpFITCKpjrhYtFPkpnL439q94MNuAzmDjWsQMEzkFR1wto1ZuI9Mkg+btlET0ntWoRBmkLIqRozQsB1s9zQUBd9rGgjAA9n6ngH1GsRWkj0pjs9VyojvtcRgg8TiNOl0j6XUnAsjqVZ1qJQR1bhBNvR+LKxYp4KiR5xVt5B1A7cytzBY2ExWSaXmNfxWSsgpkYzTBKUt6deb5SjiX6/xcaKrT1zhURjiFBfU6dtd1VT1ok9Ox1waqlerUb2RplOd6SmHnCuN47IGt5ZDceo0NCfJrpEZtrjOpFawweKM+9w7C4MQlCeu01o7FqspuiCN3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) by
 DM6PR11MB3675.namprd11.prod.outlook.com (2603:10b6:5:13e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.12; Wed, 8 Jun 2022 04:49:02 +0000
Received: from DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::e1fe:e48e:3b95:21c]) by DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::e1fe:e48e:3b95:21c%3]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 04:49:02 +0000
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3IgZHJtL2k5MTU6IE1vcmUg?=
 =?utf-8?Q?PVC+DG2_workarounds?=
Thread-Index: AQHYevJH9eje9c+jcUe3nUF61YP68q1E8Bxw
Date: Wed, 8 Jun 2022 04:49:01 +0000
Message-ID: <DM4PR11MB6213694C1B51FB1779B26FA2ECA49@DM4PR11MB6213.namprd11.prod.outlook.com>
References: <20220608005108.3717895-1-matthew.d.roper@intel.com>
 <165465589217.15586.17132703405857378240@emeril.freedesktop.org>
 <YqAo00KukVM07MOn@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YqAo00KukVM07MOn@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f3b6e5e-4564-4703-68eb-08da490a355a
x-ms-traffictypediagnostic: DM6PR11MB3675:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB3675AD7257E0D25F7F0AC720ECA49@DM6PR11MB3675.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jXH10RIPFrY131dAwdwnjj1bALJW/6yxc/p7lo5Cy2X3lojdh/SNcOP22qzCcI2RAszORUnaquLet6+mz/d4PAxuCz2jiw5K+hDoTDB7uXaT0suCumMMIsUgdGYhuC/1lTOtXQlas6y5kcVlGj8PlgZSiSg7UHNwa4ziJmYewAVSwjdcODsrNlrh8AGukdxhVPNpXlXe7BJXw8LLm7rXP+8yAlvK/5kTaMEQP/K6H4D/gUwsF9pVxIre2fdB4iwPSpTw5ErFvKYxEV266CeZJUC+XEkcAaDoeKYLA7OVg+XQ7SNlZa6RG5yUFGoTEhL5VRP4GExlhBY1SpDG4AmUe7yxocdFWtn9u7WAGem0o+62nZXPKZQvqZgwA3LSDR16JqXt5ED5CNjlnzHiYPrfJrZGBtc0xaecstlmrdcY8DuBDD6adYa3IyF19glql6TlJ19CnehEu5DXSa0R+SzuhIRUbioyVZdvkrsDDyY7t0p1k/VZJU45ha6zNtR7+lXMd+KYFBVAEK81O+TP8CflaRhcqhcxyrdB/+eYw0zYwCd+65JgcCxtBFSCBJ7nAexDuitFzVjz3Ibv7MNlRfRlVcgfcnv8uDq9ZfNEeh9f3IYmdqhTql//pOE/bzhwpp9ascV2GMzT8Nc9udEO/X1a6x4Wp9I0TEmLEMxvnCmz+j7wOMGF/yMNG0Qv/rnKVTN+tVM7fiQJRvQ5PkXR42NAaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6213.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(33656002)(966005)(8936002)(52536014)(53546011)(5660300002)(2906002)(7696005)(6506007)(508600001)(82960400001)(76116006)(110136005)(66946007)(71200400001)(55016003)(26005)(83380400001)(86362001)(316002)(66556008)(66446008)(9686003)(38070700005)(66476007)(122000001)(64756008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bG01UlBlUUltRS9qVnhNVnRhUyt3UjFhTXlHR1VzYTl0bm9nbjIxYlY4ZzF3?=
 =?utf-8?B?eU12RFYrUS9OMTBKM0l6cnlac2lRR0U0UmZCRUtFcDVVYlQxai9sZG5rMStV?=
 =?utf-8?B?Z1ZaU2tnSzg5S2NvWkl0RjNGdlV4S1AxamhFaVJOdkhHRTNnMGtqb2RYQlBa?=
 =?utf-8?B?REtsdURiR3h2L1QvMGdhU2l6NklmZHR3L1k5NWJOZjJLbmViVVBuMjFjQUNy?=
 =?utf-8?B?QllVY21yYVJuMlFiMkY2V0tzUGxwOFRnZkVHWDljMHBiL0w5OW1UMS8yNkd6?=
 =?utf-8?B?SXFnNjlTbmQ4ZWNtb0tLWVB2K29CeFFWNnFETWEwbDI1SnJ3ZzUxcm9oNjI1?=
 =?utf-8?B?M2k3MXd2OEsrQmhDcE5wWjU1MnJDdy80Y1YyMDJ5Z2YvOE1TRTdIVFVSYnJZ?=
 =?utf-8?B?eDJOZHBPRmV5eHBxNFZua0FWcGVZdTZvSjBYQzdwTDJWZS92RG0xTzlXNXlq?=
 =?utf-8?B?UDRSc1pPZXhTN09KblNlOTZNU3J2VmowYllkUjBQM09TVkNzVnpPNHBpYWlB?=
 =?utf-8?B?TmNnZDFkeHo4NkFPMkxvZGpRUFB4dG1LUXVyc0NyYVNXMlNYdkh4NytsMkxX?=
 =?utf-8?B?STAza2VISnI4Mm53VFNBZnA1SDlmVlJaNWlsUktzMHhqQnRBMHJlL1NoZnJ3?=
 =?utf-8?B?QUt6TEhXQzRIaEJ0NHBLTXNyYWlpTGlKbStoalRRbU5PY0YvZzkxQ0toc0hz?=
 =?utf-8?B?VkZOMVl3b1BIU0VDcXFCbk5uODV4ZWIrb2RoQ0NaaURUUFhkYzIvZTl2bC9z?=
 =?utf-8?B?UjByaTkyNUxxU2xLVHVhVkg5c1FrUCtEWCtYSXRHS0RQODVtL2kzTzlvdzk5?=
 =?utf-8?B?VGlsL2hyUnNoOXJ4NmNXLzIrVWpZYmIzdzhkTERxVjhRbHRoalBmUWNQRHli?=
 =?utf-8?B?UUZiQURtaHlVVnMrRGR4UzZNT1ZXNURlbENENzBZa3JETldPSU9YTWhKZ3N6?=
 =?utf-8?B?Q0tLNEd3Y0RhaDcrRmNaaUZmbUpHSDQ3WHUzekdTOHJkLzFKVHFsbEpCVkk4?=
 =?utf-8?B?aXRXYUNWVkkxRXZ0cHcyUVZacm5IcldJZU5GbHZzZVgyajJiK0hCMGN2UjI3?=
 =?utf-8?B?MGlDT1EwdFV6SVFwWWJoNE9JR0JTVkgzek9KU3NTb29ubzJKRzhDbzFUWSt1?=
 =?utf-8?B?aHg4Nml1Z3dOSTUrdUppbFpMZFdBOEtiMitUb0NTU2ozNkpZbGVOaVdnR2ZQ?=
 =?utf-8?B?UXU0ekJQcis4VlNHRUc1QnR0R0dMU3VzK2l2aFNRdERnT2xyVVUwVDZrR0lw?=
 =?utf-8?B?OHRBU29kUXc3aVBRNUJ1NG1ka0JnU3IwOHJOR3l1NXp6TUlzZ2NHN2dBNFN0?=
 =?utf-8?B?K3R2QUtnSGxlN3U2WDM1a2tsVFUvdkplbUJsdlYwbUN1ZURNd2EzUVJERkQz?=
 =?utf-8?B?SlB1dVE4aTc4djNJSU1wU3p5QmpCVXZhM0wyM2IyRjVNbk02ZjVxbnRSS054?=
 =?utf-8?B?MFdhRnZUN1dlSElwS256ZitqWFowREg0azlaZTYrWXVGbmtlUmp5UVBRMWlO?=
 =?utf-8?B?SDA5dlZ0VWlHVFlxb0dQQnI1ZzhxMm44S0Zub1liSEZkWGZ0QlFvQXBoUzI1?=
 =?utf-8?B?TTExYnpXakNoWUVMSXVza2pqUkNYcWExcmtyNjh2azRDUjBuemM3N2pjMlVt?=
 =?utf-8?B?UEtkZWhEaVBLK0xYN2g1dEh0VUIzVExieGFtdlMycUJwd3lGQkFQVjVFb2E3?=
 =?utf-8?B?ZUlhRFFjWkJiWjRxUExyK0o2N0NTNWpOeG5IQ0xiK3NTbjJpSEF4Z2dsLzMz?=
 =?utf-8?B?bDQ2OFY5bkRianZRUEdWaDc3NDFVY0x2bkYvZXZyZTROLzdrSWxxKzJ1cjI4?=
 =?utf-8?B?SUJ1dTg4RTIyWmJ0ajh6ZlFHOWlCZUpjYllJVUgwMUJsS0dSVjdURjVjVC9C?=
 =?utf-8?B?NnNQelJWUmhjcmZmd3JYYjRoV215aUFNOExZeG83SGdTeVVCbjdoN2dJd2xo?=
 =?utf-8?B?UjAzdWdUbDlFbm1PR0luZnE1U0xCbmVOT1NESmd2eHRkeDVoQUlseVBrN1pz?=
 =?utf-8?B?bTJHdnhFVnlVdm1pRXoyTk5pMVluZzNsVFdqQzNLc0hRbmZ6cS9TNTJwK2Ja?=
 =?utf-8?B?MTdWR1VyUmE1dHVFTlhxRkw4bE5JMjVLRzJzSW9FRTM5eWIvSWZUSitiem5l?=
 =?utf-8?B?TGg2d2JzYnloWTI5clBlWVR1NUdJWlU2ekdlRktBQnNyWHNXK2RmNmlUclRS?=
 =?utf-8?B?M3lnS3hEMUVHaWZud1FZdHY0SndUVm5SNnpoUjF6eHpmejQzQlNielppWUtO?=
 =?utf-8?B?RUMwdTZleVVVSWhHMUtQdCtITGt5MFFFQ243Rm50MWY3UEMyYzEzRThsSVB3?=
 =?utf-8?B?ZW4rNHY4VzhFcVQ4Q0RkbEpxM2pES1FkVk02ZWZsUFpsV0xJRDJvR3JkSFZT?=
 =?utf-8?Q?JsNM4YC4rBOe187c=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6213.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f3b6e5e-4564-4703-68eb-08da490a355a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2022 04:49:01.9339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PWyFU3X+17DivnCFKm/r7GykP1STzA2ZxeJ/Zhb2fpukwUfmRvVL3VxXFRPUCIHSsm3LyZngl0LQCNlSXunoorG82Asl24X8DR8Y7K2ru2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3675
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_More_PVC+DG2_workarounds?=
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

Tm8gSWRlYSBhYm91dCB0aGF0IE1hdHQuIEkgaGF2ZSBuZXZlciBkaWQgdGhhdC4NCg0KTGFrc2ht
aS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFJvcGVyLCBNYXR0aGV3IEQg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgSnVuZSA3LCAyMDIy
IDk6NDMgUE0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogVnVkdW0s
IExha3NobWluYXJheWFuYSA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVsLmNvbT4NClN1Ympl
Y3Q6IFJlOiDinJcgRmkuQ0kuU1BBUlNFOiB3YXJuaW5nIGZvciBkcm0vaTkxNTogTW9yZSBQVkMr
REcyIHdvcmthcm91bmRzDQoNCk9uIFdlZCwgSnVuIDA4LCAyMDIyIGF0IDAyOjM4OjEyQU0gKzAw
MDAsIFBhdGNod29yayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmll
czogZHJtL2k5MTU6IE1vcmUgUFZDK0RHMiB3b3JrYXJvdW5kcw0KPiBVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTA0ODY2Lw0KPiBTdGF0ZSA6IHdhcm5p
bmcNCj4gDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IEVycm9yOiBkaW0gc3BhcnNlIGZhaWxlZA0K
PiBTcGFyc2UgdmVyc2lvbjogdjAuNi4yDQo+IEZhc3QgbW9kZSB1c2VkLCBlYWNoIGNvbW1pdCB3
b24ndCBiZSBjaGVja2VkIHNlcGFyYXRlbHkuDQo+IA0KDQpATGFrc2htaSwgaXMgdGhlcmUgYW55
IHdheSB0byBnZXQgbW9yZSBkZXRhaWxzIG91dCBvZiB0aGVzZSBTcGFyc2UgcmVzdWx0cyB0aGF0
IHBvcCB1cCBzb21ldGltZXM/ICBXaGVuIEkgcnVuICJkaW0gc3BhcnNlIiBsb2NhbGx5IChib3Ro
IHdpdGggYW5kIHdpdGhvdXQgLS1mYXN0KSBJIGdldCBzdWNjZXNzOg0KDQogICAgICAgIFNwYXJz
ZSB2ZXJzaW9uOiAwLjYuNA0KICAgICAgICBDb21taXQ6IGRybS9pOTE1OiBNb3JlIFBWQytERzIg
d29ya2Fyb3VuZHMNCiAgICAgICAgT2theSENCg0KYW5kIGlmIEkgZG8gaXQgbWFudWFsbHkgd2l0
aCAibWFrZSBDPTEiIEkganVzdCBzZWUgdGhlIGhhbmRmdWwgb2YgcHJlLWV4aXN0aW5nIC8gZXhw
ZWN0ZWQgd2FybmluZ3MsIG5vdGhpbmcgbmV3IGZyb20gdGhpcyBwYXRjaC4gIEFueSBpZGVhcyB3
aGF0IGNvdWxkIGJlIGdvaW5nIG9uIGhlcmU/ICBNYXliZSBzb21lIHF1aXJrIG9mIHRoZSBvbGRl
ciB2MC42LjIgdmVyc2lvbiBDSSBpcyBydW5uaW5nPw0KDQoNCk1hdHQNCg0KPiANCg0KLS0NCk1h
dHQgUm9wZXINCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyDQpWVFQtT1NHQyBQbGF0Zm9ybSBF
bmFibGVtZW50DQpJbnRlbCBDb3Jwb3JhdGlvbg0K
