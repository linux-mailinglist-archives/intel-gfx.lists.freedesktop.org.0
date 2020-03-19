Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 097E818C13A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 21:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44596EA60;
	Thu, 19 Mar 2020 20:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828ED6EA60
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 20:22:03 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id a28so2729077lfr.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 13:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9Ug1S6TH2hn9tURG+kugi+ILP7rOj891qvZay8YQb/4=;
 b=Ub/1TC2OgDU3B700iCqGzbFfvFGHRVn2rPdOgaJxYfHoxNGwm9eIN8kbYdUMDjEX60
 CvjuznjfHFLx1m3LKpsIDfPQPImfplx/SI+Dhynh0Uoz7BEzhrTbgD/TXSk2A78npRXT
 O4wjDoyI+XExtWRhB9M4rHAqsNQHPXFWjKRq2o0KV1hFc+Nh9TVvD4C1uqUX9Yh9pySq
 EC3btwgUbbQrhbgEcrj1XZtLYO9bpwcZsC3NhgSBwX9qIy0jMSyppoW4SslQLJb2M0Jm
 p1UPLRlMfiLI3OSVcSbwIUb7fvFx5kFN1D6M5CvYDYR6A73XRM528m7Av4Cki0cY5MF+
 3toQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9Ug1S6TH2hn9tURG+kugi+ILP7rOj891qvZay8YQb/4=;
 b=BFJMewnZHZ9QcGMfrkSU8JTxoeJo2M+mAOq8ymu+A5oIyfnKJdqWWyUasedvQqIIMl
 QGssERJ+mySan5EhSCNu5mxcc6w0mX6JN495iWwVaWB9MRRXhzi1YqWy061Ibh4a0sTa
 ITYW88JkGhjMKNt7vV/YWK88dsLVkkGvgnIBB8sQSl+hxhcu7XXzvGglUhVWnH6S0FGp
 y/3d82IWqkOSqtslX1TTH7k9ATiMejxUcCKiHrffzy4ca2tpmu1igQwwq1HI/8wpUIcS
 QF9EGWmv9ZuGVy9WRB+MmNKZ8TgXarBagQRhyXVt1iuZyq74YeuSkcZ2SdW2ijFK7GY4
 M+RA==
X-Gm-Message-State: ANhLgQ3AgV7kCbO7Weui1hcWQ+WYAOBX9CIvQ0O/Hkde3CZKvW//P2wE
 ++m3xZLcgd4ZWYOOHmfHwXEbdtgx9qg=
X-Google-Smtp-Source: ADFU+vt0B3tzWN1qQiC9fA6P/hgxzQyKvSB/BDLjkrQfi12VjRyK0lYZUD2HKWR1zGS3OWxGxKSGsA==
X-Received: by 2002:a05:6512:287:: with SMTP id
 j7mr3129969lfp.93.1584649321484; 
 Thu, 19 Mar 2020 13:22:01 -0700 (PDT)
Received: from localhost.localdomain (mobile-access-b0485e-106.dhcp.inet.fi.
 [176.72.94.106])
 by smtp.gmail.com with ESMTPSA id p27sm2414203lfo.63.2020.03.19.13.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 13:22:00 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 22:21:47 +0200
Message-Id: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 0/1] Test over 32k long stride length on icl+
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Testing part is left with TODO comment for anything older than gen5
Resend because IGT part failed.

Test-with: 20200319193644.7417-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (1):
  drm/i915: Allow gen11 to use over 32k long strides

 drivers/gpu/drm/i915/display/intel_sprite.c | 30 ++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
