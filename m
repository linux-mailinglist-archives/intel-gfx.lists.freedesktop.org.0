Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5916F142C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D37310ECA2;
	Fri, 28 Apr 2023 09:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA7AD10EC9F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:27:27 +0000 (UTC)
Date: Fri, 28 Apr 2023 09:27:08 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="utBBKjpL"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1682674038; x=1682933238;
 bh=U0MZUFxkg3+UOPqNFrbWaEyCbKpVVLhO0H5Klvvg8Vk=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=utBBKjpLeGdvhlXQ8nMT/EJhyLiU9rt+EmEJLV31B3K3dkci6kR9dNao+aiIWVXd8
 iSxpBsIQmAKGRWG7ZmiUPv7tTCLGdEQyoXpf7b9B7oAvNRHN67/EuKdNI4ymcIIXFd
 vf0sIvHqN1DoqI8XQQaQYVenikH0bW9k5Evq/SI20s14RW5XmtO7vS1ztPvx08xo+w
 JvN6B//1otHfUoOD1eEbkaUdiL/6ugp2IUjKmC6FQVvn3aQyMuqMAzekphD6yCPkYO
 3DcJcQU999JEkjOK2HCbeNn+8ntWyZCihJ0M+75GfcTyLkp7lsTDFXKxpTlfuLH/3g
 qsQWe8eX2KAhw==
To: Ville Syrjala <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <YyWZa1bj6suPnBWfIRn-j3ixVrbKoPRc0EVl_QWure5FYHvzbaT6PLs8xpP3Ob7Z6-z--fJhECKxuf7KhUkijQXeLRY7Js_NSDxoeu60G00=@emersion.fr>
In-Reply-To: <20230411222931.15127-2-ville.syrjala@linux.intel.com>
References: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
 <20230411222931.15127-2-ville.syrjala@linux.intel.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/uapi: Document CTM matrix better
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acked-by: Simon Ser <contact@emersion.fr>
