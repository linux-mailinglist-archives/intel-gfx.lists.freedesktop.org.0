Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B7D8C20CD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B2210E4CE;
	Fri, 10 May 2024 09:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E343010E4CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:23:07 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1s5MT1-00000000sFo-46oQ; Fri, 10 May 2024 12:23:05 +0300
Message-ID: <51872056595d0e7c10e93fd298e2e8923c532d18.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>,  intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Date: Fri, 10 May 2024 12:23:02 +0300
In-Reply-To: <87zfsyhviw.fsf@intel.com>
References: <20240510090502.667556-1-luciano.coelho@intel.com>
 <87zfsyhviw.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH] Documentation/i915: remove kernel-doc for DMC wakelocks
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

On Fri, 2024-05-10 at 12:21 +0300, Jani Nikula wrote:
> On Fri, 10 May 2024, Luca Coelho <luciano.coelho@intel.com> wrote:
> > The function descriptions are optional and have not yet been added to
> > the DMC wakelock code, so we shouldn't try to use it.  Since this is a
> > regression, remove the kernel-doc entry for DMC wakelocks for now.
> > The proper documentation will be added in a future patch.
>=20
> I don't really think the kernel-doc documentation is necessary for
> internal interfaces. I mean adding brief comments is fine, but no need
> for this stuff to show up at docs.kernel.org.

Good, one more thing out of my TODO list. ;)


> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the quick review!

--
Cheers,
Luca.
